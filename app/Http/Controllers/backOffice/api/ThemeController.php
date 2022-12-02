<?php

namespace App\Http\Controllers\backOffice\api;

use App\Models\Theme;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class ThemeController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index($theme_id)
    {
        $selecThem = Theme::where('id',$theme_id)->first();
        $types = $selecThem->types;
        $data = [];
        $datas = [];
            foreach($types as $type)
                foreach($type->infos as $info){
                    if($info->theme->id == $theme_id) {
                        $datas[$info->theme->nom][$info->id] = [
                            'id' => $info->id,
                            'numero' => $info->numeroType,
                            'texte' => $info->titreType,
                            'type' => $info->type->nom,
                        ];
                    }
                }
            foreach($datas as $key => $dat){
                foreach($dat as $da){
                    $data[$key][] = [
                        'id' => $da['id'],
                        'numero' => $da['numero'],
                        'texte' => $da['texte'],
                        'type' => $da['type'],
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
