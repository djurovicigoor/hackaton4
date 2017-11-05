<?php

namespace App\Http\Requests\Answer;

use Illuminate\Foundation\Http\FormRequest;
use Tymon\JWTAuth\Facades\JWTAuth;

class StoreAnswerRequest extends FormRequest {
	/**
	 * Determine if the user is authorized to make this request.
	 *
	 * @return bool
	 */
	public function authorize() {
		try {
			if(!$user = JWTAuth::parseToken()->authenticate()) {
				
				return FALSE;
			}
		} catch(\Exception $e) {
			return FALSE;
		}
		
		return $user;
	}
	
	/**
	 * Get the validation rules that apply to the request.
	 *
	 * @return array
	 */
	public function rules() {
		return [
			'level'       => 'required',
			'question_id' => 'required',
		];
	}
}
