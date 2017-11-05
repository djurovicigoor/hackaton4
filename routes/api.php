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

use App\User;
use jeremykenedy\LaravelRoles\Models\Role;

Route::post( 'login', 'Auth\LoginController@login' );
Route::post( 'logout', 'Auth\LoginController@logout' )->name( 'logout' );

// Registration Routes...
Route::post( 'register', 'Auth\RegisterController@register' );
Route::resource( 'question', 'QuestionController' );
Route::resource( 'subcategory', 'SubCategoryController' );
Route::resource( 'user', 'UserController' );
Route::resource( 'job', 'JobController' );
Route::resource( 'smartattributes', 'SmartAttributes' );

Route::post( 'search/job', 'SearchController@searchJob' );
Route::post( 'search/job/smart', 'SearchController@smartSearchJob' );
Route::post( 'search/user', 'SearchController@searchUser' );
Route::post( 'search/user/smart', 'SearchController@smartSearchUser' );
Route::get( 'test', function(){
	
	$jobs = \App\Job::with('applications')->get()->toArray();
	
	return response()->customResponse( 200, 'Success', $jobs);
	
} );
