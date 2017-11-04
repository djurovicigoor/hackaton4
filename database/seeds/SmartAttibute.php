<?php

use App\SmartAttribute;
use Illuminate\Database\Seeder;

class SmartAttibute extends Seeder {
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
		$web->each( function( $value ) {
			$smartAtt        = new SmartAttribute;
			$smartAtt->key   = $value;
			$smartAtt->value = rand( 2, 10 );
			$smartAtt->user()->associate( \App\User::find( rand( 4, 5 ) ) );
			$smartAtt->save();
		} );
		$mobile = collect( [
			'Android',
			'iOS',
			'ObjectiveC',
			'Swift',
			'Kotlin',
		] );
		$mobile->each( function( $value ) {
			$smartAtt        = new SmartAttribute;
			$smartAtt->key   = $value;
			$smartAtt->value = rand( 2, 10 );
			$smartAtt->user()->associate( \App\User::find( rand( 4, 5 ) ) );
			$smartAtt->save();
		} );
		$desktop = collect( [
			'C',
			'C++',
			'C#',
			'J,ava',
		] );
		$desktop->each( function( $value ) {
			$smartAtt        = new SmartAttribute;
			$smartAtt->key   = $value;
			$smartAtt->value = rand( 2, 10 );
			$smartAtt->user()->associate( \App\User::find( rand( 4, 5 ) ) );
			$smartAtt->save();
		} );
		$management = collect( [
			'Project Management',
			'Human Management',
			'IT Support Manager',
			'Desktop Support Manager',
		] );
		$management->each( function( $value ) {
			$smartAtt        = new SmartAttribute;
			$smartAtt->key   = $value;
			$smartAtt->value = rand( 2, 10 );
			$smartAtt->user()->associate( \App\User::find( rand( 4, 5 ) ) );
			$smartAtt->save();
		} );
		$cloud = collect( [
			'Cloud SUB1',
			'Cloud SUB2',
			'Cloud SUB3',
		] );
		$cloud->each( function( $value ) {
			$smartAtt        = new SmartAttribute;
			$smartAtt->key   = $value;
			$smartAtt->value = rand( 2, 10 );
			$smartAtt->user()->associate( \App\User::find( rand( 4, 5 ) ) );
			$smartAtt->save();
		} );
		$administration = collect( [
			'Administration SUB1',
			'Administration SUB2',
			'Administration SUB3',
		] );
		$administration->each( function( $value ) {
			$smartAtt        = new SmartAttribute;
			$smartAtt->key   = $value;
			$smartAtt->value = rand( 2, 10 );
			$smartAtt->user()->associate( \App\User::find( rand( 4, 5 ) ) );
			$smartAtt->save();
		} );
		$network = collect( [
			'Network SUB1',
			'Network SUB2',
			'Network SUB3',
		] );
		$network->each( function( $value ) {
			$smartAtt        = new SmartAttribute;
			$smartAtt->key   = $value;
			$smartAtt->value = rand( 2, 10 );
			$smartAtt->user()->associate( \App\User::find( rand( 4, 5 ) ) );
			$smartAtt->save();
		} );
	}
}
