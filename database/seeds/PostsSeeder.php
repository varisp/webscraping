<?php

use App\Post;
use Illuminate\Database\Seeder;
use Illuminate\Support\Str;

class PostsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Post::create([
            'title' => Str::random(254),
            'description' => Str::random(500)
        ], 50);
    }
}
