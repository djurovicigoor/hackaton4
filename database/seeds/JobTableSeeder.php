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
		
		$faker = Faker\Factory::create();
		
		for($i=0; $i<15; $i++){
			$job       = new Job;
			$job->name = $faker->unique()->jobTitle();
			$job->location = $faker->unique()->city();
			$job->hirer()->associate(\App\User::find(3));
			$job->save();
			$job->category()->attach( Category::find( 1 ) );
			
			$job       = new Job;
			$job->name = $faker->unique()->jobTitle();
			$job->location = $faker->unique()->city();
			$job->hirer()->associate(\App\User::find(2));
			$job->save();
			$job->category()->attach( Category::find( 1 ) );
			
			$job       = new Job;
			$job->name = $faker->unique()->jobTitle();
			$job->location = $faker->unique()->city();
			$job->hirer()->associate(\App\User::find(3));
			$job->save();
			$job->category()->attach( Category::find( 1 ) );
			
			$rand1 = rand(2,3);
			if($rand1 == 2){
				$job       = new Job;
				$job->name = $faker->unique()->jobTitle();
				$job->location = $faker->unique()->city();
				$job->hirer()->associate(\App\User::find(2));
				$job->save();
				$job->category()->attach( Category::find( 2 ) );
				
				$job       = new Job;
				$job->name =$faker->unique()->jobTitle();
				$job->location = $faker->unique()->city();
				$job->hirer()->associate(\App\User::find(3));
				$job->save();
				$job->category()->attach( Category::find( 2 ) );
			}
			
			$job       = new Job;
			$job->name = $faker->unique()->jobTitle();
			$job->location = $faker->unique()->city();
			$job->hirer()->associate(\App\User::find(2));
			$job->save();
			$job->category()->attach( Category::find( 2 ) );
			
			$rand2 =rand(4,5);
			if($rand2==5){
				$job       = new Job;
				$job->name = $faker->unique()->jobTitle();
				$job->location = $faker->unique()->city();
				$job->hirer()->associate(\App\User::find(3));
				$job->save();
				$job->category()->attach( Category::find( 1 ) );
			}
			
			$job       = new Job;
			$job->name = $faker->unique()->jobTitle();
			$job->location = $faker->unique()->city();
			$job->hirer()->associate(\App\User::find(2));
			$job->save();
			$job->category()->attach( Category::find( 1 ) );
			
			$job       = new Job;
			$job->name = $faker->unique()->jobTitle();
			$job->location = $faker->unique()->city();
			$job->hirer()->associate(\App\User::find(3));
			$job->save();
			$job->category()->attach( Category::find( 1 ) );
			
			$rand = rand(0,1);
			
			if($rand){
				$job       = new Job;
				$job->name = $faker->unique()->jobTitle();
				$job->location = $faker->unique()->city();
				$job->hirer()->associate(\App\User::find(2));
				$job->save();
				$job->category()->attach( Category::find( 2 ) );
				
				$job       = new Job;
				$job->name = $faker->unique()->jobTitle();
				$job->location = $faker->unique()->city();
				$job->hirer()->associate(\App\User::find(3));
				$job->save();
				$job->category()->attach( Category::find( 2 ) );
				
				$job       = new Job;
				$job->name = $faker->unique()->jobTitle();
				$job->location = $faker->unique()->city();
				$job->hirer()->associate(\App\User::find(2));
				$job->save();
				$job->category()->attach( Category::find( 2 ) );
			}
		}
	}
}
