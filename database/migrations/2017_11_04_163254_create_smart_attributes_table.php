<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateSmartAttributesTable extends Migration {
	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up() {
		Schema::create( 'smart_attributes', function( Blueprint $table ) {
			$table->increments( 'id' );
			$table->string( 'key' );
			$table->integer( 'value' )->default( 1 );
			$table->unsignedInteger( 'user_id' );
			$table->timestamps();
		} );
		
		Schema::table( 'smart_attributes', function( Blueprint $table ) {
			$table->index( [
				'key',
				'value',
				'user_id',
			] );
			$table->foreign( 'user_id' )->references( 'id' )->on( 'users' )->onDelete( 'cascade' )->onUpdate( 'cascade' );
		} );
	}
	
	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down() {
		Schema::dropIfExists( 'smart_attributes' );
	}
}
