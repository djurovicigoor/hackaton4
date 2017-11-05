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
			'Network1',
			'Network1',
			'Network1',
			'Network1',
			'Network1',
			'Network1',
			'Network1',
			'Network1',
			'Network1',
			'Network1',
			'Network1',
			'Network1',
			'Network1',
			'Network1',
			'Network1',
			'Network1',
			'Network1',
			'Network1',
			'Network1',
			'Network1',
		];
		
		for($i = 1; $i <=25; $i++){
			$category = new Category;
			$category->name = $categories[$i];
			$category->save();
		}
		
	}
}
