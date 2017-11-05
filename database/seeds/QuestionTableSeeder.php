<?php

use App\Question;
use App\User;
use Illuminate\Database\Seeder;

class QuestionTableSeeder extends Seeder {
	/**
	 * Run the database seeds.
	 *
	 * @return void
	 */
	public function run() {
		$faker = Faker\Factory::create();
		
		for($i = 1; $i <= 200; $i++) {
			$question          = new Question;
			$question->content = $faker->realText( $maxNbChars = 150, $indexSize = 2 );
			
			if($answer1 = \App\SubCategory::find( rand( 1, 32 ) )) {
				$question->answer = $answer1->name;
			}else{
				$question->answer = "Lorem ipsum";
			}
			
			$question->save();
		}

		for($i = 1; $i <= 10; $i++) {
			$question         = \App\Question::find( $i );
			$answer           = new \App\Answer;
			$answer->level = 5;
			$answer->question()->associate( $question );
			$answer->user()->associate( User::find( 4 ) );
			$answer->save();
		}
		
	}
}
