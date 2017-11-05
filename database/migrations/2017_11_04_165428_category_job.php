<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CategoryJob extends Migration {
	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up() {
		Schema::create( 'category_job', function( Blueprint $table ) {
			$table->unsignedInteger( 'category_id' );
			$table->unsignedInteger( 'job_id' );
			
			$table->foreign( 'category_id' )->references( 'id' )->on( 'categories' )->onDelete( 'cascade' )->onUpdate( 'cascade' );
			$table->foreign( 'job_id' )->references( 'id' )->on( 'jobs' )->onDelete( 'cascade' )->onUpdate( 'cascade' );
			
		} );
	}
	
	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down() {
		Schema::dropIfExists( 'category_job' );
	}
}
