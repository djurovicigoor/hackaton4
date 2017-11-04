<?php

namespace App;

use App\Traits\FileTrait;
use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;
use jeremykenedy\LaravelRoles\Traits\HasRoleAndPermission;

class User extends Authenticatable {
	use Notifiable;
	use HasRoleAndPermission;
	use FileTrait;
	
	/**
	 * The attributes that are mass assignable.
	 *
	 * @var array
	 */
	protected $fillable = [
		'name',
		'email',
		'password',
	];
	
	/**
	 * The attributes that should be hidden for arrays.
	 *
	 * @var array
	 */
	protected $hidden = [
		'password',
		'remember_token',
	];
	
	public function smartAttributes() {
		return $this->hasMany( SmartAttribute::class );
	}
	
	public function job() {
		return $this->hasMany( Job::class, 'hirer_id', 'id' );
	}
}
