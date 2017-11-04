<?php

namespace App\Http\Controllers\Auth;

use App\Helpers\Constants;
use App\Http\Requests\Auth\RegisterRequest;
use App\User;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Validator;
use Illuminate\Foundation\Auth\RegistersUsers;
use Tymon\JWTAuth\Facades\JWTAuth;

class RegisterController extends Controller {
	/*
	|--------------------------------------------------------------------------
	| Register Controller
	|--------------------------------------------------------------------------
	|
	| This controller handles the registration of new users as well as their
	| validation and creation. By default this controller uses a trait to
	| provide this functionality without requiring any additional code.
	|
	*/
	
	use RegistersUsers;
	
	/**
	 * Where to redirect users after registration.
	 *
	 * @var string
	 */
	protected $redirectTo = '/home';
	
	/**
	 * Create a new controller instance.
	 *
	 */
	public function __construct() {
		$this->middleware( 'jwt.auth', [
			'except' => [
				'register',
			],
		] );
	}
	
	/**
	 * Get a validator for an incoming registration request.
	 *
	 * @param  array $data
	 * @return \Illuminate\Contracts\Validation\Validator
	 */
	protected function validator( array $data ) {
		return Validator::make( $data, [
			'name'     => 'required|string|max:255',
			'email'    => 'required|string|email|max:255|unique:users',
			'password' => 'required|string|min:6|confirmed',
		] );
	}
	
	/**
	 * Create a new user instance after a valid registration.
	 *
	 * @param  array $data
	 * @return \App\User
	 */
	protected function create( array $data ) {
		return User::create( [
			'name'     => $data['name'],
			'email'    => $data['email'],
			'password' => bcrypt( $data['password'] ),
		] );
	}
	
	/**
	 * Handle a registration request for the application.
	 *
	 * @param \App\Http\Requests\Auth\RegisterRequest
	 * @return \Illuminate\Http\Response
	 */
	public function register( RegisterRequest $request ) {
		
		$user = $this->create( $request->only( [
			'name',
			'email',
			'password',
		] ) );
		
		if($request->get( 'role' ) == "HIRER") {
			$user->attachRole( Constants::HIRER_ROLE[0] );
		} elseif($request->get( 'role' ) == "WORKER") {
			$user->attachRole( Constants::WORKER_ROLE[0] );
		}
		$roles = $user->getRoles();
		
		if($user->save()) {
			$token = JWTAuth::attempt( $request->all( [
				'email',
				'password',
			] ) );
			
			return response()->customResponse( 200, 'Uspešno ste se registrovali.', [
				'user'  => $user,
				'token' => $token,
				'roles' => $roles,
			], NULL );
		} else {
			return response()->customResponse( 400, 'Došlo je do greške prilikom registracije!', NULL, 'register_error' );
		}
	}
	
}
