<?php

namespace App\Providers;

use Illuminate\Support\Facades\Response;
use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider {
	/**
	 * Bootstrap any application services.
	 *
	 * @return void
	 */
	public function boot() {
		Response::macro( 'customResponse', function( $code, $message, $data, $error = NULL ) {
			return Response::json( [
				'code'    => $code,
				'message' => $message,
				'data'    => $data,
				'error'   => $error,
			], $code );
		} );
	}
	
	/**
	 * Register any application services.
	 *
	 * @return void
	 */
	public function register() {
		//
	}
}
