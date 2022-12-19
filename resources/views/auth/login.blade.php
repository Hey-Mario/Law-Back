<!DOCTYPE html>
<html>
<head>
	<title>Loi&Lalana</title>
	<link rel="stylesheet" type="text/css" href="{{asset('css/login.css')}}">
	<link href="https://fonts.googleapis.com/css?family=Poppins:600&display=swap" rel="stylesheet">
	<script src="https://kit.fontawesome.com/a81368914c.js"></script>
	<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
	<img class="wave" src="{{Storage::url('wave.png')}}">
	<div class="container">
		<div class="img">
			<img  src="{{Storage::url('bg.svg')}}">
		</div>
		<div class="login-content">
			<form action="{{route('login')}}" method="POST">
				@csrf
				<img src="{{Storage::url('logo.jpg')}}">
				<h2 class="title">Bienvenue</h2>
           		<div class="input-div one">
           		   <div class="i">
           		   		<i class="fas fa-user"></i>
           		   </div>
           		   <div class="div">
           		   		<h5>email</h5>
           		   		<input name = "email" type="text" class="input">
                            @error('email')
                              <span class="invalid-feedback" role="alert">
                                  <strong>{{ $message }}</strong>
                              </span>
                            @enderror
           		   </div>
           		</div>
           		<div class="input-div pass">
           		   <div class="i"> 
           		    	<i class="fas fa-lock"></i>
           		   </div>
           		   <div class="div">
           		    	<h5>Mot de passe</h5>
           		    	<input name = "password" type="password" class="input">
                        @error('password')
                           <span class="invalid-feedback" role="alert">
                               <strong>{{ $message }}</strong>
                           </span>
                        @enderror
            	   </div>
            	</div>
            	<input type="submit" class="btn" value="Se connecter">
            </form>
        </div>
    </div>
    <script type="text/javascript" src="{{asset('js/app.js')}}"></script>
</body>
</html>