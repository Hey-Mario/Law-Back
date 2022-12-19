@extends('blank')
@section('page-title', "Les articles")
@section('main-content')
<div class="container">
    <a href="{{route('contenu.create', $info_id)}}" class="btn btn-primary">Ajouter</a>
    <a href="{{route('theme.index')}}" class="btn btn-success">Retour</a><br><br>
    <div class="row">
      @forelse ($contenus as $contenu)
        <div class="col-md-6">
          <div class="card border-success mb-3" style="max-width: 100%; height:95%">
            <div class="card-header"><h5>Article {{$contenu->numArticle}}</h5></div>
            <div class="card-body text-success">
                @if(!is_null($contenu->titre))
                  <p class="card-text">Titre {{$contenu->numtitre}} : {{$contenu->titre}}</p>
                @endif

                @if(!is_null($contenu->chapitre))
                  <p class="card-text">Chapitre {{$contenu->numChapitre}} : {{$contenu->chapitre}}</p>
                @endif

                @if(!is_null($contenu->section))
                  <p class="card-text">Section {{$contenu->numSection}} : {{$contenu->section}}</p>
                @endif

                <p class="card-text">Contenu : {{$contenu->article}}</p>
            </div>
          </div>
        </div>
      @empty
          <h2><em>Contenu vide</em></h2>
      @endforelse 
    </div>
@endsection