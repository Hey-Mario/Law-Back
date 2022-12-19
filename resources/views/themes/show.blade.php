@extends('blank')
@section('page-title', "Types dans $theme->nom")
@section('main-content')
<div class="container">
    <a href="{{route('theme.create', $theme->id)}}" class="btn btn-primary">Ajouter</a>
    <a href="{{route('theme.index')}}" class="btn btn-success">Retour</a><br><br>
    <div class="row">
    @foreach ($infos as $info)
    
        <div class="col-md-4">
          <div class="card border-success mb-3" style="max-width: 18rem; height:90%">
            <div class="card-header"><h5>{{$info->titreType}} {{$info->numeroType}}</h5></div>
            <div class="card-body text-success">
              <p class="card-text">Type : {{$info->type->nom}}</p>
              <a href="{{route('info.show', $info->id)}}" class="btn btn-success">Voir les contenu</a>
              <a href="{{route('info.edit',$info->id)}}" class="btn btn-warning">Modifier</a>
            </div>
          </div>
        </div>
      
    @endforeach 
    <div class="row"> 
  </div>
@endsection