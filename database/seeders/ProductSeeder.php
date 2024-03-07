<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class ProductSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $products = [
            [
                'product_id' => 'P002',
                'status_master_id' => '1',
                'category_master_id' => '2',
                'price_master_id' => 100,
                'name' => 'Sample Product 2',
                'barcode' => '123456789',
                'is_sold' => 1,
                'size' => 'M',
                'rating' => 4,
                'wishlist' => 'Sample Wishlist',
                'lang' => 'en',
                'lang_id' => '1',
                'created_by' => 'admin',
                'updated_by' => 'admin',
            ],
            [
                'product_id' => 'P003',
                'status_master_id' => '1',
                'category_master_id' => '2',
                'price_master_id' => 100,
                'name' => 'Sample Product 3',
                'barcode' => '123456789',
                'is_sold' => 1,
                'size' => 'M',
                'rating' => 4,
                'wishlist' => 'Sample Wishlist',
                'lang' => 'en',
                'lang_id' => '1',
                'created_by' => 'admin',
                'updated_by' => 'admin',
            ],
            [
                'product_id' => 'P004',
                'status_master_id' => '1',
                'category_master_id' => '2',
                'price_master_id' => 100,
                'name' => 'Sample Product 4',
                'barcode' => '123456789',
                'is_sold' => 1,
                'size' => 'M',
                'rating' => 4,
                'wishlist' => 'Sample Wishlist',
                'lang' => 'en',
                'lang_id' => '1',
                'created_by' => 'admin',
                'updated_by' => 'admin',
            ],
        ];

        // Insert data into the products table
        DB::table('products')->insert($products);
    }

    
}
