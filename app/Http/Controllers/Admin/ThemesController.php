<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Info;
use App\Models\Theme;
use App\Models\Type;
use Illuminate\Http\Request;

class ThemesController extends Controller
{
    public function index()
    {
        $themes = Theme::all();
        return view('themes.index', compact('themes'));
    }

    public function show($id)
    {
        $theme = Theme::findOrFail($id);
        $infos = $theme->infos;

        return view('themes.show',compact('infos', 'theme'));
    }

    public function create($id)
    {
        $theme_id = $id;
        $types = Type::all();

        return view('themes.create', compact('theme_id', 'types'));
    }

    public function store(Request $request, $theme_id)
    {
        Info::create([
            'titreType' => $request->titreType,
            'numeroType' =>$request->numeroType,
            'theme_id' => $theme_id,
            'type_id' =>$request->type_id,
        ]);

        return redirect()->route('theme.show',$theme_id);
    }
}
