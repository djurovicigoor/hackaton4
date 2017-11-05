<?php

namespace App;

use App\Traits\FileTrait;
use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;
use jeremykenedy\LaravelRoles\Traits\HasRoleAndPermission;
use Nicolaslopezj\Searchable\SearchableTrait;

class User extends Authenticatable {
	use Notifiable;
	use HasRoleAndPermission;
	use FileTrait;
	use SearchableTrait;
	
	protected $searchable = [
		
		'columns' => [
			'users.name'          => 10,
			'categories.name'     => 8,
			'sub_categories.name' => 8,
		],
		'joins'   => [
			'category_user'  => [
				'users.id',
				'category_user.user_id',
			],
			'categories'     => [
				'category_user.category_id',
				'categories.id',
			],
			'sub_categories' => [
				'sub_categories.category_id',
				'categories.id',
			],
		],
	];
	
	/**
	 * The attributes that are mass assignable.
	 *
	 * @var array
	 */
	protected $fillable = [
		'name',
		'email',
		'password',
		'video_url',
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
		return $this->hasMany( SmartAttribute::class )->orderByDesc( 'value' );
	}
	
	public function smartAttributes3() {
		return $this->hasMany( SmartAttribute::class )->orderByDesc( 'value' )->take( 3 );
	}
	
	public function job() {
		return $this->hasMany( Job::class, 'hirer_id', 'id' );
	}
	
	public function answer() {
		return $this->hasMany( Answer::class );
	}
	
	public function hirerTestResult() {
		return $this->hasMany( TestResult::class, 'hirer_id', 'id' );
	}
	
	public function workerTestResult() {
		return $this->hasMany( TestResult::class, 'worker', 'id' );
	}
	
	public function category() {
		return $this->belongsToMany( Category::class, 'category_user', 'category_id', 'user_id' );
	}
	
	public function workers() {
		return $this->belongsToMany( User::class, 'employes', 'hirer_id', 'worker_id' );
	}
}
