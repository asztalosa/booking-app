<?php

namespace App\Http\Controllers;

use App\Models\Book;
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

    public function show(Apartment $apartment)
    {
        return Inertia::render('Apartment', [
            'apartment' => $apartment
        ]);
    }

    public function checkAvailability($apartmentId)
    {
            $bookedDates = [];
            $bookings = Book::where('apartment_id', $apartmentId)->get();

            if(!$bookings->isEmpty()) {
                
        
            foreach ($bookings as $booking) {
                $checkInDate = new \DateTime($booking->check_in_date);
                $checkOutDate = new \DateTime($booking->check_out_date);

                $interval = $checkInDate->diff($checkOutDate);
                $numberOfDays = $interval->days;

                for ($i = 0; $i <= $numberOfDays; $i++) {
                    $bookedDates[] = $checkInDate->format('Y-m-d');
                    $checkInDate->modify("+1 day");
                }
            }
            $bookedDates = array_unique($bookedDates);
            return response()->json($bookedDates);

        } else {
            $bookedDates = array_unique($bookedDates);
            return response()->json($bookedDates);
        }
    }
}
