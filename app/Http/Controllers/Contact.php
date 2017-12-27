<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class Contact extends Controller
{
    private function index()
    {
        var_dump('I am in the index route');
    }

    private function store(Request $request)
    {
        var_dump($request);

        $inputs = $request->all();

        var_dump($inputs->name, $inputs->email, $inputs->message);

    }

}
