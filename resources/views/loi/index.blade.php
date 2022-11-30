@extends('layout')
@section('content')
<body>
    <h1>Liste Test</h1>
    <a class="btn btn-primary"href="{{route('lois.create')}}">Ajouter</a>
    <table class = "table table-bordered">
        <thead>
            <tr>
                <th>chapitre</th>
                <th>numero</th>
                <th>Contenu</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            
            @if(is_null($laws))
                <tr>
                    <td colspan="3">Pas de contenu</td>
                </tr>     
                       
            @else
                @foreach ($laws as $key => $item)
                    <tr>
                        <td>{{$item['fchapitre']}}</td>
                        <td>{{$item['fnumero']}}</td>
                        <td>{{$item['fcontenu']}}</td>
                        <td><a href="{{route('lois.edit', $key)}}" class="btn btn-warning">Edit</a></td>
                        <td>
                            <form action="{{route('lois.destroy', $key)}}" method="post">
                                @csrf
                                @method('DELETE')
                                <button class="btn btn-danger" type="submit">Delete</button>
                            </form>
                            {{-- <a href="{{route('lois.destroy', $key)}}" class="btn btn-danger">Delete</a> --}}
                        </td>
                    </tr>
                @endforeach
            @endif
        </tbody>
    </table>
</body>
@endsection