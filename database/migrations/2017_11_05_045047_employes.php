<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class Employes extends Migration {
	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up() {
		Schema::create( 'employes', function( Blueprint $table ) {
			$table->unsignedInteger( 'hirer_id' );
			$table->unsignedInteger( 'worker_id' );
			
			$table->foreign( 'hirer_id' )->references( 'id' )->on( 'users' )->onDelete( 'cascade' )->onUpdate( 'cascade' );
			$table->foreign( 'worker_id' )->references( 'id' )->on( 'users' )->onDelete( 'cascade' )->onUpdate( 'cascade' );
			
		} );
	}
	
	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down() {
		Schema::dropIfExists( 'employes' );
	}
}
