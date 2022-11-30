@extends('layout')
@section('content')
<body>
    <h1>Liste Test</h1>
    <a class="btn btn-primary"href="{{route('env.create')}}">Ajouter</a>
    <table class = "table table-bordered">
        <thead>
            <tr>
                <th>Annee</th>
                <th>Type</th>
                <th>Numero Texte</th>
                <th>Objet</th>
                <th>Note</th>
                <th>Ministere(s)</th>
            </tr>
        </thead>
        <tbody>
            
            @if(is_null($listes))
                <tr>
                    <td colspan="3">Pas de contenu</td>
                </tr>     
                       
            @else
                @foreach ($listes as $key => $item)
                    <tr>
                        <td>{{$item['annee']}}</td>
                        <td>{{$item['type']}}</td>
                        <td>{{$item['numero']}}</td>
                        <td>{{$item['objet']}}</td>
                        <td>{{$item['note']}}</td>
                        <td>{{$item['ministere']}}</td>
                        <td><a href="{{route('env.edit', $key)}}" class="btn btn-warning">Edit</a></td>
                        <td>
                            <form action="{{route('env.destroy', $key)}}" method="post">
                                @csrf
                                @method('DELETE')
                                <button class="btn btn-danger" type="submit">Delete</button>
                            </form>
                            {{-- <a href="{{route('env.destroy', $key)}}" class="btn btn-danger">Delete</a> --}}
                        </td>
                    </tr>
                @endforeach
            @endif
        </tbody>
    </table>
</body>
@endsection