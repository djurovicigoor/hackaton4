<?php
/**
 * Created by PhpStorm.
 * User: djurovic
 * Date: 15/10/17
 * Time: 3:15 PM
 */

namespace App\Traits;

use App\File;
use App\Helpers\FileHandler;

trait FileTrait {
	
	/**
	 * @param      $files
	 * @param int  $type
	 * @param null $user
	 * @param bool $public
	 * @return $this
	 * @internal param $fileable
	 * @internal param $commentable
	 */
	public function file( $files, $type = 1, $user = NULL, $public = TRUE ) {
		$files = collect( $files );
		$path  = 'uploads/' . strtolower( substr( get_class(), strpos( get_class(), '\\' ) + 1 ) ) . '/' . $this->id;
		if($files->isNotEmpty()) {
			foreach($files as $value) {
				$fileHandler = new FileHandler;
				if($public) {
					$fileHandler->uploadPath( public_path( $path ) )->addFile( $value );
				} else {
					$fileHandler->uploadPath( storage_path( $path ) )->addFile( $value );
				}
				$file = new File( [
					'path'          => $path,
					'hash_name'     => $fileHandler->hashName,
					'name'          => $fileHandler->originalName,
					'mime'          => $fileHandler->originalExtension,
					'type'          => $type,
					'fileable_type' => get_class(),
					'fileable_id'   => $this->id,
					'author_id'     => $user->id,
					'public'        => $public,
					'description'   => '',
				] );
				$this->files()->save( $file );
			}
		}
		
		return $this;
	}
	
	
	/**
	 * @return \Illuminate\Database\Eloquent\Relations\MorphMany
	 */
	public function files() {
		return $this->morphMany( File::class, 'fileable' );
	}
	
	/**
	 * @return \Illuminate\Database\Eloquent\Relations\MorphMany
	 */
	public function avatar() {
		return $this->morphMany( File::class, 'fileable' )->where( 'type', 1 );
	}
	
	/**
	 * @return \Illuminate\Database\Eloquent\Relations\MorphMany
	 */
	public function thumbnail() {
		return $this->morphMany( File::class, 'fileable' )->where( 'type', 2 );
	}
	
}