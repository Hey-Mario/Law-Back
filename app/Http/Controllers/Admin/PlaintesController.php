<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Plainte;
use Illuminate\Http\Request;

class PlaintesController extends Controller
{
    public function index()
    {
        $plaintes = Plainte::all();

        return view('plainte', compact('plaintes'));
    }
}
