<?php

use Illuminate\Database\Seeder;

class CategoryUserTableSeeder extends Seeder {
	/**
	 * Run the database seeds.
	 *
	 * @return void
	 */
	public function run() {
		$categories = \App\Category::all();
		
		$categories->each(function($value){
			$value->users()->attach(rand(3,4));
		});
		$categories->each(function($value){
			$value->users()->attach(\App\User::find(rand(1,54)));
		});
		$categories->each(function($value){
			$value->users()->attach(\App\User::find(rand(1,54)));
		});
		$categories->each(function($value){
			$value->users()->attach(\App\User::find(rand(1,54)));
		});
		$categories->each(function($value){
			$value->users()->attach(\App\User::find(rand(1,54)));
		});
	}
	
}
