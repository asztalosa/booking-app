<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Book extends Model
{
    use HasFactory;

    protected $table = 'bookings';

    protected $fillable = [
        'check_in_date',
        'check_out_date',
        'apartment_id',
        'total_price',
    ];

  

    protected $hidden = [
        'created_at',
        'updated_at',
    ];
}
