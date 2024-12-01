<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Image extends Model
{
  use HasFactory;

  protected $table = 'res_images';
  protected $primaryKey = 'id';
  protected $keyType = 'int';
  protected $fillable = [
    'name',
  ];


  public function products()
  {
    return $this->hasMany(Image::class, 'image_id', 'id');
  }
}
