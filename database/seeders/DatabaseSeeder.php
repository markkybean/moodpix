<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        // \App\Models\User::factory(10)->create();

        for($i=0; $i<10; $i++){

            \App\Models\User::factory()->create([
                'name' => fake()->name(),
                'email' => fake()->email(),
                'password' => Hash::make('password')
            ]);
        }

        for($i=0; $i<5; $i++){

            \App\Models\Post::create([
                'content' => fake()->realText(),
                'user_id' => fake()->randomDigit() + 1,
            ]);
        }

       
    }
}
