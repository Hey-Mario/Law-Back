@extends('blank')
@section('page-title', 'Avies')
@section('main-content')

  <div class="container">
    <div class="row">
    @foreach ($avies as $avie)
    
        <div class="col-md-4">
          <div class="card border-success mb-3" style="max-width: 18rem; height:90%">
            <div class="card-header"><h5>{{$avie->nom}} ||  {{$avie->email}}</h5></div>
            <div class="card-body text-success">
              
              <p class="card-text">{{$avie->description}}</p>

            </div>
          </div>
        </div>
      
    @endforeach 
    <div class="row"> 
  </div>

@endsection
    
