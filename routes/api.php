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
Route::resource( 'job', 'JobController' );
Route::resource( 'smartattributes', 'SmartAttributes' );

Route::post( 'search/job', 'SearchController@searchJob' );
Route::post( 'search/job/smart', 'SearchController@smartSearchJob' );
Route::post( 'search/user', 'SearchController@searchUser' );
Route::post( 'search/user/smart', 'SearchController@smartSearchUser' );
Route::get( 'test', function(){
	$user = User::find(2);
	
	$answers = \App\Answer::where('user_id' , $user->id)->get();
	$arr = collect();
	$answers->each(function($value) use($arr){
		$arr->push($value->question_id);
	});
	
	$all = \App\Question::all();
	$q= \App\Question::whereNotIn('id',$arr)->get();
	
	return response()->customResponse( 200, 'Success', [$all->count(),$q->count(),$answers->count()] );
	
} );
