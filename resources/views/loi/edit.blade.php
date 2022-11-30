@extends('layout')
@section('content')
    <form action="{{route('lois.update', $id)}}" method="post">
        @csrf
        @method('PUT')
        <h2>Chapitre  :</h2> <input type="text" name="chapitre" value="{{$law['fchapitre']}}">
        <h2>Article numero  :</h2> <input type="text" name="numero" value="{{$law['fnumero']}}">
        <h2>Contenu  :</h2> <input type="text" name="contenu" value="{{$law['fcontenu']}}"><br>
        <input type="submit" value="MAJ">
        <a href="{{route('lois.index')}}" class="btn btn-danger">Annuler</a>
    </form>
@endsection