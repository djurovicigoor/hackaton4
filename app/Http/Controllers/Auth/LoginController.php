<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Http\Requests\Auth\LoginRequest;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Support\Facades\Auth;
use Tymon\JWTAuth\Facades\JWTAuth;

class LoginController extends Controller {
	/*
	|--------------------------------------------------------------------------
	| Login Controller
	|--------------------------------------------------------------------------
	|
	| This controller handles authenticating users for the application and
	| redirecting them to your home screen. The controller uses a trait
	| to conveniently provide its functionality to your applications.
	|
	*/
	
	use AuthenticatesUsers;
	
	/**
	 * Where to redirect users after login.
	 *
	 * @var string
	 */
	protected $redirectTo = '/home';
	
	public function __construct() {
		$this->middleware( 'jwt.auth', [
			'except' => [
				'login',
			],
		] );
	}
	
	/**
	 * Handle a login request to the application.
	 * @param \App\Http\Requests\Auth\LoginRequest $request
	 */
	public function login( LoginRequest $request ) {
		$token = JWTAuth::attempt( $request->all( [
			'email',
			'password',
		] ) );
		
		if($token) {
			Auth::attempt( $request->all( [
				'email',
				'password',
			] ) );
			$user  = Auth::user();
			$roles = $user->getRoles();
			
			/*if($user->isBanned()) {
				return response()->customResponse( 200, 'Vaš nalog je banovan!', NULL );
			}*/
			
			return response()->customResponse( 200, 'You are successfully logged.', [
				'token' => $token,
				'user'  => $user,
				'roles' => $roles,
			] );
		} else {
			return response()->customResponse( 200, 'Wrong username or password!', NULL );
		}
	}
	
	/**
	 * Log the user out of the application.
	 */
	public function logout() {
		if(JWTAuth::invalidate( JWTAuth::getToken() )) {
			return response()->customResponse( 200, 'You are successfully logout!', NULL );
		} else {
			return response()->customResponse( 200, 'Woops! Something went wrong!', NULL, 'logout_error' );
		}
	}
}
