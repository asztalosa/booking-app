<?php

namespace App\Http\Controllers;

use App\Models\Customer;
use Illuminate\Http\Request;

class CustomerController extends Controller
{
    
    public function getCustomers()
    {
        $customers = Customer::all();
        return response()->json(["customers" => $customers]);
    }


    public function getCustomerById($id)
    {
        $customer = Customer::find($id);
        $addresses= [];
        foreach ($customer->addresses as $address) {
            $address->customer;
            $addresses[] = $address;
        }
        return response()->json(["customer" => $customer]);
    }
}
