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
			'jobs.name'           => 1,
			'categories.name'     => 1,
			'sub_categories.name' => 10,
		],
		'joins'   => [
			'category_job'   => [
				'jobs.id',
				'category_job.job_id',
			],
			'categories'     => [
				'category_job.category_id',
				'categories.id',
			],
			'sub_categories' => [
				'sub_categories.category_id',
				'categories.id',
			],
		],
	];
	
	protected $fillable = [
		'name',
	];
	
	public function category() {
		return $this->belongsToMany( Category::class, 'category_job', 'job_id', 'category_id' );
	}
	
	public function hirer() {
		return $this->belongsTo( User::class, 'hirer_id', 'id' );
	}
	
	public function applications() {
		return $this->hasMany( Application::class, 'job_id', 'id' );
	}
	
	public function testResult() {
		return $this->hasMany( TestResult::class, 'job_id', 'id' );
	}
}
