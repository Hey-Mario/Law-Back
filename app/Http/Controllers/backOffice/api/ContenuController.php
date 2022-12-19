<?php

namespace App\Http\Controllers\backOffice\api;

use App\Http\Controllers\Controller;
use App\Models\Contenu;
use Illuminate\Http\Request;

class ContenuController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        
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
    public function store(Request $request, $info_id)
    {
        if(!is_null($request)){
            Contenu::create([
                'numtitre' => $request->numtitre,
                'titre' =>$request->titre,
                'titreMg' =>$request->titreMg,
                'numChapitre' =>$request->numChapitre,
                'chapitre' =>$request->chapitre,
                'chapitreMg' =>$request->chapitreMg,
                'numSection' =>$request->numSection,
                'section' =>$request->section,
                'sectionMg' =>$request->sectionMg,
                'numSousSection' =>$request->numSousSection,
                'sousSection' =>$request->sousSection,
                'sousSectionMg' =>$request->sousSectionMg,
                'numArticle' =>$request->numArticle,
                'article' =>$request->article,
                'articleMg' =>$request->articleMg,
                'info_id' =>$request->info_id,
            ]);
        }
        return response()->json(['sucess' => 1]);
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
        $contenu = Contenu::where('id',$id)->first();
        $contenu->update([
            'numtitre' => $request->numtitre,
            'titre' =>$request->titre,
            'titreMg' =>$request->titreMg,
            'numChapitre' =>$request->numChapitre,
            'chapitreMg' =>$request->chapitreMg,
            'numSection' =>$request->numSection,
            'section' =>$request->section,
            'sectionMg' =>$request->sectionMg,
            'numSousSection' =>$request->numSousSection,
            'sousSection' =>$request->sousSection,
            'sousSectionMg' =>$request->sousSectionMg,
            'numArticle' =>$request->numArticle,
            'article' =>$request->article,
            'articleMg' =>$request->articleMg,
            'info_id' =>$request->info_id,
        ]);

        return response()->json(['success' => 1]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $contenu = Contenu::findOrFail($id);
        $contenu->delete();
        return response()->json(['success' => 1]);
    }
}
