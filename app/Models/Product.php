<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Product extends Model
{
    use HasFactory,SoftDeletes;

    const DISCOUNT = 0;
    const IMAGE = 'https://fakeimg.pl/350x400/';

    protected $fillable =['name', 'sale_price', 'discount', 'image'];

    protected $attributes = [
        'discount' => self::DISCOUNT,
        'image' => self::IMAGE,
    ];

}
