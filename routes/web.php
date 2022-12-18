<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Admin\AviesController;
use App\Http\Controllers\Admin\InfosController;
use App\Http\Controllers\Admin\ThemesController;
use App\Http\Controllers\Admin\PlaintesController;
use App\Http\Controllers\backOffice\LoisController;
use App\Http\Controllers\AuthentificationCOntroller;
use App\Http\Controllers\backOffice\ReadPdfController;
use App\Http\Controllers\backOffice\FauneFloreController;

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

// Route::get('/front-login', [AuthentificationCOntroller::class, 'loginShow']);
// Route::post('/store', [AuthentificationCOntroller::class, 'store'])->name('auth.store');
// Route::resource('lois',LoisController::class);
// Route::resource('env',FauneFloreController::class);
// Route::post('read/pdf',[ReadPdfController::class, 'store'])->name('read.stored');
// Route::resource('read',ReadPdfController::class);

Auth::routes();

// Route::get('/', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

Route::middleware('auth')->group(function () {
    Route::get('/', [ThemesController::class, 'index'])->name('theme.index');
    Route::get('/liste-theme/{id}/types/create', [ThemesController::class, 'create'])->name('theme.create');
    Route::get('/type/{info_id}/article/create', [InfosController::class, 'create'])->name('contenu.create');
    Route::get('/liste-theme/{id}/types', [ThemesController::class, 'show'])->name('theme.show');
    Route::get('/edit/{id}/info',[InfosController::class, 'edit'])->name('info.edit');
    Route::put('/edit/{id}/info',[InfosController::class, 'update'])->name('info.update');
    Route::get('/type/{id}/articles', [InfosController::class, 'show'])->name('info.show');
    Route::post('/storing/{theme_id}',[ThemesController::class,'store'])->name('theme.store');
    Route::post('/storing-article/{info_id}',[InfosController::class,'store'])->name('contenu.store');
    Route::get('/avie', [AviesController::class, 'index'])->name('avie.index');
    Route::get('/plainte', [PlaintesController::class, 'index'])->name('plainte.index');
});
