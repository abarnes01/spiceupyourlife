<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>

<style>
    /*//////////////////////////////////////////////////////////////////
    [ FONT ]*/
    
    @font-face {
      font-family: Poppins-Regular;
      src: url('../fonts/poppins/Poppins-Regular.ttf'); 
    }
    
    @font-face {
      font-family: Poppins-Medium;
      src: url('../fonts/poppins/Poppins-Medium.ttf'); 
    }
    
    @font-face {
      font-family: Poppins-Bold;
      src: url('../fonts/poppins/Poppins-Bold.ttf'); 
    }
    
    @font-face {
      font-family: Poppins-SemiBold;
      src: url('../fonts/poppins/Poppins-SemiBold.ttf'); 
    }
    
    @font-face {
      font-family: Montserrat-Bold;
      src: url('../fonts/montserrat/Montserrat-Bold.ttf'); 
    }
    
    
    /*//////////////////////////////////////////////////////////////////
    [ RESTYLE TAG ]*/
    
    * {
        margin: 0px; 
        padding: 0px; 
        box-sizing: border-box;
    }
    
    body, html {
        height: 100%;
        font-family: Poppins-Regular, sans-serif;
    }
    
    /*---------------------------------------------*/
    a {
        font-family: Poppins-Regular;
        font-size: 14px;
        line-height: 1.7;
        color: #666666;
        margin: 0px;
        transition: all 0.4s;
        -webkit-transition: all 0.4s;
      -o-transition: all 0.4s;
      -moz-transition: all 0.4s;
    }
    
    a:focus {
        outline: none !important;
    }
    
    a:hover {
        text-decoration: none;
      color: #333333;
    }
    
    /*---------------------------------------------*/
    h1,h2,h3,h4,h5,h6 {
        margin: 0px;
    }
    
    p {
        font-family: Poppins-Regular;
        font-size: 14px;
        line-height: 1.7;
        color: #666666;
        margin: 0px;
    }
    
    ul, li {
        margin: 0px;
        list-style-type: none;
    }
    
    
    /*---------------------------------------------*/
    input {
        outline: none;
        border: none;
    }
    
    textarea {
      outline: none;
      border: none;
    }
    
    textarea:focus, input:focus {
      border-color: transparent !important;
    }
    
    input::-webkit-input-placeholder { color: #999999;}
    input:-moz-placeholder { color: #999999;}
    input::-moz-placeholder { color: #999999;}
    input:-ms-input-placeholder { color: #999999;}
    
    textarea::-webkit-input-placeholder { color: #999999;}
    textarea:-moz-placeholder { color: #999999;}
    textarea::-moz-placeholder { color: #999999;}
    textarea:-ms-input-placeholder { color: #999999;}
    
    /*---------------------------------------------*/
    button {
        outline: none !important;
        border: none;
        background: transparent;
    }
    
    button:hover {
        cursor: pointer;
    }
    
    iframe {
        border: none !important;
    }
    
    /*//////////////////////////////////////////////////////////////////
    [ utility ]*/
    
    /*==================================================================
    [ Text ]*/
    .txt1 {
      font-family: Poppins-Regular;
      font-size: 13px;
      line-height: 1.4;
      color: #999999;
      text-align: center;
      width: 100%;
    }
    
    .txt2 {
      font-family: Poppins-Regular;
      font-size: 13px;
      line-height: 1.4;
      color: #00ad5f;
      text-align: center;
      width: 100%;
    }
    
    .txt3 {
      font-family: Poppins-Regular;
      font-size: 15px;
      line-height: 1.4;
      color: #00ad5f;
      text-transform: uppercase;
      text-align: center;
      width: 100%;
    }
    
    /*==================================================================
    [ Size ]*/
    .size1 {
      width: 355px;
      max-width: 100%;
    }
    
    .size2 {
      width: calc(100% - 43px);
    }
    
    
    /*//////////////////////////////////////////////////////////////////
    [ login ]*/
    
    .limiter {
      width: 100%;
      margin: 0 auto;
    }
    
    .container-login100 {
      width: 100%;  
      min-height: 100vh;
      display: -webkit-box;
      display: -webkit-flex;
      display: -moz-box;
      display: -ms-flexbox;
      display: flex;
      flex-wrap: wrap;
      justify-content: center;
      align-items: center;
      padding: 15px;
      background: #f2f2f2;
    }
    
    .wrap-login100 {
      width: 1170px;
      background: #fff;
      overflow: hidden;
      display: -webkit-box;
      display: -webkit-flex;
      display: -moz-box;
      display: -ms-flexbox;
      display: flex;
      flex-wrap: wrap;
      align-items: stretch;
      flex-direction: row-reverse;
    
    }
    
    /*==================================================================
    [ login more ]*/
    .login100-more {
      width: 50%;
      background-repeat: no-repeat;
      background-size: cover;
      background-position: center;
      position: relative;
      z-index: 1;
    }
    
    .login100-more::before {
      content: "";
      display: block;
      position: absolute;
      z-index: -1;
      width: 100%;
      height: 100%;
      top: 0;
      left: 0;
      background: rgba(0,0,0,0.3);
    }
    
    
    
    /*==================================================================
    [ Form ]*/
    
    .login100-form {
      width: 50%;
      display: -webkit-box;
      display: -webkit-flex;
      display: -moz-box;
      display: -ms-flexbox;
      display: flex;
      flex-wrap: wrap;
      padding: 303px 65px 40px 65px;
    }
    
    .login100-form-title {
      font-family: Poppins-Regular;
      font-size: 20px;
      color: #555555;
      line-height: 1.2;
      text-transform: uppercase;
      letter-spacing: 2px;
      text-align: center;
    
      width: 100%;
      display: block;
    }
    
    
    
    /*------------------------------------------------------------------
    [ Input ]*/
    
    .wrap-input100 {
      width: 100%;
      position: relative;
      border: 1px solid #e6e6e6;
    }
    
    .rs1-wrap-input100,
    .rs2-wrap-input100 {
      width: 50%;
    }
    
    .rs2-wrap-input100 {
      border-left: none;
    }
    
    
    .input100 {
      display: block;
      width: 100%;
      background: transparent;
      font-family: Poppins-Regular;
      font-size: 18px;
      color: #666666;
      line-height: 1.2;
      padding: 0 25px;
    }
    
    input.input100 {
      height: 55px;
    }
    
    /*---------------------------------------------*/
    
    .focus-input100 {
      position: absolute;
      display: block;
      width: calc(100% + 2px);
      height: calc(100% + 2px);
      top: -1px;
      left: -1px;
      pointer-events: none;
      border: 1px solid #00ad5f;
    
      visibility: hidden;
      opacity: 0;
    
      -webkit-transition: all 0.4s;
      -o-transition: all 0.4s;
      -moz-transition: all 0.4s;
      transition: all 0.4s;
    
      -webkit-transform: scaleX(1.1) scaleY(1.3);
      -moz-transform: scaleX(1.1) scaleY(1.3);
      -ms-transform: scaleX(1.1) scaleY(1.3);
      -o-transform: scaleX(1.1) scaleY(1.3);
      transform: scaleX(1.1) scaleY(1.3);
    }
    
    .input100:focus + .focus-input100 {
      visibility: visible;
      opacity: 1;
    
      -webkit-transform: scale(1);
      -moz-transform: scale(1);
      -ms-transform: scale(1);
      -o-transform: scale(1);
      transform: scale(1);
    }
    
    
    
    /*------------------------------------------------------------------
    [ Button ]*/
    .container-login100-form-btn {
      width: 100%;
      display: -webkit-box;
      display: -webkit-flex;
      display: -moz-box;
      display: -ms-flexbox;
      display: flex;
      flex-wrap: wrap;
      justify-content: center;
    }
    
    .login100-form-btn {
      display: -webkit-box;
      display: -webkit-flex;
      display: -moz-box;
      display: -ms-flexbox;
      display: flex;
      justify-content: center;
      align-items: center;
      padding: 0 20px;
      width: 80%;
      height: 50px;
      border-radius: 3px;
      background: #00ad5f;
    
      font-family: Montserrat-Bold;
      font-size: 12px;
      color: #fff;
      line-height: 1.2;
      text-transform: uppercase;
      letter-spacing: 1px;
    
      -webkit-transition: all 0.4s;
      -o-transition: all 0.4s;
      -moz-transition: all 0.4s;
      transition: all 0.4s;
    }
    
    .login100-form-btn:hover {
      background: #333333;
    }
    
    
    
    /*------------------------------------------------------------------
    [ Responsive ]*/
    
    @media (max-width: 992px) {
      .login100-form {
        width: 60%;
        padding-left: 30px;
        padding-right: 30px;
      }
    
      .login100-more {
        width: 40%;
      }
    }
    
    @media (max-width: 768px) {
      .login100-form {
        width: 100%;
      }
    
      .login100-more {
        width: 100%;
      }
    }
    
    @media (max-width: 576px) {
      .login100-form {
        padding-left: 15px;
        padding-right: 15px;
        padding-top: 150px;
      }
    
      .rs1-wrap-input100,
      .rs2-wrap-input100 {
        width: 100%;
      }
    
      .rs2-wrap-input100 {
        border-left: 1px solid #e6e6e6;
      }
    }
    
    
    /*------------------------------------------------------------------
    [ Alert validate ]*/
    
    .validate-input {
      position: relative;
    }
    
    .alert-validate::before {
      content: attr(data-validate);
      position: absolute;
      max-width: 70%;
      background-color: #fff;
      border: 1px solid #c80000;
      border-radius: 2px;
      padding: 4px 25px 4px 10px;
      top: 50%;
      -webkit-transform: translateY(-50%);
      -moz-transform: translateY(-50%);
      -ms-transform: translateY(-50%);
      -o-transform: translateY(-50%);
      transform: translateY(-50%);
      right: 12px;
      pointer-events: none;
    
      font-family: Poppins-Regular;
      color: #c80000;
      font-size: 13px;
      line-height: 1.4;
      text-align: left;
    
      visibility: hidden;
      opacity: 0;
    
      -webkit-transition: opacity 0.4s;
      -o-transition: opacity 0.4s;
      -moz-transition: opacity 0.4s;
      transition: opacity 0.4s;
    }
    
    .alert-validate::after {
      content: "\f12a";
      font-family: FontAwesome;
      display: block;
      position: absolute;
      color: #c80000;
      font-size: 16px;
      top: 50%;
      -webkit-transform: translateY(-50%);
      -moz-transform: translateY(-50%);
      -ms-transform: translateY(-50%);
      -o-transform: translateY(-50%);
      transform: translateY(-50%);
      right: 18px;
    }
    
    .alert-validate:hover:before {
      visibility: visible;
      opacity: 1;
    }
    
    @media (max-width: 992px) {
      .alert-validate::before {
        visibility: visible;
        opacity: 1;
      }
    }




</style>





















	<title>Login V17</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->
</head>
<body>

	
	<div class="limiter">
		<div class="container-login100">

      
			<div class="wrap-login100">
				<form class="login100-form validate-form" action="/checkLogin" method="post">

          <span class="login100-form-title p-b-34" style= "padding-top: 20%">

            
						Account Login
					</span>
  
					
					<div class="wrap-input100 rs1-wrap-input100 validate-input m-b-20" data-validate="Type email">
						<input id="first-name" class="input100" type="text" name="email" placeholder="Email">
						<span class="focus-input100"></span>
					</div>
					<div class="wrap-input100 rs2-wrap-input100 validate-input m-b-20" data-validate="Type password">
						<input class="input100" type="password" name="password" placeholder="Password">
						<span class="focus-input100"></span>
					</div>
					
					<div class="container-login100-form-btn">
						<button class="login100-form-btn">
							Sign in
						</button>
					</div>

					<a href="/standard" class="txt1">
							Register
					</a>
				</form>	
							
				<div class="login100-more" style="background-image: url('https://honestcooking.com/wp-content/uploads/2015/06/shutterstock_230510470.jpg');"></div>

			</div>
		</div>
	</div>
	<div id="dropDownSelect1"></div>

<style> 
select {
  width: 100%;
  padding: 16px 20px;
  border: none;
  border-radius: 4px;
  background-color: #f1f1f1;
}
</style>

<style>
.tooltip {
  position: relative;
  display: inline-block;
}

.tooltip .tooltiptext {
  visibility: hidden;
  width: 160px;
  background-color: grey;
  color: #fff;
  text-align: center;
  border-radius: 6px;
  padding: 5px 0;
  
  /* Position the tooltip */
  position: absolute;
  z-index: 1;
  top: -5px;
  left: 105%;
}

.tooltip:hover .tooltiptext {
  visibility: visible;
}
</style>
<html lang="en">
<head>
<title>Spice Up Your Life</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style type="text/css">
* {margin: 0;padding: 0;font-family: monospace;box-sizing: border-box;}
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
<body>

<div class="navbar">
  <a href="#Menu" style="font-family: monospace;float: left;display: inline;opacity: 0.7;padding-top: 10px;cursor: pointer;font-size: 30px;padding-right: 10px;"><span onclick="openNav()"><button class="btn"><i class="fa fa-bars"></i></button></span></a>
  <a><span style="font-family:Papyrus">Spice Up Your Life</span></a>
  <a class="tooltip" href="index.html">Home
  	  <span class="tooltiptext">Go to Home Page</span></a> 
  <a class="tooltip" href="/subchoice">Register
    <span class="tooltiptext">Sign me up!</span></a> 
  <a class="tooltip" href="index.html#contact">Contact
    	  <span class="tooltiptext">Contact Us</span></a> 
  
 <a href="/checkout" style="font-family: monospace;float: right;display: inline;opacity: 0.7;padding-top: 10px;cursor: pointer;font-size: 30px;padding-right: 10px;text-decoration-line: none;color: blue;"><i class="fa fa-shopping-cart" aria-hidden="true"></i></a>
 <br>
</br>
 <br>
</br>
 <br>
</br>
 <br>
</br>

</div>
        
</head>
<body>
    <div id="main">
       
            <div id="mySidenav" class="sidenav">
            <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
            <a href="index.html">Home</a>
            <a href="spices_list.html">Spices</a>
            <a href="recipe_list.html">Recipes</a>
            <a href="/subchoice">Register</a>
            <a href="index.html#contact">Contact</a>
               
          </div>
  	</div>
    
          
          

    
    </body>



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
</html>