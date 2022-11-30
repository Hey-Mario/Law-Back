@extends('layout')
@section('content')
    <form action="{{route('env.update', $id)}}" method="post">
        @csrf
        @method('PUT')
        <h2>Annee  :</h2> <input type="text" name="annee">
        <h2>Type  :</h2> <input type="text" name="type">
        <h2>Numero Texte  :</h2> <input type="text" name="numero"><br>
        <h2>Objet :</h2> <input type="text" name="objet"><br>
        <h2>Note :</h2> <input type="text" name="note"><br>
        <h2>Ministere(s) :</h2> <input type="text" name="ministere"><br>
        <input type="submit" value="MAJ">
        <a href="{{route('env.index')}}" class="btn btn-danger">Annuler</a>
    </form>
@endsection