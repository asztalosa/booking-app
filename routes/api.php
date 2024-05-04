<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UserController;
use App\Http\Controllers\CustomerController;
use App\Http\Controllers\ApartmentsController;


Route::post('user/login', [UserController::class, 'login']);
Route::get('/users', [UserController::class, 'index'])->middleware('auth:sanctum');

Route::get('/apartments', [ApartmentsController::class, 'listAll']);
Route::get('/apartment/{id}', [ApartmentsController::class, 'getApartmentById'])->name('get-apartment');

Route::get('/customers', [CustomerController::class, 'getCustomers'])->middleware('auth:sanctum');
Route::get('/customer/{id}', [CustomerController::class, 'getCustomerById'])->middleware('auth:sanctum');