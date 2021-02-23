<?php

use App\Http\Controllers\PostController;
use Illuminate\Support\Facades\Route;


/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('statistics');
});

Auth::routes();
// Route::get('/','PostController@allPosts');
// Route::get('/show/{id}', 'PostController@showPost');
// Route::resource('/posts','PostController');
// Route::get('/admin','Auth\LoginController@showLoginForm');

// Route::get('/home', 'PostController@index')->name('home');

Route::get('/csharpe', 'ScrapingController@csharpe');
Route::get('/php', 'ScrapingController@php');
Route::get('/java', 'ScrapingController@java');
Route::get('/javascript', 'ScrapingController@javascript');
Route::get('/jquery', 'ScrapingController@jquery');
Route::get('/angular', 'ScrapingController@angular');
Route::get('/nodejs', 'ScrapingController@nodejs');
Route::get('/csss', 'ScrapingController@css');
