<?php

namespace App\Http\Controllers;

use Inertia\Inertia;
use App\Models\Apartment;
use Illuminate\Http\Request;

class ApartmentsController extends Controller
{
    public function listAll()
    {
        $apartments = Apartment::all();
        return response()->json($apartments);
    }

    public function getApartmentById($id)
    {
        $apartment = Apartment::find($id);
        return response()->json($apartment);
    }

    public function show($id)
    {
        $apartment = Apartment::find($id);
        return Inertia::render('Apartment', [
            'apartment' => $apartment
        ]);
    }
}
