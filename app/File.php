<?php

namespace App;

use App\Helpers\FileHandler;
use Illuminate\Database\Eloquent\Model;

/**
 * @property int            $id
 * @property mixed          path
 * @property mixed          hash_name
 * @property mixed          name
 * @property mixed          mime
 * @property mixed          type
 * @property mixed          model_type
 * @property mixed          model_id
 * @property mixed          description
 * @property mixed          public
 * @property string         $url
 * @property \Carbon\Carbon $created_at
 * @property \Carbon\Carbon $updated_at
 */
class File extends Model {
	
	/**
	 * The table associated with the model.
	 *
	 * @var string
	 */
	protected $table = 'files';
	
	/**
	 * The attributes that aren't mass assignable.
	 *
	 * @var array
	 */
	protected $guarded = ['id'];
	
	/**
	 * The accessors to append to the model's array form.
	 *
	 * @var array
	 */
	protected $appends = ['url'];
	
	/**
	 * The attributes that are mass assignable.
	 *
	 * @var array
	 */
	protected $fillable = [
		'path',
		'hash_name',
		'name',
		'mime',
		'type',
		'fileable_type',
		'fileable_id',
		'author_id',
		'description',
		'public',
	];
	
	/**
	 * The attributes that should be hidden for arrays.
	 *
	 * @var array
	 */
	protected $hidden = [
		'fileable_id',
		'fileable_type',
		'hash_name',
		'path',
	];
	
	/**
	 * @return \Illuminate\Database\Eloquent\Relations\MorphTo
	 */
	public function fileable() {
		return $this->morphTo();
	}
	
	/**
	 * Delete the model from the database.
	 *
	 * @return bool|null
	 *
	 * @throws \Exception
	 */
	public function delete() {
		$fileHandler = new  FileHandler;
		$fileHandler->removeFile( public_path( $this->path . '/' . $this->name . '.' . $this->mime ) );
		return parent::delete();
	}
	
	/**
	 * Return full url to the file
	 *
	 * @return string
	 */
	public function getUrlAttribute() {
		return url( '/' ) . '/' . $this->path . '/' . $this->name . '.' . $this->mime;
	}
}
