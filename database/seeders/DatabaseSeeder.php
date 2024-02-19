<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Transaction;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        // Transaction::factory(500)->create();
        // \App\Models\User::factory(10)->create();

        // \App\Models\User::factory()->create([
        //     'name' => 'Test User',
        //     'email' => 'test@example.com',
        // ]);

        $this->call([
            TransactionSeeder::class,
            StatusMasterSeeder::class,
            SectionMasterSeeder::class,
            ProductSeeder::class,
            OrderSeeder::class,
            DepartmentMasterSeeder::class,
            // Add more seeders as needed
        ]);
    }
}
