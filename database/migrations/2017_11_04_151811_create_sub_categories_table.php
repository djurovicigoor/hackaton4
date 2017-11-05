<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateSubCategoriesTable extends Migration {
	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up() {
		Schema::create( 'sub_categories', function( Blueprint $table ) {
			$table->increments( 'id' );
			$table->string( 'name' );
			$table->unsignedInteger( 'category_id' );
			$table->timestamps();
		} );
		
		Schema::table( 'sub_categories', function( Blueprint $table ) {
			$table->index( 'category_id' );
			$table->foreign( 'category_id' )->references( 'id' )->on( 'categories' )->onDelete( 'cascade' )->onUpdate( 'cascade' );
		} );
		
	}
	
	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down() {
		Schema::dropIfExists( 'sub_categories' );
	}
}
