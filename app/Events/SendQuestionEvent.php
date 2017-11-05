<?php

namespace App\Events;

use App\Question;
use App\User;
use Illuminate\Broadcasting\Channel;
use Illuminate\Queue\SerializesModels;
use Illuminate\Foundation\Events\Dispatchable;
use Illuminate\Broadcasting\InteractsWithSockets;
use Illuminate\Contracts\Broadcasting\ShouldBroadcastNow;

class SendQuestionEvent implements ShouldBroadcastNow {
	use Dispatchable, InteractsWithSockets, SerializesModels;
	
	public $user;
	public $question;
	
	/**
	 * Create a new event instance.
	 *
	 * @return void
	 */
	public function __construct( User $user, Question $question ) {
		$this->user     = $user;
		$this->question = $question;
	}
	
	/**
	 * Get the channels the event should broadcast on.
	 *
	 * @return \Illuminate\Broadcasting\Channel|array
	 */
	public function broadcastOn() {
		return new Channel( 'question.' . $this->user->id );
	}
}
