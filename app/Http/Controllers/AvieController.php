<?php

namespace App\Http\Controllers;

use App\Models\Avie;
use Illuminate\Http\Request;

class AvieController extends Controller
{
    public function store(Request $request)
    {
        // return response()->json(['test' => $request->all()]);
        Avie::create([
            'nom' => (string)$request->name,
            'email' => (string)$request->email,
            'description' => (string)$request->description,
        ]);

        return response()->json(['success' => 1]);
    }
    public function index()
    {
        $avies = Avie::all();
        return $avies;
    }
}
