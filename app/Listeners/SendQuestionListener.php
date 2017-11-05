<?php

namespace App\Listeners;

use App\Events\SendQuestionEvent;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Contracts\Queue\ShouldQueue;

class SendQuestionListener {
	/**
	 * Create the event listener.
	 *
	 * @return void
	 */
	public function __construct() {
		//
	}
	
	/**
	 * Handle the event.
	 *
	 * @param  SendQuestionEvent $event
	 * @return void
	 */
	public function handle( SendQuestionEvent $event ) {
	
	}
}
