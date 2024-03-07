<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\CatalogProductController;




Route::get('/login-new', [App\Http\Controllers\Auth\LoginController::class, 'login_new'])->name('loginnew');
Route::get('/register-new', [App\Http\Controllers\Auth\RegisterController::class, 'register_new'])->name('registernew');
Route::get('/forgotpassword-new', [App\Http\Controllers\Auth\ForgotPasswordController::class, 'forgot_password_new'])->name('forgotpasswordnew');
Route::get('/success-new', [App\Http\Controllers\Auth\InfoController::class, 'index'])->name('successnew');
Route::get('/error-new', [App\Http\Controllers\Auth\InfoController::class, 'error_info'])->name('errornew');



// Route::middleware(['auth'])->group(function () {
// });