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
			#dump(\App\SubCategory::find( rand( 1, 33 ) ));
			$question          = new Question;
			$question->content = $faker->realText( $maxNbChars = 200, $indexSize = 2 );
			
			if($answer1 = \App\SubCategory::find( rand( 1, 32 ) )) {
				$question->answer1 = $answer1->name;
			}
			if($answer2 = \App\SubCategory::find( rand( 1, 32 ) )) {
				$question->answer2 = $answer2->name;
			}
			if($answer3 = \App\SubCategory::find( rand( 1, 32 ) )) {
				$question->answer3 = $answer3->name;
			}
			
			$question->save();
		}

		for($i = 1; $i <= 10; $i++) {
			$question         = \App\Question::find( $i );
			$answer           = new \App\Answer;
			$answer->answered = ($question->answer1)?$question->answer1:$question->answer2;
			$answer->question()->associate( $question );
			$answer->user()->associate( User::find( 1 ) );
			$answer->save();
		}
		
	}
}
