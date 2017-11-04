<?php

namespace App\Http\Middleware;

use Tymon\JWTAuth\Exceptions\JWTException;
use Tymon\JWTAuth\Exceptions\TokenExpiredException;
use Tymon\JWTAuth\Middleware\BaseMiddleware;

class RefreshToken extends BaseMiddleware {
	/**
	 * Handle an incoming request.
	 *
	 * @param  \Illuminate\Http\Request $request
	 * @param  \Closure                 $next
	 * @return mixed
	 */
	public function handle( $request, \Closure $next ) {
		$response = $next( $request );
		try {
			$newToken = $this->auth->setRequest( $request )->parseToken()->refresh();
		} catch(TokenExpiredException $e) {
			return response()->customResponse( $e->getStatusCode(), $e->getMessage(), [$e], 'token_expired' );
		} catch(JWTException $e) {
			return response()->customResponse( $e->getStatusCode(), $e->getMessage(), [$e], 'token_invalid' );
		}
		// send the refreshed token back to the client
		$response->headers->set( 'Authorization', 'Bearer ' . $newToken );
		
		return $response;
	}
}
