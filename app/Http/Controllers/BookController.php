<?php

namespace App\Http\Controllers;

use App\Models\Book;
use App\Models\Apartment;
use Illuminate\Http\Request;
use App\Http\Requests\BookRequest;

class BookController extends Controller
{
    public function store(Request $request)
    {
        $apartment = Apartment::find($request->input('apartment_id'));
       
        $checkInDate = new \DateTime($request->input('checkInDate'));
        $checkOutDate = new \DateTime($request->input('checkOutDate'));

        $interval = $checkInDate->diff($checkOutDate);
        $numberOfDays = $interval->days;

        $totalPrice = $apartment->price_per_night * $numberOfDays;

        $bookings = new Book();

        $bookings->apartment_id = $apartment->id;
        $bookings->check_in_date =$request->input('checkInDate');
        $bookings->check_out_date = $request->input('checkOutDate');
        $bookings->total_price = $totalPrice;
        $bookings->save();

        return response()->json($numberOfDays, 201);
    }
}
