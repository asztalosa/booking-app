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
}
