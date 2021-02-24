<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
    <style type="text/css">
        * {margin: 0;padding: 0;font-family: monospace;box-sizing: border-box; color: black; font-weight: bold;}
        body {
          font-family: "Lato", monospace;
          transition: background-color .5s;
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
        .banner {
      		background-image: linear-gradient(rgba(0, 0, 0, 0.0),rgba(0, 0, 0, 0.0)), url('https://st2.depositphotos.com/1177973/6283/i/950/depositphotos_62835859-stock-photo-spices-with-recipe-book.jpg');
      		background-size: cover;
      		height: 600px;
      		width: 100%;
      		display: flex;
      		flex-direction: column;
      		justify-content: center;
      		align-items: center;
      		margin-bottom: 32px;
      		text-align: center;
      		color: white;
    	}
    	.banner > p {
      		color: white;
      		padding: 20px;
    	}

    	.banner h1 {
    		/* Text styles */
    		font-size: em;
    		font-colour: white;
    	}

    	.banner .search {
   			position: relative;
   			vertical-align: middle;
   			z-index: 2;
   		}
   		.banner .search input {
   			width: 100%;
   			height: 76px;
   			line-height: 76px;
   			border: transparent;
   			background: rgba(0, 0, 0, 0.2);
   			font-size: 27px;
   			padding: 5px 5px 5px 47px;
   			color: #fff;
   			position: relative;
   			border-radius: 0;
   		}
   		.banner .search button {
    		position: absolute;
    		top: 6px;
    		right: 6px;
    		color: #fff;
    		background: transparent;
    		font-size: 27px;
    		height: 65px;
    		line-height: 65px;
    		width: 68px;
    		padding: ;
    		border: 0;
    	}
    	.third{float:left; width:28%;height:100%;object-fit:cover;padding: 10px;}
    	.recipes-title{text-align: center;align-content: center;}
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
    
    <title>Spice Up Your Life</title>
</head>
    
<body>
	<div class="navbar">
		<a href="#Menu" style="font-family: monospace;float: left;display: inline;opacity: 0.7;padding-top: 10px;cursor: pointer;font-size: 30px;padding-right: 10px;"><span onclick="openNav()"><button class="btn"><i class="fa fa-bars"></i></button></span></a>
  		<a><span style="font-family:Papyrus">Spice Up Your Life</span></a>
  		<a href="#home">Home</a>
  		<a href="#news">News</a>
  		<a href="#contact">Contact</a>
 		<a href="/shopping-cart/form.jsp" style="font-family: monospace;float: right;display: inline;opacity: 0.7;padding-top: 10px;cursor: pointer;font-size: 30px;padding-right: 10px;text-decoration-line: none;color: blue;"><i class="fa fa-shopping-cart" aria-hidden="true"></i></a>
</div>

    <div id="mySidenav" class="sidenav">
            <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
            <a href="#">About</a>
            <a href="/index.html">Home</a>
            <a href="/spices_list.html">Spices</a>
            <a href="/recipe_list.html">Recipes</a>
            <a href="#">My account</a>
            <a href="#">Contact</a>
           
          </div>
        
    <div class="top-menu" style="align-content: center;text-align: center;">
            <div class="title" style="font-family: monospace; font-size: 36px;display:inline;align-content: center;text-align: center;cursor: pointer;"><a href="index.html" style="text-decoration: none; color: black;opacity: 0.8;padding-top: 5px;">Register</a></div>
        </div>
    <section class="banner">
    <div style="float: left;width: 100%;text-align: center;padding-right: 10%;">
        <form:form action="/addCustomer" modelAttribute="newAcc" method="POST" class="register-form" style="display: inline">
            <form:label path="first_name">First name:</form:label>
            <form:input path="first_name"/><br>
            <form:errors path="first_name"/><br/>
            <form:label path="last_name">Last name:</form:label>
            <form:input path="last_name"/><br>
            <form:errors path="last_name"/><br/>
            <form:label path="email">Email:</form:label>
            <form:input path="email"/><br>
            <form:errors path="email"/><br/>
            <form:label path="phone_number">Phone Number:</form:label>
            <form:input path="phone_number"/><br>
            <form:errors path="phone_number"/><br/>
            <form:label path="country">Country:</form:label>
            <form:input path="country"/><br>
            <form:errors path="country"/><br/>
            <form:label path="street_name">Street name:</form:label>
            <form:input path="street_name"/><br>
            <form:errors path="street_name"/><br/>
            <form:label path="postcode">Post Code:</form:label>
            <form:input path="postcode"/><br>
            <form:errors path="postcode"/><br/>
            <form:label path="city">City:</form:label>
            <form:input path="city"/>
            <form:errors path="city"/><br/>
            <form:label path="password">Password:</form:label>
            <form:input path="password"/>
            <form:errors path="password"/><br/><br>
            <input type="submit" style="height:30px;font-size:14px;font-weight=500;"/><form:errors/>
        </form:form>
        <div><br></div>
    </div>
        <hr style="width: 100%; border:0;border-top:1px solid #eee;margin:20px 0">
    </section>
</body>

</html>
