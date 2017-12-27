<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Contact extends Model
{
    protected $fillable = [
        'name', 'email', 'image'
    ];

    protected $hidden = [];

    protected $rules = [
        'g-recaptcha-response' => 'required|recaptcha',
    ];
}
