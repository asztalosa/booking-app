<?php

use Inertia\Inertia;
use Illuminate\Support\Facades\Route;
use Illuminate\Foundation\Application;
use App\Http\Controllers\ProfileController;
use App\Http\Controllers\ApartmentsController;

Route::get('/', function () {
    return Inertia::render('Welcome', [
        'canLogin' => Route::has('login'),
        'canRegister' => Route::has('register'),
        'apartments' => [ApartmentsController::class, 'listAll'],
        'laravelVersion' => Application::VERSION,
        'phpVersion' => PHP_VERSION,
        'date' => date('Y')
    ]);
})->name('welcome');


Route::get('/dashboard', function () {
    return Inertia::render('Dashboard');
})->middleware(['auth', 'verified'])->name('dashboard');

Route::get('apartment/{id}', [ApartmentsController::class, 'getApartmentById'])->name('get-apartment');
Route::get('apartment-/{apartment}', [ApartmentsController::class, 'show'])->name('apartment.show');


Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
});

require __DIR__.'/auth.php';
