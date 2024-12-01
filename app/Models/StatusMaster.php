<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class StatusMaster extends Model
{
  use HasFactory;

  protected $table = 'res_status';
  protected $primaryKey = 'id';
  protected $keyType = 'int';
  protected $fillable = [
    'name',
    'parent_id',
    'type_module',
    'workspace_id',
    'desc',
    'created_by',
    'updated_by',
  ];


  public function products()
  {
    return $this->hasMany(Product::class, 'status_id', 'id');
  }
}
