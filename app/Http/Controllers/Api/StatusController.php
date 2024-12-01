<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\StatusMaster;
use Illuminate\Http\Request;
use Illuminate\Contracts\Database\Eloquent\Builder;

class StatusController extends Controller
{

  public function __invoke() {}

  public function index()
  {
    $statuses = StatusMaster::all()->toArray();
    return response()->json($statuses);
  }
}
