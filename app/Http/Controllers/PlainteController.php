<?php

namespace App\Http\Controllers;

use App\Models\Plainte;
use Illuminate\Http\Request;

class PlainteController extends Controller
{
    public function store(Request $request)
    {
        Plainte::create([
            'nom' => $request->name,
            'email' => $request->email,
            'description' => $request->description,
        ]);
    }
    public function index()
    {
        $plaintes = Plainte::all();
        return $plaintes;
    }
}
