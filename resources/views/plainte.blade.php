@extends('blank')
@section('page-title', 'Plaintes')
@section('main-content')

  <div class="container">
    <div class="row">
    @foreach ($plaintes as $plainte)
    
        <div class="col-md-4">
          <div class="card border-success mb-3" style="max-width: 18rem; height:90%">
            <div class="card-header"><h5>{{$plainte->nom}} ||  {{$plainte->email}}</h5></div>
            <div class="card-body text-success">
              
              <p class="card-text">{{$plainte->description}}</p>

            </div>
          </div>
        </div>
      
    @endforeach 
    <div class="row"> 
  </div>

@endsection
    
