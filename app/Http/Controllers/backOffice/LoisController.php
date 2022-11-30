<?php

namespace App\Http\Controllers\backOffice;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Kreait\Firebase\Contract\Database;

class LoisController extends Controller
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
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $laws = $this->database->getReference('laws')->getValue();
        // dd($laws);
        return view('loi.index',compact('laws'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('loi.add');
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
        $table_name = 'laws';
        $postData = [
            'fchapitre' => $request->chapitre,
            'fnumero' => $request->numero,
            'fcontenu' => $request->contenu
        ];
        $postRef = $this->database->getReference($table_name)->push($postData);
        if($postRef)
        {
            return redirect()->route('lois.index');
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
        $law = $this->database->getReference('laws')->getChild($id)->getValue();
        // dd($law);
        return view('loi.edit', compact('law', 'id'));
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
            'fchapitre' => $request->chapitre,
            'fnumero' => $request->numero,
            'fcontenu' => $request->contenu
        ];
        $this->database->getReference('laws/'.$id)->update($updateData);

        return redirect()->route('lois.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $this->database->getReference('laws/'.$id)->remove();

        return redirect()->route('lois.index');
    }
}
