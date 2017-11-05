<?php

namespace App\Events;

use App\Question;
use App\User;
use Illuminate\Broadcasting\Channel;
use Illuminate\Queue\SerializesModels;
use Illuminate\Foundation\Events\Dispatchable;
use Illuminate\Broadcasting\InteractsWithSockets;
use Illuminate\Contracts\Broadcasting\ShouldBroadcastNow;

class SendTestEvent implements ShouldBroadcastNow {
	use Dispatchable, InteractsWithSockets, SerializesModels;
	public $user;
	
	/**
	 * Create a new event instance.
	 *
	 * @return void
	 */
	public function __construct( User $user ) {
		$this->user = $user;
	}
	
	/**
	 * Get the channels the event should broadcast on.
	 *
	 * @return \Illuminate\Broadcasting\Channel|array
	 */
	public function broadcastOn() {
		return new Channel( 'test.' . $this->user->id );
		
	}
}
