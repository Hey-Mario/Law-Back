@extends('blank')
@section('page-title', "Ajout d une loi")
@section('main-content')
    <form action="{{route('theme.store', $theme_id)}}" method="post">
        @csrf
        <div class="row">
            <div class="col-md-4">
                <label for="nom" class="form-label">Titre</label>
                <input type="text" class="form-control" id="nom" name="titreType" required">
                @error('titreType')
                <div class="text-danger">
                    {{$errors->first('titreType')}}
                </div>    
                @enderror  
            </div>
            <div class="col-md-4">
                <label for="email" class="form-label">Numero</label>
                <input type="text" class="form-control" id="email" name="numeroType" required"><br>
                @error('numeroType')
                <div class="text-danger">
                    {{$errors->first('numeroType')}}
                </div>    
                @enderror  
            </div>
            <div class="col-md-4">
                <div class="input-group mb-3" style="padding-top: 30px">
                    <div class="input-group-prepend">
                    <label class="input-group-text" for="inputGroupSelect01">Type</label>
                    </div>
                    <select class="custom-select" name = "type_id" id="inputGroupSelect01">
                    @foreach ($types as $type)
                        <option value="{{$type->id}}">{{$type->nom}}</option>
                    @endforeach
                    </select>
                </div>
            </div>

            <div class="col-md-5"></div>
            <div class="col-md-5">
                <button type="submit" class="btn btn-success">Ajouter</button>
            </div>

        </div>
    </form>
@endsection