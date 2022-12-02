<?php

use App\Http\Controllers\backOffice\api\ContenuController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\mobile\FauneFloreController;
use App\Http\Controllers\backOffice\api\TypeController;
use App\Http\Controllers\backOffice\api\ThemeController;
use App\Http\Controllers\mobile\api\MgController;
use App\Http\Controllers\mobile\api\VfController;

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
// Route::get('listes/{theme_id}/{type_id}',[TypeController::class,'index']);
Route::post('create/{theme_id}/types',[TypeController::class,'store']);
Route::put('update/{theme_id}/{type_id}',[TypeController::class,'update']);
Route::get('listes/{id_selec}/contenu',[TypeController::class,'show']);
Route::post('create/{info_id}/contenu',[ContenuController::class,'create']);


//mobile 
Route::get('allInfo/vf',[VfController::class,'index']);
//https://699f-154-126-58-66.eu.ngrok.io/api/allInfo/vf or mg
Route::get('allInfo/mg',[MgController::class,'index']);