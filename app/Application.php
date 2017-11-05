<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Application extends Model {
	
	public function workers() {
		return $this->belongsTo( User::class, 'worker_id', 'id' );
	}
	public function jobs() {
		return $this->belongsTo( Job::class, 'job_id', 'id' );
	}

}
