<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Contenu;
use App\Models\Info;
use Illuminate\Http\Request;

class InfosController extends Controller
{
    public function edit($id)
    {
        $info = Info::findOrFail($id);

        return view('info.edit',compact('info'));

    }
    
    public function update(Request $request, $id)
    {
        $info = Info::findOrFail($id);

        $info->update([
            'titreType' => $request->titreType,
            'numeroType' => $request->numeroType
        ]);

        return redirect()->route('theme.show', $info->theme_id);
    }

    public function show($id)
    {
        $info_id = $id;
        $contenus = Contenu::where('info_id', $id)->get();

        return view('info.show', compact('contenus', 'info_id'));
    }

    public function create($info_id)
    {
        return view('info.create', compact('info_id'));
    }

    public function store(Request $request, $info_id)
    {
        Contenu::create([
            'numtitre' => $request->numtitre,
            'titre' => $request->titre,
            'titreMg' => $request->titreMg,
            'numChapitre' =>$request->numChapitre,
            'Chapitre' =>$request->Chapitre,
            'chapitreMg' =>$request->chapitreMg,
            'numSection' =>$request->numSection,
            'section' =>$request->section,
            'sectionMg' =>$request->sectionMg,
            'numArticle' =>$request->numArticle,
            'article' =>$request->article,
            'articleMg' =>$request->articleMg,
            'info_id' =>$info_id,
        ]);

        return redirect()->route('info.show', $info_id);
    }
}
