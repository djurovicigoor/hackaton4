<?php

namespace App\Console\Commands;

use App\Answer;
use App\Events\SendQuestionEvent;
use App\Question;
use App\User;
use Illuminate\Console\Command;
use Illuminate\Support\Facades\Log;
use jeremykenedy\LaravelRoles\Models\Role;

class SendQuestion extends Command {
	/**
	 * The name and signature of the console command.
	 *
	 * @var string
	 */
	protected $signature = 'send:question';
	
	/**
	 * The console command description.
	 *
	 * @var string
	 */
	protected $description = 'Send question to user';
	
	/**
	 * Create a new command instance.
	 *
	 */
	public function __construct() {
		parent::__construct();
	}
	
	/**
	 * Execute the console command.
	 *
	 * @return mixed
	 */
	public function handle() {
/*
		$usersCollection = Role::with( 'users' )->where( 'id', 3 )->first()->users;
		$users           = $usersCollection->toArray();
		$keys            = array_keys( $users );*/
/*
		$randNumber1      = mt_rand( min( $keys ), max( $keys ) );
		$randNumber2      = mt_rand( min( $keys ), max( $keys ) );
		$randNumber3      = mt_rand( min( $keys ), max( $keys ) );*/
		
		$user = User::find(4);
		
		$answers = Answer::where('user_id' , $user->id)->get();
		$arr = collect();
		$answers->each(function($value) use($arr){
			$arr->push($value->question_id);
		});
		
		$question = Question::whereNotIn('id',$arr)->get();
		
		event(new SendQuestionEvent($user , $question->first()));
	}
}
