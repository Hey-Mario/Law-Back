<?php

namespace App\Http\Controllers\backOffice;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Kreait\Firebase\Contract\Database;

class FauneFloreController extends Controller
{
    /**
     * __construct
     *
     * @param  mixed $database
     * @return void
     */
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
        // dd($laws);
        return view('fauneflore.index',compact('listes'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('fauneflore.add');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        // dd($request);
        $table_name = $this->tablename;
        $postData = [
            'annee' => $request->annee,
            'type' => $request->type,
            'numero' => $request->numero,
            'objet' => $request->objet,
            'note' => is_null($request->note) ? "" : $request->note,
            'ministere' => $request->ministere,
        ];
        $postRef = $this->database->getReference($table_name)->push($postData);
        if($postRef)
        {
            return redirect()->route('env.index');
        }
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
        $law = $this->database->getReference($this->tablename)->getChild($id)->getValue();
        // dd($law);
        return view('fauneflore.edit', compact('law', 'id'));
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
        // dd($request);
        $updateData = [
            'annee' => $request->annee,
            'type' => $request->type,
            'numero' => $request->numero,
            'objet' => $request->objet,
            'note' => $request->note,
            'ministere' => $request->ministere,
        ];
        $this->database->getReference($this->tablename.'/'.$id)->update($updateData);

        return redirect()->route('env.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $this->database->getReference($this->tablename.'/'.$id)->remove();

        return redirect()->route('env.index');
    }
}
