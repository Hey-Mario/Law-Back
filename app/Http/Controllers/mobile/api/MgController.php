<?php

namespace App\Http\Controllers\mobile\api;

use App\Http\Controllers\Controller;
use App\Models\Contenu;
use Illuminate\Http\Request;

class MgController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $contenus = Contenu::all();
        $data = [];
        foreach($contenus as $contenu)
        {
            $data[$contenu->info->theme->nom][] = [
                'id' => $contenu->id,
                'themeId' => $contenu->info->theme->id,
                'theme' => $contenu->info->theme->nom,
                // 'numtitre' => ,
                'titre' => is_null($contenu->numtitre) ? null : 'Titre'.$contenu->numtitre ." ".$contenu->titre,
                // 'numChapitre' => ,
                'chapitre' => is_null($contenu->numChapitre) ? null : 'Chapitre'.$contenu->numChapitre." ".$contenu->chapitre,
                // 'numSection' => ,
                'section' => is_null($contenu->numSection) ? null : 'Section'.$contenu->numSection." ".$contenu->section,
                'sousSection' => is_null($contenu->numSousSection) ? null : 'Sous Section'.$contenu->numSousSection." ".$contenu->sousSection,
                // 'numSousSection' => ,
                'article' => 'Article '.$contenu->numArticle,
                'contenu' => $contenu->article,
                'type' => $contenu->info->type->nom,
                'typeId' => $contenu->info->type->id,
            ];
        }
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
