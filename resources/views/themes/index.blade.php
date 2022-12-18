@extends('blank')
@section('page-title', 'Liste des Theme')
@section('main-content')

  <div class="container">
    <div class="row">
    @foreach ($themes as $theme)
    
        <div class="col-md-4">
          <div class="card border-success mb-3" style="max-width: 18rem; height:90%">
            <div class="card-header"><h5>{{$theme->nom}}</h5></div>
            <div class="card-body text-success">
              
              <p class="card-text">{{count($theme->types)}} Contenu(s)</p>
              <a href="{{route('theme.show', $theme->id)}}" class="btn btn-success">Voir plus</a>
            </div>
          </div>
        </div>
      
    @endforeach 
    <div class="row"> 
  </div>

@endsection
    
