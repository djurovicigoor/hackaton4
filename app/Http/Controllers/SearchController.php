<?php

namespace App\Http\Controllers;

use App\Http\Requests\Search\SmartSearchRequest;
use App\Job;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Pagination\LengthAwarePaginator;
use Illuminate\Pagination\Paginator;
use Illuminate\Support\Collection;

class SearchController extends Controller {
	
	public function searchJob( Request $request ) {
		
		if($request->get( 'query' )) {
			$jobs = Job::search( $request->get( 'query' ) )->with( 'category.subCategories', 'hirer' )->distinct()->orderByDesc('created_at')->get();
			
			$jobs = $this->paginate( $jobs, $perPage = 9, $page = NULL, $options = [
				'path' => url( '/search/job' ),
			] );
			
			return response()->customResponse( 200, 'Success', $jobs );
			
		} else {
			$jobs = Job::with( 'category.subCategories', 'hirer' )->orderByDesc('created_at')->paginate( 9 );
			
			return response()->customResponse( 200, 'Success', $jobs );
		}
	}
	public function smartSearchJob( SmartSearchRequest $request ) {
		
		$user = $request->user();
		$user->load('smartAttributes3');
		
		$query = collect();
		
		$user->smartAttributes3->each(function($value)use($query){
			$query->push($value->key);
		});
		$query = $query->implode(',');
		$query = str_replace(',', ' ', $query);
		
		if($query) {
			$jobs = Job::search($query )->with( 'category.subCategories', 'hirer' )->distinct()->orderByDesc('created_at')->get();
			
			$jobs = $this->paginate( $jobs, $perPage = 9, $page = NULL, $options = [
				'path' => url( '/search/job' ),
			] );
			
			return response()->customResponse( 200, 'Success', $jobs );
			
		} else {
			$jobs = Job::with( 'category.subCategories', 'hirer' )->orderByDesc('created_at')->paginate( 9 );
			
			return response()->customResponse( 200, 'Success', $jobs );
		}
		
	}
	
	public function searchUser( Request $request ) {
		if($request->get( 'query' )) {
			$user = User::search( $request->get( 'query' ) )->with( 'category.subCategories' )->distinct()->orderByDesc('created_at')->get();
			
			$user = $this->paginate( $user, $perPage = 9, $page = NULL, $options = [
				'path' => url( '/search/job' ),
			] );
			
			return response()->customResponse( 200, 'Success', $user );
			
		} else {
			$user = User::with( 'category.subCategories' )->orderByDesc('created_at')->paginate( 9 );
			
			return response()->customResponse( 200, 'Success', $user );
		}
		
	}
	
	public function paginate( $items, $perPage = 5, $page = NULL, $options = [] ) {
		$page = $page ?: (Paginator::resolveCurrentPage() ?: 1);
		//		$page  = $page ?: 1;
		$items = $items instanceof Collection ? $items : Collection::make( $items );
		
		return new LengthAwarePaginator( $items->forPage( $page, $perPage ), $items->count(), $perPage, $page, $options );
	}
}
