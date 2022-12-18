<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Avie;
use Illuminate\Http\Request;

class AviesController extends Controller
{
    public function index()
    {
        $avies = Avie::all();
        return view('avie', compact('avies'));
    }
}
