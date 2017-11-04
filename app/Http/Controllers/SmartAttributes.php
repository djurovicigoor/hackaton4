<?php

namespace App\Http\Controllers;

use App\Http\Requests\SmartAttr\StoreSmartAttrRequest;
use App\SmartAttribute;
use Illuminate\Http\Request;

class SmartAttributes extends Controller {
	
	public function __construct() {
		$this->middleware( 'jwt.auth' );
	}
	
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
	public function store( StoreSmartAttrRequest $request ) {
		$user = $request->user();
		
		$smartkeys= $request->get('smartkeys');
		
		foreach($smartkeys as $value){
			$smartAttr = SmartAttribute::where(['key' => $value , 'user_id' => $user->id])->first();
			if($smartAttr){
				$smartAttr->value = $smartAttr->value +1;
				$smartAttr->save();
				if($smartAttr->save()) {
					return response()->customResponse( 200, 'Success', $smartAttr );
				} else {
					return response()->customResponse( 400, 'Woops! Something went wrong!', NULL, 'logout_error' );
				}
			}else{
				$newSmartAttr = new SmartAttribute;
				$newSmartAttr->key = $value;
				$newSmartAttr->user()->associate($user);
				$newSmartAttr->save();
				if($newSmartAttr->save()) {
					return response()->customResponse( 200, 'Success', $newSmartAttr );
				} else {
					return response()->customResponse( 400, 'Woops! Something went wrong!', NULL, 'logout_error' );
				}
			}
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
