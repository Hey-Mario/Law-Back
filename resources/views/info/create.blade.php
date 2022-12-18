@extends('blank')
@section('page-title', "Ajout d un article")
@section('main-content')
    <form action="{{route('contenu.store', $info_id)}}" method="post">
        @csrf
        <div class="row">

            <div class="col-md-2">
                <label for="numtitre" class="form-label">Numero titre</label>
                <input type="number" class="form-control" id="numtitre" name="numtitre" ><br>
                @error('numtitre')
                <div class="text-danger">
                    {{$errors->first('numtitre')}}
                </div>    
                @enderror  
            </div>
            <div class="col-md-4">
                <label for="titre" class="form-label">Titre</label>
                <input type="text" class="form-control" id="titre" name="titre" ><br>
                @error('titre')
                <div class="text-danger">
                    {{$errors->first('titre')}}
                </div>    
                @enderror  
            </div>

            <div class="col-md-4">
                <label for="titreMg" class="form-label">Titre en Malagasy</label>
                <input type="text" class="form-control" id="titreMg" name="titreMg" ><br>
                @error('titreMg')
                <div class="text-danger">
                    {{$errors->first('titreMg')}}
                </div>    
                @enderror  
            </div>
            <div class="col-md-2"></div>

            <div class="col-md-2">
                <label for="numChapitre" class="form-label">Num Chapitre</label>
                <input type="number" class="form-control" id="numChapitre" name="numChapitre" ><br>
                @error('numChapitre')
                <div class="text-danger">
                    {{$errors->first('numChapitre')}}
                </div>    
                @enderror  
            </div>

            <div class="col-md-4">
                <label for="chapitre" class="form-label">Chapitre</label>
                <input type="text" class="form-control" id="chapitre" name="chapitre" ><br>
                @error('chapitre')
                <div class="text-danger">
                    {{$errors->first('chapitre')}}
                </div>    
                @enderror  
            </div>
            <div class="col-md-4">
                <label for="chapitreMg" class="form-label">Chapitre en Malagasy</label>
                <input type="text" class="form-control" id="chapitreMg" name="chapitreMg" ><br>
                @error('chapitreMg')
                <div class="text-danger">
                    {{$errors->first('chapitreMg')}}
                </div>    
                @enderror  
            </div>
            <div class="col-md-2"></div>


            <div class="col-md-2">
                <label for="numSection" class="form-label">Numero Section</label>
                <input type="number" class="form-control" id="numSection" name="numSection"><br>
                @error('numSection')
                <div class="text-danger">
                    {{$errors->first('numSection')}}
                </div>    
                @enderror  
            </div>

            <div class="col-md-4">
                <label for="section" class="form-label">Section</label>
                <input type="text" class="form-control" id="section" name="section"><br>
                @error('section')
                <div class="text-danger">
                    {{$errors->first('section')}}
                </div>    
                @enderror  
            </div>
            <div class="col-md-4">
                <label for="sectionMg" class="form-label">Section en Malagasy</label>
                <input type="text" class="form-control" id="sectionMg" name="sectionMg" ><br>
                @error('sectionMg')
                <div class="text-danger">
                    {{$errors->first('sectionMg')}}
                </div>    
                @enderror  
            </div>
            <div class="col-md-2"></div>

            <div class="col-md-2">
                <label for="numArticle" class="form-label">Numero Article</label>
                <input type="number" class="form-control" id="numArticle" name="numArticle"><br>
                @error('numArticle')
                <div class="text-danger">
                    {{$errors->first('numArticle')}}
                </div>    
                @enderror  
            </div>
            
            <div class="col-md-4">
                <label for="article" class="form-label">Article</label>
                <input type="text" class="form-control" id="article" name="article"><br>
                @error('article')
                <div class="text-danger">
                    {{$errors->first('article')}}
                </div>    
                @enderror  
            </div>
            <div class="col-md-4">
                <label for="articleMg" class="form-label">Article en Malagasy</label>
                <input type="text" class="form-control" id="articleMg" name="articleMg" ><br>
                @error('articleMg')
                <div class="text-danger">
                    {{$errors->first('articleMg')}}
                </div>    
                @enderror  
            </div>
            <div class="col-md-2"></div>

            <div class="col-md-5"></div>
            <div class="col-md-5">
                <button type="submit" class="btn btn-success">Ajouter</button>
            </div>

        </div>
    </form>
@endsection