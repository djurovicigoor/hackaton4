<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Category extends Model {
	
	public function subCategories() {
		return $this->hasMany( SubCategory::class );
	}
	
	public function jobs() {
		return $this->belongsToMany( Job::class, 'category_job', 'job_id', 'category_id' );
	}
	
}
