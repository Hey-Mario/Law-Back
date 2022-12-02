<?php

namespace App\Http\Controllers;

use App\Models\Avie;
use Illuminate\Http\Request;

class AvieController extends Controller
{
    public function store(Request $request)
    {
        Avie::create([
            'nom' => $request->nom,
            'email' => $request->email,
            'description' => $request->description,
        ]);
    }
}
