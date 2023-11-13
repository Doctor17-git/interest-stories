<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\StoryController;
use App\Http\Controllers\StoryPostController;
use Illuminate\Support\Facades\Auth;

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

/*
Route::get('/', function () {
    return view('welcome');
});
*/

Route::get('/', [StoryPostController::class, 'index']);

Route::get('/{storyPost}', [StoryPostController::class, 'show']);

Route::get('/story/admin', [StoryPostController::class, 'showAdmin'])->middleware('auth.very_basic');

Route::get('/story/admin/{storyPostAdmin}', [StoryPostController::class, 'showAdminPost']);

Route::get('/story/add', [StoryPostController::class, 'create']);

Route::post('post', [StoryPostController::class, 'storeNew']);

Route::post('pub', [StoryPostController::class, 'pub']);