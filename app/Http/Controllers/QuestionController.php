<?php

namespace App\Http\Controllers;

use App\Answer;
use App\Http\Requests\Answer\StoreAnswerRequest;
use App\Question;
use App\SmartAttribute;
use Illuminate\Http\Request;

class QuestionController extends Controller {
	/**
	 * Display a listing of the resource.
	 *
	 * @return \Illuminate\Http\Response
	 */
	public function index() {
		//
	}
	
	/**
	 * Store a newly created resource in storage.
	 *
	 * @param  \Illuminate\Http\Request $request
	 * @return \Illuminate\Http\Response
	 */
	public function store( StoreAnswerRequest $request ) {
		$user = $request->user();
		$answer           = new Answer;
		$answer->level = $request->get( 'level' );
		$answer->question()->associate( Question::find( $request->get( 'question_id' ) ) );
		$answer->user()->associate($user);
		if($answer->save()) {
			
			$smartAttr = SmartAttribute::where( ['key'     => $answer->question->answer,
												 'user_id' => $user->id,
			] )->first();
			if($smartAttr) {
				$smartAttr->value = $smartAttr->value + $answer->level;
				$smartAttr->save();
			} else {
				$newSmartAttr      = new SmartAttribute;
				$newSmartAttr->key = $answer->question->answer;
				$newSmartAttr->user()->associate( $user );
				$newSmartAttr->save();
			}
			
			return response()->customResponse( 200, 'Success', $answer );
		} else {
			return response()->customResponse( 400, 'Success', NULL );
			
		}
	}
	
	/**
	 * Display the specified resource.
	 *
	 * @param  int $id
	 * @return \Illuminate\Http\Response
	 */
	public function show( $id ) {
		//
	}
	
	/**
	 * Show the form for editing the specified resource.
	 *
	 * @param  int $id
	 * @return \Illuminate\Http\Response
	 */
	public function edit( $id ) {
		//
	}
	
	/**
	 * Update the specified resource in storage.
	 *
	 * @param  \Illuminate\Http\Request $request
	 * @param  int                      $id
	 * @return \Illuminate\Http\Response
	 */
	public function update( Request $request, $id ) {
		//
	}
	
	/**
	 * Remove the specified resource from storage.
	 *
	 * @param  int $id
	 * @return \Illuminate\Http\Response
	 */
	public function destroy( $id ) {
		//
	}
}
