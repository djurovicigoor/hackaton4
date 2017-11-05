<?php

namespace App\Http\Requests\Search;

use Illuminate\Contracts\Validation\Validator;
use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Http\Exceptions\HttpResponseException;
use Tymon\JWTAuth\Facades\JWTAuth;

class SmartSearchRequest extends FormRequest {
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
		];
	}
	
	/**
	 * Handle a failed authorization attempt.
	 *
	 * @param \Illuminate\Contracts\Validation\Validator $validator
	 * @return void
	 */
	protected function failedValidation( Validator $validator ) {
		throw new HttpResponseException( response()->customResponse( 422, $validator->errors(), NULL, 'store_practice' ) );
	}
}
