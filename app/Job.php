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
			'jobs.name'       => 10,
			'categories.name' => 8,
			'sub_categories.name' => 8,
		],
		'joins'   => [
			'category_job' => ['jobs.id','category_job.job_id',],
			'categories' => ['category_job.category_id','categories.id',],
			'sub_categories' => ['sub_categories.category_id','categories.id',],
		],
	];
	
	
	/*
	    'columns' => [
         'book.name' => 10,
         'author.name' => 5,
    ],
    'joins' => [
        'book_author' => ['book.id', 'book_author.book_id'],
        'author' => ['book_author.author_id', 'author.id'],
    ],
	 
	 
	 * */
	
	protected $fillable = [
		'name',
	];
	
	public function category() {
		return $this->belongsToMany( Category::class, 'category_job', 'category_id', 'job_id' );
	}
	
	public function hirer() {
		return $this->belongsTo( User::class, 'hirer_id', 'id' );
	}
}
