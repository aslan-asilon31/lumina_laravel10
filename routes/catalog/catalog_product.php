<?php

use App\Http\Controllers\CatalogProductController;


Route::prefix('catalog')->group(function () {
    Route::get('product', [CatalogProductController::class, 'index'])->name('catalog-product-index');
    Route::get('productsearch', [CatalogProductController::class, 'searchproduct'])->name('catalog-product-search');
});