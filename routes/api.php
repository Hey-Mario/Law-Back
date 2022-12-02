<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\mobile\FauneFloreController;
use App\Http\Controllers\backOffice\api\TypeController;
use App\Http\Controllers\backOffice\api\ThemeController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});
Route::apiResource('fauneflore',FauneFloreController::class);
Route::get('listes/{theme_id}/types',[ThemeController::class,'index']);
Route::get('listes/{theme_id}/{type_id}',[TypeController::class,'index']);