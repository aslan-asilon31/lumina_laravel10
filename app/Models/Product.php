<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Product extends Model
{

  use HasFactory;
  protected $keyType = 'string';
  protected $table = 'product_sales';

  protected $fillable = [
    'product_variant_id',
    'product_review_id',
    'status_id',
    'brand_id',
    'price_id',
    'cat_id',
    'image_id',
    'name',
    'workspace_id',
    'desc',
    'created_by',
    'updated_by',
    'created_at',
    'updated_at'
  ];


  public function status()
  {
    return $this->belongsTo(StatusMaster::class, 'status_id', 'id');
  }


  public function price()
  {
    return $this->belongsTo(Price::class, 'price_id', 'id');
  }

  public function image()
  {
    return $this->belongsTo(Image::class, 'image_id', 'id');
  }
}
