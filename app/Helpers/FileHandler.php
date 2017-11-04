<?php
/**
 * Created by PhpStorm.
 * User: djurovic
 * Date: 08/06/17
 * Time: 4:52 PM
 */

namespace App\Helpers;

use Carbon\Carbon;
use Illuminate\Http\UploadedFile;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Hash;

class FileHandler {
	public $file;
	public $currentPath;
	public $uploadPath;
	public $errors;
	public $originalName;
	public $hashName;
	public $originalExtension;
	
	/**
	 * Default constructor
	 * @param null $uploadPath
	 */
	public function __construct( $uploadPath = NULL ) {
		$this->errors            = collect();
		$this->currentPath       = NULL;
		$this->uploadPath        = $uploadPath;
		$this->originalName      = NULL;
		$this->hashName          = NULL;
		$this->originalExtension = NULL;
	}
	
	/**
	 * Creates a directory
	 * @param $path
	 */
	public static function makeDir( $path ) {
		File::exists( $path ) or File::makeDirectory( $path, 0777, TRUE );
	}
	
	/**
	 * Copies a file from source
	 * to destination
	 * @param $source
	 * @param $destination
	 */
	public static function copy( $source, $destination ) {
		copy( $source, $destination );
		return File::exists( $destination );
	}
	
	/**
	 * Find file by source path
	 * @param $source
	 * @return null
	 */
	public static function find( $source ) {
		try {
			return File::get( $source );
		} catch(\Exception $e) {
			return NULL;
		}
	}
	
	/**
	 * Find file extension by source path
	 * @param $source
	 * @return null
	 */
	public static function extension( $source ) {
		try {
			return File::extension( $source );
		} catch(\Exception $e) {
			return NULL;
		}
	}
	
	/**
	 * Delete recursively without deleting parent
	 * @param $source
	 */
	public static function removeDir( $source ) {
		return File::deleteDirectory( $source, TRUE );
	}
	
//	/**
//	 * Path to first uploaded file
//	 * @return |null
//	 */
//	public function first() {
//		return $this->savedPaths->first() ?: NULL;
//	}
//
	/**
	 * Handles files upload
	 * @param UploadedFile|null             $file
	 * @param \Illuminate\Http\UploadedFile $file
	 * @return FileHandler
	 */
	public function addFile( UploadedFile $file = NULL ) {
		try {
			if($this->uploadPath) {
				$this->file = $file;
				if($this->file) {
					$hashName = md5( microtime() );
					$this->hashName =  $hashName ;
					$this->originalName      = pathinfo( $file->getClientOriginalName(), PATHINFO_FILENAME );
					$this->originalExtension = $file->getClientOriginalExtension();
					$file->move( $this->uploadPath, $hashName . '.' . $file->getClientOriginalExtension() );
				}
			} else {
				throw new \Exception( '\App\Helpers\FileHandle::57 $uploadPath is not available' );
			}
		} catch(\Exception $e) {
			$this->errors->push( $e->getTraceAsString() );
		}
		
		return $this->isSuccess();
	}
	
	/**
	 * Checks whether there is an error
	 * @return \App\Helpers\FileHandler $this|\Illuminate\Http\JsonResponse
	 */
	private function isSuccess() {
		try {
			if($this->errors->isNotEmpty()) {
				throw new \Exception( $this->errors->first() );
			}
			
			return $this;
		} catch(\Exception $e) {
			return response()->json( [
				'message' => $e->getTraceAsString(),
				'entity'  => NULL,
				'code'    => 500,
			], 500 );
		}
	}
	
	/**
	 * Handles removal of file
	 * @param $source
	 * @return $this
	 */
	public function removeFile( $source = NULL ) {
		try {
			$this->currentPath = $source;
			if($this->currentPath && File::exists( $this->currentPath )) {
				File::delete( $this->currentPath );
			}
		} catch(\Exception $e) {
			$this->errors->push( $e->getMessage() . '; Line: ' . $e->getLine() );
		}
		
		return $this->isSuccess();
	}
	
	/**
	 * Sets a new upload path
	 * @param $uploadPath
	 * @return $this
	 */
	public function uploadPath( $uploadPath ) {
		$this->uploadPath = $uploadPath;
		if($this->uploadPath) {
			File::makeDirectory( $this->uploadPath, 0777, TRUE, TRUE );
		}
		
		return $this;
	}
}