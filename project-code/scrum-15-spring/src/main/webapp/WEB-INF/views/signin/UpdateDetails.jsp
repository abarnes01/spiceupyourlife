<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
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
                    <a href="/updatedetails">My Account</a>
                    <a href="/index.html#contact">Contact</a>
                   
                  </div>
            
                  <div class="top-menu" style="align-content: center;text-align: center;">
                    <div class="title" style="font-family: monospace; font-size: 36px;display:inline;align-content: center;text-align: center;cursor: pointer;"><a href="" style="text-decoration: none; color: black;opacity: 0.8;padding-top: 5px;">My Account</a></div>
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
.btnred {
  background-color: rgb(184, 19, 19);
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

<div class="row">
  <div class="col-75">
    <div class="container">
      
        <div class="row">
          <div class="col-50">
            <h3>My details</h3>
            <form:form action="/updatedetails" modelAttribute="post" method="POST" class="guest-form" style="display:inline">
            
            <form:label path="first_name">Your First name:</form:label>
            <form:input path="first_name" placeholder="Bob"/>
            <form:errors path="first_name"/>
            <form:label path="last_name">Your Last name:</form:label>
            <form:input path="last_name" placeholder="Smith"/>
            <form:errors path="last_name"/>
            <form:label path="email">Your Email:</form:label>
            <form:input path="email" placeholder="bob.smith@email.com"/>
            <form:errors path="email"/>
            <form:label path="phone_number">YourPhone Number:</form:label>
            <form:input path="phone_number" placeholder="0783249742"/>
            <form:errors path="phone_number"/>
            <form:label path="street_name">Your Street name:</form:label>
            <form:input path="street_name"  placeholder="10 Downing Street"/>
            <form:errors path="street_name"/>
            <form:label path="city">Your City:</form:label>
            <form:input path="city" placeholder="London"/>
            <form:errors path="city"/>
            <form:label path="country">Your Country:</form:label>
            <form:input path="country" name="Country" placeholder="England"/>
            <form:errors path="country"/>
            <form:label path="postcode">Your Post Code:</form:label>
           	<form:input path="postcode" placeholder="LDN 123"/>
            <form:errors path="postcode"/>
            
          </div>
            <form:label path="card_name">Your Name on card:</form:label>
            <form:input path="card_name" placeholder="Bob M. Donald"/>
            <form:errors path="card_name"/>
            <form:label path="card_number">Your Card number:</form:label>
            <form:input path="card_number" placeholder="1111-2222-3333-4444"/>
            <form:errors path="card_number"/>
            <form:label path="expiry_date">Your Expiry date:</form:label>
            <form:input path="expiry_date" placeholder="04/21"/>
            <form:errors path="expiry_date"/>
         	<form:label path="security_code">Your Security code</form:label>
            <form:input path="security_code" placeholder="352"/>
            <form:errors path="security_code"/>
            <input type="update" value="Update my details" class="btn"><br></br>
            <input type="delete" value="Delete my account" class="btnred onclick="myFunction()" >
            <script>
					function myFunctionForOptionalCard() {
					  var checkBox = document.getElementById("myCheck");
					  var text = document.getElementById("text");
					  if (checkBox.checked == true){
					    text.style.display = "block";
					  } else {
					     text.style.display = "none";
					  }
					}
					</script>
                
                
                
           <script>
               function myFunction() {
                  confirm("Redeem your FREE starter kit with a spice of your choice!");
                 }
           </script>

            
      </form:form>
     </div>
     </div>
    </div>
  </div>




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
