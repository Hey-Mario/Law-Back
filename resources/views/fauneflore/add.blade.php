<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
    <form action="{{route("env.store")}}" method="post">
        @csrf
        <h2>Annee  :</h2> <input type="text" name="annee">
        <h2>Type  :</h2> <input type="text" name="type">
        <h2>Numero Texte  :</h2> <input type="text" name="numero"><br>
        <h2>Objet :</h2> <input type="text" name="objet"><br>
        <h2>Note :</h2> <input type="text" name="note"><br>
        <h2>Ministere(s) :</h2> <input type="text" name="ministere"><br>
        <input type="submit" value="Add">
    </form>
</body>
</html>