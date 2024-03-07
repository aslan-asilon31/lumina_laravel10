<?php

use Illuminate\Support\Facades\Route;

use App\Http\Controllers\OrderController;
use App\Http\Controllers\BackupController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\TransactionController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\ProductController;

use App\Http\Controllers\MasterData\MasterLoginController;
use App\Http\Controllers\MasterData\BrandMasterController;
use App\Http\Controllers\MasterData\ImageMasterController;
use App\Http\Controllers\MasterData\RegionMasterController;
use App\Http\Controllers\MasterData\ReviewMasterController;
use App\Http\Controllers\MasterData\RoleMasterController;
use App\Http\Controllers\MasterData\StockMasterController;
use App\Http\Controllers\Auth\SocialiteController;


Auth::routes();

Route::middleware(['auth'])->group(function () {
    Route::get('/dashboard', [DashboardController::class, 'index']);
    Route::get('/dashboard-today', [DashboardController::class, 'dashboardtoday']);
    Route::get('/dashboard-week', [DashboardController::class, 'dashboardweek']);
    Route::get('/dashboard-month', [DashboardController::class, 'dashboardmonth']);
    Route::get('/dashboard-quarter', [DashboardController::class, 'dashboardquater']);
    Route::get('/dashboard-semester', [DashboardController::class, 'dashboardsemester']);
    Route::get('/dashboard-year', [DashboardController::class, 'dashboardyear']);
    Route::get('/dashboard-chart-data-today', [DashboardController::class, 'datacharttoday']);
    Route::get('/chart-data', [DashboardController::class, 'getChartData']);
    Route::get('/dashboard-status-chart-data-order', [DashboardController::class, 'datachartorder']);
    Route::get('/dashboard-transaction-data', [DashboardController::class, 'transactionData']);
    
    Route::get('products', [ProductController::class,'index'])->name('products.index');
    Route::get('product-list', [ProductController::class,'getdata'])->name('products.list');
    Route::get('/product-search-detail', [ProductController::class, 'search_detail']);
    Route::get('/product-search-by-category', [ProductController::class, 'search_by_category']);
});


Route::get('/master-login', [MasterLoginController::class, 'index']);
Route::get('/order', [OrderController::class, 'index']);
Route::get('/order-detail', [OrderController::class, 'show']);
Route::get('/backup', [BackupController::class, 'index'])->name('backup.index');
Route::get('/backup-manual', [BackupController::class, 'backupManual'])->name('backup.manual');
// Route::get('/users', [UserController::class, 'index'])->name('user.name');

Route::get('/auth/{provider}', [SocialiteController::class, 'redirectToProvider']);
Route::get('/auth/{provider}/callback', [SocialiteController::class, 'handleProvideCallback']);

Route::resource('transactions', TransactionController::class);

// Route::resource('users', UserController::class);
Route::get('users/edit', [UserController::class,'edit'])->name('users.edit');
Route::get('users/show', [UserController::class,'show'])->name('users.show');
Route::get('users', [UserController::class,'index'])->name('users.index');
Route::get('users/create', [UserController::class,'create'])->name('users.create');
Route::put('users/{user}', [UserController::class,'update'])->name('users.update');
Route::post('delete-user', [UserController::class,'destroy']);
Route::get('users-list', [UserController::class,'getdata'])->name('users.list');
Route::get('/users-export', [UserController::class, 'export'])->name('users.export');
Route::post('/users-import', [UserController::class, 'import'])->name('users.import');

Route::resource('rolemasters', RoleMasterController::class);
Route::post('delete-rolemasters', [RoleMasterController::class,'destroy']);
Route::get('rolemasters-list', [RoleMasterController::class,'getdata'])->name('rolemasters.list');

Route::resource('brandmasters', BrandMasterController::class);
Route::post('delete-brandmasters', [BrandMasterController::class,'destroy']);
Route::get('brandmasters-list', [BrandMasterController::class,'getdata'])->name('brandmasters.list');

Route::resource('imagemasters', ImageMasterController::class);
Route::post('delete-imagemaster', [ImageMasterController::class,'destroy']);
Route::get('imagemasters-list', [ImageMasterController::class,'getdata'])->name('imagemasters.list');

// Route::resource('bankmasters', BankMasterController::class);
// Route::post('delete-bankmasters', [BankMasterController::class,'destroy']);
// Route::get('bankmasters-list', [BankMasterController::class,'getdata'])->name('bankmasters.list');

Route::resource('regionmasters', RegionMasterController::class);
Route::post('delete-regionmasters', [RegionMasterController::class,'destroy']);
Route::get('regionmasters-list', [RegionMasterController::class,'getdata'])->name('regionmasters.list');

Route::resource('stockmasters', stockMasterController::class);
Route::post('delete-stockmasters', [stockMasterController::class,'destroy']);
Route::get('stockmasters-list', [stockMasterController::class,'getdata'])->name('stockmasters.list');


// Route::get('/', function () {
//     return view('welcome');
// });



Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');



// Wildcard Route
Route::get('/{locale?}', function ($locale = 'en') {
    // Check if the provided locale is valid
    $availableLocales = array_values(config('app.available_locales'));
    if (isset($locale) && in_array($locale, $availableLocales)) {
        app()->setLocale($locale);
    } else {
        // If the provided locale is not valid, redirect to the default locale (in this case, 'en')
        return redirect('/' . config('app.available_locales')['English']);
    }

    return view('welcome');
})->where('locale', implode('|', array_keys(config('app.available_locales'))));
