<?php

namespace App;

use App\Traits\FileTrait;
use Illuminate\Database\Eloquent\Model;
use Nicolaslopezj\Searchable\SearchableTrait;

class Job extends Model {
	use SearchableTrait;
	use FileTrait;
	
	/**
	 * Searchable rules.
	 *
	 * @var array
	 */
	protected $searchable = [
	
		'columns' => [
			'job.name'                          => 10,
		],
		'joins'   => [
			'category' => ['job.id', 'category_job.job_id'],
		],
	];
	
	
	protected $fillable =[
		'name'
	];
	
	public function category() {
		return $this->belongsToMany( Category::class, 'category_job', 'category_id', 'job_id' );
	}
	public function hirer() {
		return $this->belongsTo( User::class , 'hirer_id' , 'id' );
	}
}
