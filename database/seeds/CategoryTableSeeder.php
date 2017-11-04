<?php

use App\Category;
use Illuminate\Database\Seeder;

class CategoryTableSeeder extends Seeder {
	/**
	 * Run the database seeds.
	 *
	 * @return void
	 */
	public function run() {
		
		$categories = [
			'Web',
			'Mobile',
			'Desktop',
			'Management',
			'Cloud',
			'Administration',
			'Network',
		];
		
		for($i = 0; $i <=6; $i++){
			$category = new Category;
			$category->name = $categories[$i];
			$category->save();
		}
		
	}
}
