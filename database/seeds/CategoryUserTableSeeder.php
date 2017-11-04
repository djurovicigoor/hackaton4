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
		
		});
	}
}
