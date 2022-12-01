<?php

namespace App\Http\Controllers\mobile;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Kreait\Firebase\Contract\Database;

class FauneFloreController extends Controller
{
    public function __construct(Database $database)
    {
        $this->database = $database;
        $this->tablename = 'fauneFlore';
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $listes = $this->database->getReference($this->tablename)->getValue();
        $data = [];
        $i = 1;
        foreach($listes as $key => $item){
            $data[] = [
                 $i => [
                     'idFirebase' => $key,
                     'annee' => $item['annee'],
                     'ministere' => $item['ministere'],
                     'note' => $item['note'],
                     'numero' => $item['numero'],
                     'objet' => $item['objet'],
                     'type' => $item['type'],
                 ]
            ]; 
            $i++;
         }
         return $data;
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
        $law = $this->database->getReference($this->tablename)->getChild($id)->getValue();
        return $law;
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
