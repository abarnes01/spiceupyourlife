<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>

<style>
    .banner {
      background-image: linear-gradient(rgba(0, 0, 0, 0.0),rgba(0, 0, 0, 0.0)), url('http://static8.depositphotos.com/1177973/811/i/450/depositphotos_8119912-Notebook-for-recipes-and-spices-on-wooden-table.jpg');
      background-size: cover;
      height: 700px;
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
  <a href="#home">Home</a>
  <a href="#news">News</a>
  <a href="#contact">Contact</a>
 <a href="/shopping-cart/form.jsp" style="font-family: monospace;float: right;display: inline;opacity: 0.7;padding-top: 10px;cursor: pointer;font-size: 30px;padding-right: 10px;text-decoration-line: none;color: blue;"><i class="fa fa-shopping-cart" aria-hidden="true"></i></a>

</div>

       
        <meta charset="UTF-8">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        
    <div class="top-menu" style="align-content: center;text-align: center;">
        <div class="title" style="font-size: 36px;display:inline;align-content: center;text-align: center;cursor: pointer;"><a href="index.html" style="text-decoration: none; color: black;opacity: 0.8;">Guest</a></div>
        <div class="login" style="font-family: monospace;float: right;display: inline;opacity: 0.7;padding-top: 10px;cursor: pointer;font-size: 30px;padding-right: 10px;"><a href="/shopping-cart/form.jsp" style="text-decoration-line: none;color: black;"><i class="fa fa-shopping-cart" aria-hidden="true"></i></a></div>
    </div>
    <div style="float: left;width: 100%;text-align: center;padding-right: 10%;">
        <form:form action="/addGuest" modelAttribute="newGuest" method="POST" class="guest-form" style="display: inline">
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
            <input type="submit" style="height:30px;font-size:14px;font-weight=500;"/><form:errors/>
        </form:form>
        <div><br></div>
    </div>
    
    <div style="width: 100%;text-align: center;align-content: center;">
        <button style="height: 30px;width: 100px;font-size: 14px;font-weight: 500;">Continue as guest</button>
    </div>
</html>
