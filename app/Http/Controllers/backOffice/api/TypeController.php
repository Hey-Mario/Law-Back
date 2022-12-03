<?php

namespace App\Http\Controllers\backOffice\api;

use App\Models\Type;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Contenu;
use App\Models\Info;

class TypeController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index($type_id, $theme_id)
    {
        // $selecType = Type::where('type_id', $type_id)->first();
        // $infos = $selecType->infos;
        // $data = [];
        // foreach($infos as $info){
        //     if($info->theme_id == $theme_id) {
        //         $data[$info->theme][] = [
        //             'id' => $info->id,
        //             'numero' => $info->numeroType,
        //             'texte' => $info->titreType,
        //             'type' => $info->type->nom,
        //         ];
        //     }
        // }
        // return $data;
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
    public function store(Request $request, $theme_id)
    {
        if(!is_null($request)){
            Info::create([
                'titreType' => $request->texte,
                'titreTypeMg' => $request->texteMg,
                'numeroType' => $request->numero,
                'theme_id' => (int)$theme_id,
                'type_id' => (int)$request->type_id,
            ]);
        }
        return response()->json(['success' => 1]);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id_selec c est l id de type selectionner par l utilisateur
     * @return \Illuminate\Http\Response
     */
    public function show($id_selec)
    {
        $contents = Contenu::where('info_id',$id_selec)->get();
        return $contents;
    }
    public function shw($id)
    {
        $contents = Info::where('id',$id)->first();
        return $contents;
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
        $info = Info::where('id', $id)->first();
        $info->update([
            'titreType' => $request->texte,
            'titreTypeMg' => $request->texteMg,
            'numeroType' => $request->numero,
        ]);
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
