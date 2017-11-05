<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Category extends Model {
	protected $hidden =['created_at' , 'updated_at'];
	
	public function subCategories() {
		return $this->hasMany( SubCategory::class );
	}
	
	public function jobs() {
		return $this->belongsToMany( Job::class, 'category_job', 'category_id', 'job_id' );
	}
	
	public function users() {
		return $this->belongsToMany( User::class, 'category_user', 'category_id', 'user_id' );
	}
	
}
