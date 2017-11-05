<?php

use App\Category;
use App\SubCategory;
use Illuminate\Database\Seeder;

class SubCategoryTableSeeder extends Seeder {
	/**
	 * Run the database seeds.
	 *
	 * @return void
	 */
	public function run() {
		
		$web = collect( [
			'PHP',
			'Laravel',
			'Codeigniter',
			'Yii',
			'Zend',
			'Angular',
			'Angular2'
		/*	'Simphony',
			'JS',
			'Angular4',
			'Vue',
			'React',*/
		] );
		
		$mobile = collect( [
			'Android',
			'iOS',
			'ObjectiveC',
			'Swift',
			'Kotlin',
		] );
		
		$desktop        = collect( [
			'C',
			'C++',
			'C#',
			'J,ava',
		] );
		$management     = collect( [
			'P Management',
			'H Management',
			'IT Support',
			'Support Manager',
		] );
		$cloud          = collect( [
			'Cloud SUB1',
			'Cloud SUB2',
			'Cloud SUB3',
		] );
		$administration = collect( [
			'Administration SUB1',
			'Administration SUB2',
			'Administration SUB3',
		] );
		$network        = collect( [
			'Network SUB1',
			'Network SUB2',
			'Network SUB3',
		] );
		
		for($i=1; $i<3; $i++){
			
			$web->each( function( $value, $key ) {
				
					$subCategory       = new SubCategory;
					$subCategory->name = $value;
					$subCategory->category()->associate( Category::find( rand(1,15) ) );
					$subCategory->save();
				
			} );
			$mobile->each( function( $value, $key ) {
				
					$subCategory       = new SubCategory;
					$subCategory->name = $value;
					$subCategory->category()->associate( Category::find( rand(1,15) ) );
					$subCategory->save();
					/*$subCategory       = new SubCategory;
					$subCategory->name = $value;
					$subCategory->category()->associate( Category::find( rand(1,15) ) );
					$subCategory->save();*/
				
			} );
			$desktop->each( function( $value, $key ) {
				
					$subCategory       = new SubCategory;
					$subCategory->name = $value;
					$subCategory->category()->associate( Category::find( rand(1,15)) );
					$subCategory->save();
				
			} );
			/*$management->each( function( $value, $key ) {
				if(rand( 0, 2 )) {
					$subCategory       = new SubCategory;
					$subCategory->name = $value;
					$subCategory->category()->associate( Category::find(rand(1,15) ) );
					$subCategory->save();
				}
			} );
			$cloud->each( function( $value, $key ) {
				if(rand( 0, 2 )) {
					$subCategory       = new SubCategory;
					$subCategory->name = $value;
					$subCategory->category()->associate( Category::find( rand(1,15)) );
					$subCategory->save();
				}
			} );
			$administration->each( function( $value, $key ) {
				if(rand( 0, 3 )) {
					$subCategory       = new SubCategory;
					$subCategory->name = $value;
					$subCategory->category()->associate( Category::find(rand(1,15)) );
					$subCategory->save();
				}
			} );
			$network->each( function( $value, $key ) {
				if(rand( 0, 3 )) {
					$subCategory       = new SubCategory;
					$subCategory->name = $value;
					$subCategory->category()->associate( Category::find( rand(1,15)) );
					$subCategory->save();
				}
			} );*/
		}
	}
}
