<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Api\EmployeeController;
use App\Http\Controllers\Api\StatusController;

Route::get('/user', function (Request $request) {
  return $request->user();
})->middleware('auth:sanctum');

Route::get('/employees', function (Request $request) {
  return $request->user();
})->middleware('auth:sanctum');


// Route::prefix('api')->group(function () {
//   Route::get('/employees', [EmployeeController::class, 'index'])->middleware('auth:sanctum');
//   Route::get('/status', [EmployeeController::class, 'index'])->middleware('auth:sanctum');
//   //     Route::get('/employee', [\App\Livewire\Dashboard\Employees::class, 'getEmployeesApi'])->middleware('guest');
// });



Route::prefix('v1')->group(function () {
  Route::get('/status', [StatusController::class, 'index']);
});
