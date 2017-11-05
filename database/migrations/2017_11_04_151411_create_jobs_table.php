<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateJobsTable extends Migration {
	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up() {
		Schema::create( 'jobs', function( Blueprint $table ) {
			$table->increments( 'id' );
			$table->string( 'name' );
			$table->string( 'location' );
			$table->unsignedInteger( 'hirer_id' );
			$table->timestamps();
		} );
		
		Schema::table( 'jobs', function( Blueprint $table ) {
			$table->foreign( 'hirer_id' )->references( 'id' )->on( 'users' )->onDelete( 'cascade' )->onUpdate( 'cascade' );
		} );
	}
	
	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down() {
		Schema::dropIfExists( 'jobs' );
	}
}
