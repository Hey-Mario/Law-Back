@extends('blank')
@section('page-title', "Modification du $info->titreType $info->numeroType")
@section('page-description')
        Veillez Remplir le formulaire <br>
        Pour en annuler Veillez selectionner <a class="btn btn-danger" href="{{route('theme.show',$info->theme_id)}}">Annuler</a>
@endsection
@section('main-content')
    <form action="{{route('info.update', $info->id)}}" method="post">
        @csrf
        @method('PUT')
        <div class="row">
            <div class="col-md-4">
                <label for="nom" class="form-label">Titre</label>
                <input type="text" class="form-control" id="nom" name="titreType" value="{{$info->titreType}}">
                @error('titreType')
                <div class="text-danger">
                    {{$errors->first('titreType')}}
                </div>    
                @enderror  
            </div>
            <div class="col-md-4">
                <label for="email" class="form-label">Numero</label>
                <input type="text" class="form-control" id="email" name="numeroType" value="{{$info->numeroType}}"><br>
                @error('numeroType')
                <div class="text-danger">
                    {{$errors->first('numeroType')}}
                </div>    
                @enderror  
            </div>
            <div class="col-md-4">
                <div class="input-group mb-3">
                    <div class="input-group-prepend">
                      <label class="input-group-text" for="inputGroupSelect01">Options</label>
                    </div>
                    <select class="custom-select" id="inputGroupSelect01">
                      <option selected>Choose...</option>
                      <option value="1">One</option>
                      <option value="2">Two</option>
                      <option value="3">Three</option>
                    </select>
                  </div>
            </div>

            <div class="col-md-5"></div>
            <div class="col-md-5">
                <button type="submit" class="btn btn-success">Mettre à jour</button>
            </div>
    
        </div>
    </form>
@endsection