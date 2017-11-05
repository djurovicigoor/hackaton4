<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateAnswersTable extends Migration {
	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up() {
		Schema::create( 'answers', function( Blueprint $table ) {
			$table->increments( 'id' );
			$table->integer( 'level' );
			$table->unsignedInteger( 'question_id' );
			$table->unsignedInteger( 'user_id' );
			$table->timestamps();
		} );
		
		Schema::table( 'answers', function( Blueprint $table ) {
			$table->foreign( 'question_id' )->references( 'id' )->on( 'questions' )->onDelete( 'cascade' )->onUpdate( 'cascade' );
			$table->foreign( 'user_id' )->references( 'id' )->on( 'users' )->onDelete( 'cascade' )->onUpdate( 'cascade' );

		} );
	}
	
	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down() {
		Schema::dropIfExists( 'answers' );
	}
}
