<?php

namespace App\Http\Middleware;

use Tymon\JWTAuth\Exceptions\JWTException;
use Tymon\JWTAuth\Exceptions\TokenExpiredException;
use Tymon\JWTAuth\Middleware\BaseMiddleware;

class GetUserFromToken extends BaseMiddleware {
	
	/**
	 * Handle an incoming request.
	 *
	 * @param  \Illuminate\Http\Request $request
	 * @param  \Closure                 $next
	 * @return mixed
	 */
	public function handle( $request, \Closure $next ) {
		if(!$token = $this->auth->setRequest( $request )->getToken()) {
			return response()->customResponse( 400, 'Token not provided!', NULL, 'token_not_provided' );
		}
		try {
			$user = $this->auth->authenticate( $token );
		} catch(TokenExpiredException $e) {
			return response()->customResponse( $e->getStatusCode(), $e->getMessage(), [$e], 'token_expired' );
		} catch(JWTException $e) {
			return response()->customResponse( $e->getStatusCode(), $e->getMessage(), [$e], 'token_invalid' );
		}
		if(!$user) {
			return response()->customResponse( 404, 'User not found!', NULL, 'user_not_found' );
		}
		$this->events->fire( 'tymon.jwt.valid', $user );
		
		return $next( $request );
	}
}