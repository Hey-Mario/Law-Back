<?php

use App\Http\Controllers\backOffice\FauneFloreController;
use App\Http\Controllers\backOffice\LoisController;
use App\Http\Controllers\backOffice\ReadPdfController;
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
    return view('welcome');
});
Route::resource('lois',LoisController::class);
Route::resource('env',FauneFloreController::class);
Route::post('read/pdf',[ReadPdfController::class, 'store'])->name('read.stored');
Route::resource('read',ReadPdfController::class);
