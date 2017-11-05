<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class TestResult extends Model {

	public function hirer() {
		return $this->belongsTo( User::class, 'hirer_id', 'id' );
	}
	
	public function workers() {
		return $this->belongsTo( User::class, 'worker_id', 'id' );
	}
	
	public function jobs() {
		return $this->belongsTo( Job::class, 'job_id', 'id' );
	}
	
}
