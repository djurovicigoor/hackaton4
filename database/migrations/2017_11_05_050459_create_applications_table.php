<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateApplicationsTable extends Migration {
	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up() {
		Schema::create( 'applications', function( Blueprint $table ) {
			$table->increments( 'id' );
			$table->unsignedInteger( 'worker_id' );
			$table->unsignedInteger( 'job_id' );
			$table->timestamps();
		} );
		
		Schema::table( 'applications', function( Blueprint $table ) {
			$table->foreign( 'worker_id' )->references( 'id' )->on( 'users' )->onDelete( 'cascade' )->onUpdate( 'cascade' );
			$table->foreign( 'job_id' )->references( 'id' )->on( 'jobs' )->onDelete( 'cascade' )->onUpdate( 'cascade' );
			
		} );
	}
	
	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down() {
		Schema::dropIfExists( 'applications' );
	}
}
