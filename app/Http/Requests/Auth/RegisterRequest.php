<?php

namespace App\Http\Requests\Auth;

use Illuminate\Contracts\Validation\Validator;
use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Http\Exceptions\HttpResponseException;

class RegisterRequest extends FormRequest {
	/**
	 * Determine if the user is authorized to make this request.
	 *
	 * @return bool
	 */
	public function authorize() {
		return TRUE;
	}
	
	/**
	 * Get the validation rules that apply to the request.
	 *
	 * @return array
	 */
	public function rules() {
		return [
			'name'     => 'required|max:255',
			'role'     => 'required',
			'email'    => 'required|email|max:255|unique:users',
			'password' => 'required|min:6',
			#confirmed
		];
	}
	
	protected function failedValidation( Validator $validator ) {
		throw new HttpResponseException( response()->customResponse( 422, $validator->errors(), NULL, 'register' ) );
	}
}
