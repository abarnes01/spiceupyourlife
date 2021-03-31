<!doctype html>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<html lang="en">

<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    
    <style>
        .btn {
          background-color: rgb(255, 255, 255);
          border: none;
          color: rgb(2, 0, 102);
          padding: 12px 16px;
          font-size: 16px;
          cursor: pointer;
        }
        
        /* Darker background on mouse-over */
        .btn:hover {
          background-color: rgb(73, 78, 94);
        }
        </style>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">

    <style>
        * {margin: 0;padding: 0;font-family: monospace;box-sizing: border-box;}
        .recipes-title{text-align: center;align-content: center;}
        .nav {position: fixed;width: 60px;height: 100%;background: #fff;transition: 0.5s;opacity: 0.8}
        .nav:hover {width: 300px;opacity: 1;background: lightgrey;}
        .nav ul {position: absolute;top: 0;left: 0;width: 100%;}
        .nav ul li {position: relative;width: 100%;list-style: none;}
        .nav ul li:hover{background: white;}
        .nav ul li a {position: relative;display: none;width: 100%;display: flex;text-decoration: none;color: black;}
        .nav ul li a .icon {position: relative;display: block;min-width: 60px; height: 60px;line-height: 60px; text-align: center;}
        .nav ul li a .icon .fa {font-size: 24px;}
        .nav ul li a .title{position: relative;padding: 10px; height: 60px;line-height: 60px;text-align: start;white-space: nowrap;}
    </style>
    <script>
    function open() {
        document.getElementById("navbar").style.display = "block";
    }
    
    function close() {
        document.getElementById("navbar").style.display = "none";
    }
    </script>
    
    <title>Spice Up Your Life</title>
	
	
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
  font-family: "Lato", serif;
  transition: background-color .5s;
}

.sidenav {
  height: 100%;
  width: 0;
  position: fixed;
  z-index: 1;
  top: 0;
  left: 0;
  background-color: #111;
  overflow-x: hidden;
  transition: 0.5s;
  padding-top: 60px;
}

.sidenav a {
  padding: 8px 8px 8px 32px;
  text-decoration: none;
  font-size: 25px;
  color: #818181;
  display: block;
  transition: 0.3s;
}

.sidenav a:hover {
  color: #f1f1f1;
}

.sidenav .closebtn {
  position: absolute;
  top: 0;
  right: 25px;
  font-size: 36px;
  margin-left: 50px;
}

#main {
  transition: margin-left .5s;
  padding: 16px;
}

@media screen and (max-height: 450px) {
  .sidenav {padding-top: 15px;}
  .sidenav a {font-size: 18px;}
}
</style>
	<script>
function openNav() {
  document.getElementById("mySidenav").style.width = "300px";
  document.getElementById("main").style.marginLeft = "250px";
  document.body.style.backgroundColor = "white";
}

function closeNav() {
  document.getElementById("mySidenav").style.width = "0";
  document.getElementById("main").style.marginLeft= "0";
  document.body.style.backgroundColor = "white";
}
</script>
</head>
<div id="main">
<body>
   
    <div id="mySidenav" class="sidenav">
        <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
        <a href="/index.html">Home</a>
        <a href="/spices_list.html">Spices</a>
        <a href="/recipe_list.html">Recipes</a>
        <a href="/login">Sign in</a>
        <a href="/register">Register</a>
        <a href="/index.html#contact">Contact</a>
       
</div>

      <div class="top-menu" style="align-content: center;text-align: center;">
<div class="login" style="font-serif: monospace;float: right;display: inline;opacity: 0.7;padding-top: 10px;cursor: pointer;font-size: 30px;padding-right: 10px;"><a href="/checkout" style="text-decoration-line: none;color: blue;"><i class="fa fa-shopping-cart" aria-hidden="true"></i></a></div>
<div class="Menu" style="font-serif: monospace;float: left;display: inline;opacity: 0.7;padding-top: 10px;cursor: pointer;font-size: 30px;padding-right: 10px;"><span onclick="openNav()"><button class="btn"><i class="fa fa-bars"></i></button></span>
</div>

 <body>
	 
<div class="information">
	<h1>Cayenne Pepper</h1>
	<h2 style="color: grey">Weight</h2>
	<p style="color: gray">Cayenne peppers are a group of tapering, 10 to 25 cm long, generally skinny, mostly red-colored peppers, often with a curved tip and somewhat rippled skin, which hang from the bush as opposed to growing upright.</p>
	<div class="form">
	<label for="quantity"><h3>Quantity: ${param.quantity}</h3></label>
	<form action = "cayenne-pepper" method="get">
	Change to: <select name="quantity" id="quantity">
  <option value="${param.quantity}"></option>
  <option value="1">1</option>
  <option value="2">2</option>
  <option value="3">3</option>
  <option value="4">4</option>
  <option value="5">5</option>
  <option value="6">6</option>
  <option value="7">7</option>
  <option value="8">8</option>
  <option value="9">9</option>
  <option value="10">10</option>
	</select>
	
	<label for="type"><h3>Type: ${type}</h3></label>

	Change to: <select name="type" id="type">
  <option value="${param.type}"></option>
  <option value="1">Jar(30g)</option>
  <option value="1.5">Packet(100g)</option>

	</select>
	
	<br>
	<br>
	<br>
	<br>
	<h2>Price: ${price}
	<button type="submit">&#128472</button></form></h2>
	<br>
	<br>
		





	</div>
	<div class="cart">
		<button type="button" onclick="alert('Item added to cart')">Add item to cart</button>
	</div>	
	
</div>
	
	<div class="product">
		<div class="image"><img src="https://post.healthline.com/wp-content/uploads/2020/09/benefits-cayenne-pepper-732x549-thumbnail-732x549.jpg" style="width: 80%; height: 80%; float: left;margin-left: 5px;"></div>	 
	</div>
	

<style>
	.product {
		float: left;
		margin-top: 60px;
		top: 0px;
	}
	.information {
		float: right;
		background: rd;
		width: 500px;
		height: 500px;
		margin-right: 600px;
		margin-top: 60px;
	
	}
	.form{
		margin-top: 50px;
	}
	.cart {
		margin-top: 20px;
	}
</style>
		  
</body>
</html>

