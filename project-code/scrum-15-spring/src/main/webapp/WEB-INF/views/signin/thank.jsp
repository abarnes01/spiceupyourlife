<!DOCTYPE html>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>

    <style>
        body {margin:0;}
        
        .navbar {
          overflow: hidden;
          background-color: rgb(255, 255, 255);
          position: fixed;
          top: 0;
          width: 100%;
        }
        
        .navbar a {
          float: left;
          display: block;
          color: #090181;
          text-align: center;
          padding: 14px 16px;
          text-decoration: none;
          font-size: 17px;
        }
        
        .navbar a:hover {
          background: #ddd;
          color: rgb(252, 252, 252);
        }
        
        .main {
          padding: 16px;
          margin-top: 30px;
          height: 1500px; /* Used in this example to enable scrolling */
        }

        <meta charset="UTF-8">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        .btn {
                      background-color: rgb(255, 255, 255);
                      border: none;
                      color: rgb(192, 87, 17);
                      padding: 12px 16px;
                      font-size: 16px;
                      cursor: pointer;
                    }
                    
                    /* Darker background on mouse-over */
                    .btn:hover {
                      background-color: rgb(202, 205, 214);
                    }

        </style>
        </head>
        <body>
        
        <div class="navbar">
          <a href="#Menu" style="font-family: monospace;float: left;display: inline;opacity: 0.7;padding-top: 10px;cursor: pointer;font-size: 30px;padding-right: 10px;"><span onclick="openNav()"><button class="btn"><i class="fa fa-bars"></i></button></span></a>
          <a><span style="font-family:Papyrus">Spice Up Your Life</span></a>
          <a href="/index.html">Home</a>
          <a href="/recipe_list.html">Recipes</a>
          <a href="/spices_list.html">Spices</a>
          <a href="/index.html#contact">Contact</a>

        </div>
              
<style>
.btn {
background-color: rgb(255, 255, 255);
border: none;
color: rgb(192, 87, 17);
padding: 12px 16px;
font-size: 16px;
ursor: pointer;
}
                    
                    /* Darker background on mouse-over */
                    .btn:hover {
                      background-color: rgb(202, 205, 214);
                    }
                    <style>
                <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
            
                <style>
                    * {margin: 0;padding: 0;font-family: monospace;box-sizing: border-box;}
                </style>
                
                <title>Spice Up Your Life</title>
            </head>
            <div id="main">
            <body>
               
                <div id="mySidenav" class="sidenav">
                    <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
                    <a href="/index.html">Home</a>
                    <a href="/spices_list.html">Spices</a>
                    <a href="/recipe_list.html">Recipes</a>
                    <a href="/register">Register</a>
                    <a href="/login">Sign in</a>
                    <a href="/index.html#contact">Contact</a>
                   
                  </div>
            
                  <div class="top-menu" style="align-content: center;text-align: center;">
                    <div class="title" style="font-family: monospace; font-size: 36px;display:inline;align-content: center;text-align: center;cursor: pointer;"><a href="" style="text-decoration: none; color: black;opacity: 0.8;padding-top: 5px;">We've received your order.</a></div>
                </div>
            </body>
        </div>

        <!--SIDENAV---->
            <head>
                
                <meta name="viewport" content="width=device-width, initial-scale=1">
                <style>
                body {
                  font-family: "Lato", monospace;
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
                </head>


<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body {
  font-family: Arial;
  font-size: 17px;
  padding: 8px;
}

* {
  box-sizing: border-box;
}

.row {
  display: -ms-flexbox; /* IE10 */
  display: flex;
  -ms-flex-wrap: wrap; /* IE10 */
  flex-wrap: wrap;
  margin: 0 -16px;
}

.col-25 {
  -ms-flex: 25%; /* IE10 */
  flex: 25%;
}

.col-50 {
  -ms-flex: 50%; /* IE10 */
  flex: 50%;
}

.col-75 {
  -ms-flex: 75%; /* IE10 */
  flex: 75%;
}

.col-25,
.col-50,
.col-75 {
  padding: 0 16px;
}

.container {
  background-color: #f2f2f2;
  padding: 5px 20px 15px 20px;
  border: 1px solid lightgrey;
  border-radius: 3px;
}

input[type=text] {
  width: 100%;
  margin-bottom: 20px;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 3px;
}

label {
  margin-bottom: 10px;
  display: block;
}

.icon-container {
  margin-bottom: 20px;
  padding: 7px 0;
  font-size: 24px;
}

.btn {
  background-color: rgb(22, 7, 163);
  color: white;
  padding: 12px;
  margin: 10px 0;
  border: none;
  width: 100%;
  border-radius: 3px;
  cursor: pointer;
  font-size: 17px;
}

.btn:hover {
  background-color: #0e02bd;
}

a {
  color: #2196F3;
}

hr {
  border: 1px solid lightgrey;
}

span.price {
  float: right;
  color: grey;
}

select {

  width: 100%;

  padding: 16px 20px;

  border: none;

  border-radius: 4px;

  background-color: #f1f1f1;

}
/*Reponsive bit */
/*Update the actual id of the fields later*/

@media (max-width: 800px) {
  .row {
    flex-direction: column-reverse;
  }
  .col-25 {
    margin-bottom: 20px;
  }
}
</style>
</head>
<body>

<head>
	<meta charset="utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title></title>
	<link href='https://fonts.googleapis.com/css?family=Lato:300,400|Montserrat:700' rel='stylesheet' type='text/css'>
	<style>
		@import url(//cdnjs.cloudflare.com/ajax/libs/normalize/3.0.1/normalize.min.css);
		@import url(//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css);
	</style>
	<link rel="stylesheet" href="https://2-22-4-dot-lead-pages.appspot.com/static/lp918/min/default_thank_you.css">
	<script src="https://2-22-4-dot-lead-pages.appspot.com/static/lp918/min/jquery-1.9.1.min.js"></script>
	<script src="https://2-22-4-dot-lead-pages.appspot.com/static/lp918/min/html5shiv.js"></script>
</head>
<body>
	<header class="site-header" id="header">
		<h1 class="site-header__title" data-lead-id="site-header-title">THANK YOU!</h1>
	</header>

	<div class="main-content">
		<i class="fa fa-check main-content__checkmark" id="checkmark"></i>
		<p class="main-content__body" data-lead-id="main-content-body">Thank you for the order. It means a lot to us, we really hope you love the spices just as much as we do. A confirmation email will be send to your email shortly.</p>
	</div>

	<footer class="site-footer" id="footer">
		<p class="site-footer__fineprint" id="fineprint">Copyright ©2014 | All Rights Reserved</p>
	</footer>
</body>



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
</body>


</body>
</html>
