@extends('layout')
@section('content')
    <form action="{{route('read.stored')}}" method="post" enctype="multipart/form-data">
        @csrf
        <input type="file" name="pdf" id=""><br>
        <input type="submit" value="Lire">
    </form>
@endsection