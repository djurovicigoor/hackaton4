<?php

namespace App\Http\Controllers;

use App\Http\Requests\Job\JobRequest;
use App\Job;
use Illuminate\Http\Request;

class JobController extends Controller {
	
	public function __construct() {
		$this->middleware( 'jwt.auth');
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
	 * Show the form for creating a new resource.
	 *
	 * @return \Illuminate\Http\Response
	 */
	public function create() {
		//
	}
	
	/**
	 * Store a newly created resource in storage.
	 *
	 * @param  \Illuminate\Http\Request $request
	 * @return \Illuminate\Http\Response
	 */
	public function store( JobRequest $request ) {
		$job = new Job;
		$job->fill( $request->all() );
		$job->hirer()->associate($request->user());
		if($job->save()) {
			if($request->file('file')){
				$job->file($request->file('file') , 2 , $request->user());
			}
			return response()->customResponse( 200, 'Success', $job );
		} else {
			return response()->customResponse( 400, 'Woops! Something went wrong!', NULL, 'logout_error' );
		}
	}
	
	/**
	 * Display the specified resource.
	 *
	 * @param  \App\Job $job
	 * @return \Illuminate\Http\Response
	 */
	public function show( Job $job ) {
		//
	}
	
	/**
	 * Show the form for editing the specified resource.
	 *
	 * @param  \App\Job $job
	 * @return \Illuminate\Http\Response
	 */
	public function edit( Job $job ) {
		//
	}
	
	/**
	 * Update the specified resource in storage.
	 *
	 * @param  \Illuminate\Http\Request $request
	 * @param  \App\Job                 $job
	 * @return \Illuminate\Http\Response
	 */
	public function update( Request $request, Job $job ) {
		//
	}
	
	/**
	 * Remove the specified resource from storage.
	 *
	 * @param  \App\Job $job
	 * @return \Illuminate\Http\Response
	 */
	public function destroy( Job $job ) {
		//
	}
}
