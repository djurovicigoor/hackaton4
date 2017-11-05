<?php

namespace App\Listeners;

use App\Events\SendTestEvent;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Contracts\Queue\ShouldQueue;

class SendTestListener
{
    /**
     * Create the event listener.
     *
     * @return void
     */
    public function __construct()
    {
        //
    }

    /**
     * Handle the event.
     *
     * @param  SendTestEvent  $event
     * @return void
     */
    public function handle(SendTestEvent $event)
    {
        //
    }
}
