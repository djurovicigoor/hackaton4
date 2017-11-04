<?php

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::post( 'login', 'Auth\LoginController@login' );
Route::post( 'logout', 'Auth\LoginController@logout' )->name( 'logout' );

// Registration Routes...
Route::post( 'register', 'Auth\RegisterController@register' );
Route::resource( 'job', 'JobController' );
Route::resource( 'smartattributes', 'SmartAttributes' );