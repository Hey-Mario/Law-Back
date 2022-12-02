<?php

namespace App\Http\Controllers\mobile\api;

use App\Models\Contenu;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Info;

class VfController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        // $contenus = Contenu::all();
        $infos = Info::all();
        $data = [];
        $contiens = [];
        foreach($infos as $info)
        {
            // $info->contenus;
            // $info->type;
            // $info->theme;
            foreach($info->contenus as $contenu)
        {
            $contiens[] = [
                    'titre' => is_null($contenu->numtitre) ? null : 'Titre '.$contenu->numtitre ." ".$contenu->titre,
                    // 'numChapitre' => ,
                    'chapitre' => is_null($contenu->numChapitre) ? null : 'Chapitre '.$contenu->numChapitre." ".$contenu->chapitre,
                    // 'numSection' => ,
                    'section' => is_null($contenu->numSection) ? null : 'Section '.$contenu->numSection." ".$contenu->section,
                    'sousSection' => is_null($contenu->numSousSection) ? null : 'Sous Section '.$contenu->numSousSection." ".$contenu->sousSection,
                    // 'numSousSection' => ,
                    'article' => 'Article '.$contenu->numArticle,
                    'contenu' => $contenu->article,
            ];
        }
            $data[] = [
                'id' => $info->id,
                "intitule" => $info->type->nom. " no ".$info->numeroType." ".$info->titreType,
                'type' => [
                    'id' => $info->type->id,
                    'nom' => $info->type->nom,
                ],
                'theme' => [
                    'id' => $info->theme->id,
                    'nom' => $info->theme->nom,
                ],
                'contenu' => $contiens
            ];
        }
        // return $infos;
        // foreach($contenus as $contenu)
        // {
        //     $data[$contenu->info->type->nom. "no ".$contenu->info->numeroType." ".$contenu->info->titreType][] = [
        //         'id' => $contenu->info->id,
        //         'themeId' => $contenu->info->theme->id,
        //         'theme' => $contenu->info->theme->nom,
        //         // 'numtitre' => ,
               
        //         'type' => $contenu->info->type->nom,
        //         "intitule" => $contenu->info->type->nom. "no ".$contenu->info->numeroType." ".$contenu->info->titreType,
        //         'typeId' => $contenu->info->type->id,
        //         "content" => [
        //             'titre' => is_null($contenu->numtitre) ? null : 'Titre'.$contenu->numtitre ." ".$contenu->titre,
        //             // 'numChapitre' => ,
        //             'chapitre' => is_null($contenu->numChapitre) ? null : 'Chapitre'.$contenu->numChapitre." ".$contenu->chapitre,
        //             // 'numSection' => ,
        //             'section' => is_null($contenu->numSection) ? null : 'Section'.$contenu->numSection." ".$contenu->section,
        //             'sousSection' => is_null($contenu->numSousSection) ? null : 'Sous Section'.$contenu->numSousSection." ".$contenu->sousSection,
        //             // 'numSousSection' => ,
        //             'article' => 'Article '.$contenu->numArticle,
        //             'contenu' => $contenu->article,
        //         ]
        //     ];
        // }
        return $data;
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
