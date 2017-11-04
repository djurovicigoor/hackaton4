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
			'Simphony',
			'JS',
			'Angular',
			'Angular2',
			'Angular4',
			'Vue',
			'React',
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
			'Project Management',
			'Human Management',
			'IT Support Manager',
			'Desktop Support Manager',
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
		
		$web->each( function( $value, $key ) {
			$subCategory       = new SubCategory;
			$subCategory->name = $value;
			$subCategory->category()->associate( Category::find( 1 ) );
			$subCategory->save();
		} );
		$mobile->each( function( $value, $key ) {
			$subCategory       = new SubCategory;
			$subCategory->name = $value;
			$subCategory->category()->associate( Category::find( 2 ) );
			$subCategory->save();
		} );
		$desktop->each( function( $value, $key ) {
			$subCategory       = new SubCategory;
			$subCategory->name = $value;
			$subCategory->category()->associate( Category::find( 3 ) );
			$subCategory->save();
		} );
		$management->each( function( $value, $key ) {
			$subCategory       = new SubCategory;
			$subCategory->name = $value;
			$subCategory->category()->associate( Category::find( 4 ) );
			$subCategory->save();
		} );
		$cloud->each( function( $value, $key ) {
			$subCategory       = new SubCategory;
			$subCategory->name = $value;
			$subCategory->category()->associate( Category::find( 5 ) );
			$subCategory->save();
		} );
		$administration->each( function( $value, $key ) {
			$subCategory       = new SubCategory;
			$subCategory->name = $value;
			$subCategory->category()->associate( Category::find( 6 ) );
			$subCategory->save();
		} );
		$network->each( function( $value, $key ) {
			$subCategory       = new SubCategory;
			$subCategory->name = $value;
			$subCategory->category()->associate( Category::find( 7 ) );
			$subCategory->save();
		} );
	}
}
