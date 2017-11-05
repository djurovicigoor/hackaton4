<?php

use App\User;
use jeremykenedy\LaravelRoles\Models\Role;
use jeremykenedy\LaravelRoles\Models\Permission;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Seeder;

class UsersTableSeeder extends Seeder {
	/**
	 * Run the database seeds.
	 *
	 * @return void
	 */
	public function run() {
		
		
		$adminRole  = Role::where( 'name', '=', 'Admin' )->first();
		$hirerRole  = Role::where( 'name', '=', 'Hirer' )->first();
		$userWorker = Role::where( 'name', '=', 'Worker' )->first();
		
		/**
		 * Add Users
		 *
		 */
		if(User::where( 'email', '=', 'admin@admin.com' )->first() === NULL) {
			
			$newUser = User::create( [
				'name'     => 'Admin',
				'email'    => 'admin@admin.com',
				'password' => bcrypt( 'password' ),
			] );
			
			$newUser->attachRole( $adminRole );
			
		}
		
		if(User::where( 'email', '=', 'djurovic.igoor@gmail.com' )->first() === NULL) {
			
			$newUser = User::create( [
				'name'     => 'Igor',
				'email'    => 'djurovic.igoor@gmail.com',
				'password' => bcrypt( 'password' ),
			] );
			
			$newUser->attachRole( $hirerRole );
		}
		if(User::where( 'email', '=', 'vukasinovic@outlook.com' )->first() === NULL) {
			
			$newUser = User::create( [
				'name'     => 'Aleksandar',
				'email'    => 'vukasinovic@outlook.com',
				'password' => bcrypt( 'password' ),
			] );
			
			$newUser->attachRole( $hirerRole );
		}
		
		if(User::where( 'email', '=', 'darkotuning194@gmail.com' )->first() === NULL) {
			
			$newUser = User::create( [
				'name'     => 'Darko',
				'email'    => 'darkotuning194@gmail.com',
				'password' => bcrypt( 'password' ),
			] );
			
			$newUser->attachRole( $userWorker );
		}
		if(User::where( 'email', '=', 'danilo.cvetkovic@ymail.com' )->first() === NULL) {
			
			$newUser = User::create( [
				'name'     => 'Danilo',
				'email'    => 'danilo.cvetkovic@ymail.com',
				'password' => bcrypt( 'password' ),
			] );
			
			$newUser->attachRole( $userWorker );
		}
		
		for($i=1; $i<=50; $i++){
			$newUser = User::create( [
				'name'     => 'User'.$i,
				'email'    => 'user'.$i.'@mail.com',
				'password' => bcrypt( 'password' ),
			] );
			
			$newUser->attachRole( $userWorker );
		}
		
		
	}
}