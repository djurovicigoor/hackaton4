<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder {
	/**
	 * Run the database seeds.
	 *
	 * @return void
	 */
	public function run() {
		$this->call( RolesTableSeeder::class );
		$this->call( UsersTableSeeder::class );
		$this->call( CategoryTableSeeder::class );
		$this->call( SubCategoryTableSeeder::class );
		$this->call( JobTableSeeder::class );
		$this->call( SmartAttibute::class );
		$this->call( CategoryUserTableSeeder::class );
		$this->call( QuestionTableSeeder::class );
	}
}
