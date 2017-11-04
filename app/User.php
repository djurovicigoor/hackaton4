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
	
/*	protected $searchable = [
		
		'columns' => [
			'user.name'       => 10,
			'categories.name' => 8,
			'sub_categories.name' => 8,
		],
		'joins'   => [
			'category_job' => ['jobs.id','category_job.job_id',],
			'categories' => ['category_job.category_id','categories.id',],
			'sub_categories' => ['sub_categories.category_id','categories.id',],
		],
	];*/
	
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
	
	public function category() {
		return $this->belongsToMany( Category::class, 'category_user', 'category_id', 'user_id' );
	}
}
