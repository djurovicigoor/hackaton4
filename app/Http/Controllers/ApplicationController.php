<?php

namespace App\Http\Controllers;

use App\Application;
use App\Events\SendTestEvent;
use App\TestResult;
use Illuminate\Http\Request;

class ApplicationController extends Controller {
	
	public function sendTest( Request $request ) {
		$user = Application::find($request->get('application_id'))->user;
		
		event(new SendTestEvent($user));
	}
	
	public function collectTestResult(Request $request){
		$testResult = new TestResult;
	}
}
