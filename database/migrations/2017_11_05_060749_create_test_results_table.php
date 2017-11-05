<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTestResultsTable extends Migration {
	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up() {
		Schema::create( 'test_results', function( Blueprint $table ) {
			$table->increments( 'id' );
			$table->unsignedInteger( 'hirer_id' );
			$table->unsignedInteger( 'job_id' );
			$table->unsignedInteger( 'user_id' );
			$table->timestamps();
		} );
		
		Schema::table( 'test_results', function( Blueprint $table ) {
			$table->foreign( 'hirer_id' )->references( 'id' )->on( 'users' )->onDelete( 'cascade' )->onUpdate( 'cascade' );
			$table->foreign( 'user_id' )->references( 'id' )->on( 'users' )->onDelete( 'cascade' )->onUpdate( 'cascade' );
			$table->foreign( 'job_id' )->references( 'id' )->on( 'jobs' )->onDelete( 'cascade' )->onUpdate( 'cascade' );
			
		} );
	}
	
	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down() {
		Schema::dropIfExists( 'test_results' );
	}
}
