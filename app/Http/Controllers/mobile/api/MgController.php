<?php

namespace App\Http\Controllers\mobile\api;

use App\Http\Controllers\Controller;
use App\Models\Contenu;
use App\Models\Info;
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
                'id' => is_null($contenu->articleMg) ?  null : $contenu->id,
                 'titre' => is_null($contenu->titreMg) ? null : 'Loha teny '.$contenu->numtitre ." ".$contenu->titreMg,
                 // 'numChapitre' => ,
                 'chapitre' => is_null($contenu->chapitreMg) ? null : 'Toko '.$contenu->numChapitre." ".$contenu->chapitreMg,
                 // 'numSection' => ,
                 'section' => is_null($contenu->sectionMg) ? null : 'Sokajy '.$contenu->numSection." ".$contenu->sectionMg,
                 'sousSection' => is_null($contenu->sousSectionMg) ? null : 'Sokajy ambany  '.$contenu->numSousSection." ".$contenu->sousSectionMg,
                 // 'numSousSection' => ,
                 'article' => is_null($contenu->articleMg) ?  null : 'Andininy '.$contenu->numArticle,
                 'contenu' => $contenu->articleMg,
         ];
     }  if($info->numeroType == '97/017'){
            $data[] = [
                'id' => $info->id,
                "intitule" => $info->type->nomMg. " no ".$info->numeroType." ".$info->titreTypeMg,
                'type' => [
                    'id' => $info->type->id,
                    'nom' => $info->type->nomMg,
                ],
                'theme' => [
                    'id' => $info->theme->id,
                    'nom' => $info->theme->nomMg,
                ],
                'contenu' => $contiens
            ];
        }
        }
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
