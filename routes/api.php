<?php

use App\Http\Controllers\Api\ProductController;
use App\Http\Controllers\Api\AuthController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the 'api' middleware group. Enjoy building your API!
|
*/

Route::ApiResource('products', ProductController::class);


Route::post('/login', [AuthController::class, 'login']);
//
//Route::middleware(['auth:sanctum'])->group(function () {
////    Route::get('/users', 'UserController@index');
//});
