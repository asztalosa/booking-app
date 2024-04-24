<?php

namespace App\Http\Controllers;

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
}
