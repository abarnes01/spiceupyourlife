<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
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
  width: 180px;
  background-color: grey;
  color: #fff;
  text-align: center;
  border-radius: 6px;
  padding: 5px 0;
  
  /* Position the tooltip */
  position: absolute;
  z-index: 1;
  top: 100%;
  left: 50%;
  margin-left: -60px;
}

.tooltip:hover .tooltiptext {
  visibility: visible;
}
</style>

<style>
    .banner {
      background-image: linear-gradient(rgba(0, 0, 0, 0.0),rgba(0, 0, 0, 0.0)), url('http://static8.depositphotos.com/1177973/811/i/450/depositphotos_8119912-Notebook-for-recipes-and-spices-on-wooden-table.jpg');
      background-size: cover;
      height: 1500px;
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
    font-colour: rgb(12, 1, 1);
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



  </style>
  <body>

    
  <section class="banner">
   

<html lang="en">

    <head>
        


        <meta name="viewport" content="width=device-width, initial-scale=1">
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
  <a class="tooltip" href="index.html">Home
  	  <span class="tooltiptext">Go to Home Page</span></a>  	 
  <a class="tooltip" href="/login">Login
  	<span class="tooltiptext">Go to Login Page</span></a>
  <a class="tooltip" href="index.html#contact">Contact
  	  	<span class="tooltiptext">Contact Us</span></a>
 <a href="/checkout" style="font-family: monospace;float: right;display: inline;opacity: 0.7;padding-top: 10px;cursor: pointer;font-size: 30px;padding-right: 10px;text-decoration-line: none;color: blue;"><i class="fa fa-shopping-cart" aria-hidden="true"></i></a>
 <br>
</br>
 <br>
</br>
 <br>
</br>


</div>

       
               <meta charset="UTF-8">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        
        <style>
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
              background-color: rgb(195, 199, 211);
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
            <a href="index.html">Home</a>
            <a href="spices_list.html">Spices</a>
            <a href="recipe_list.html">Recipes</a>
            <a href="/login">Login</a>
            <a href="#contact">Contact</a>
           
          </div>
    
          <div class="top-menu" style="align-content: centre;text-align: centre;">
            <div class="title" style="font-family: monospace; font-size: 36px;display:inline;align-content: centre;text-align: centre;cursor: pointer;"><a href="index.html" style="text-decoration: none; color: black;opacity: 0.8;padding-top: 5px;">Checkout as guest</a></div>
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
<style> 
input[type=text] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  box-sizing: border-box;
}
</style>
        </head>



    <div style="float: left;width: 100%;text-align: center;padding-right: 10%; ">
      <form:form action="/addGuest" modelAttribute="newGuest" method="POST" class="guest-form" style="display: inline; color: black ">
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
            <form:input path="city"/><br>
            <form:errors path="city"/><br/>
            <form:label path="card_name">Name on card:</form:label>
          	<form:input path="card_name"/><br>
          	<form:errors path="card_name"/><br/>
          	<form:label path="card_number">Card number:</form:label>
          	<form:input path="card_number"/><br>
          	<form:errors path="card_number"/><br/>
          	<form:label path="expiry_date">Expiry date:</form:label>
          	<form:input path="expiry_date"/><br>
          	<form:errors path="expiry_date"/><br/>
          	<form:label path="security_code">Security code:</form:label>
          	<form:input path="security_code"/><br>
          	<form:errors path="security_code"/><br/>
            <input type="submit" style="height:30px;font-size:14px;font-weight=500; color: blue;"/><form:errors/>
        </form:form>

      <div><br></div>
  </div>
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



</html> 



