<?php

use App\Category;
use App\Job;
use Illuminate\Database\Seeder;

class JobTableSeeder extends Seeder {
	/**
	 * Run the database seeds.
	 *
	 * @return void
	 */
	public function run() {
		
		
		$job       = new Job;
		$job->name = "Web job 1";
		$job->hirer()->associate(\App\User::find(1));
		$job->save();
		$job->category()->attach( Category::find( 1 ) );
		
		$job       = new Job;
		$job->name = "Web job 2";
		$job->hirer()->associate(\App\User::find(2));
		$job->save();
		$job->category()->attach( Category::find( 1 ) );
		
		$job       = new Job;
		$job->name = "Web job 3";
		$job->hirer()->associate(\App\User::find(1));
		$job->save();
		$job->category()->attach( Category::find( 1 ) );
		
		$job       = new Job;
		$job->name = "Mobile job 1";
		$job->hirer()->associate(\App\User::find(2));
		$job->save();
		$job->category()->attach( Category::find( 2 ) );
		
		$job       = new Job;
		$job->name = "Mobile job 2";
		$job->hirer()->associate(\App\User::find(1));
		$job->save();
		$job->category()->attach( Category::find( 2 ) );
		
		$job       = new Job;
		$job->name = "Mobile job 3";
		$job->hirer()->associate(\App\User::find(2));
		$job->save();
		$job->category()->attach( Category::find( 2 ) );
	}
}
