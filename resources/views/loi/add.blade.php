<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
    <form action="{{route("lois.store")}}" method="post">
        @csrf
        <h2>Chapitre  :</h2> <input type="text" name="chapitre">
        <h2>Article numero  :</h2> <input type="text" name="numero">
        <h2>Contenu  :</h2> <input type="text" name="contenu"><br>
        <input type="submit" value="Add">
    </form>
</body>
</html>