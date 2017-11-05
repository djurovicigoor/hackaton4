<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CategoryUser extends Migration {
	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up() {
		Schema::create( 'category_user', function( Blueprint $table ) {
			$table->unsignedInteger( 'category_id' );
			$table->unsignedInteger( 'user_id' );
			
			$table->foreign( 'category_id' )->references( 'id' )->on( 'categories' )->onDelete( 'cascade' )->onUpdate( 'cascade' );
			$table->foreign( 'user_id' )->references( 'id' )->on( 'users' )->onDelete( 'cascade' )->onUpdate( 'cascade' );
		} );
	}
	
	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down() {
		Schema::dropIfExists( 'category_user' );
	}
}
