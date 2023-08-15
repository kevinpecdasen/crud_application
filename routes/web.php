<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Authentication\LoginController;
use App\Http\Controllers\Authentication\RegisterController;
use App\Http\Controllers\StoreController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/


Route::middleware(['guest'])->group(function () {
    Route::get('/', [LoginController::class, 'showLoginForm']);
    Route::get('/login', [LoginController::class, 'showLoginForm'])->name('login');
    Route::post('/login', [LoginController::class, 'login']);
    Route::get('/register', [RegisterController::class, 'showRegistrationForm'])->name('register');
    Route::post('/register', [RegisterController::class, 'register']);
});


Route::middleware(['auth'])->group(function () {
    Route::get('/logout', [LoginController::class, 'logout']);
    Route::get('/stores', [StoreController::class, 'index']);

    Route::get('/showEditStore/{id}', [StoreController::class, 'showEditStore']);
    Route::get('/showAddStore', [StoreController::class, 'showAddStore']);

    Route::post('/editStore/{id}', [StoreController::class, 'editStore'])->name('editStore');
    Route::post('/addStore', [StoreController::class, 'addStore']);

    Route::get('/deleteStore/{id}', [StoreController::class, 'deleteStore']);
});

