<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateFilesTable extends Migration {
	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up() {
		Schema::create( 'files', function( Blueprint $table ) {
			$table->increments( 'id' );
			$table->string( 'path' )->nullable();
			$table->string( 'hash_name' )->nullable();
			$table->string( 'name' )->nullable();
			$table->string( 'mime' )->nullable();
			$table->integer( 'type' )->nullable()->comment('1 - files | 2 - thumbnail | 3 - avatar');
			$table->string( 'fileable_type' )->nullable();
			$table->integer( 'fileable_id' )->default( 0 );
			$table->text( 'description' )->nullable();
			$table->unsignedInteger( 'author_id' )->nullable();
			$table->boolean( 'public' )->default( TRUE );
			$table->timestamps();
		} );
	}
	
	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down() {
		Schema::dropIfExists( 'files' );
	}
}
