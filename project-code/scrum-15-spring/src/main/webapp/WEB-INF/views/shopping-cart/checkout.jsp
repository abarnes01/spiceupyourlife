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
          <a href="/guest">Continue as guest</a>
          <a href="/register">Register</a>
          <a href="/login">Sign in</a>
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
                    <div class="title" style="font-family: monospace; font-size: 36px;display:inline;align-content: center;text-align: center;cursor: pointer;"><a href="" style="text-decoration: none; color: black;opacity: 0.8;padding-top: 5px;">Checkout</a></div>
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
      <form action="/action_page.php">
      
        <div class="row">
          <div class="col-50">
            <h3>Billing Address</h3>
            <form:form action="/addGuest" modelAttribute="newGuest" method="POST" class="guest-form" style="display:inline">
            <form:label path="first_name">First name:</form:label>
            <input type="text" id="first_name" name="firstname" placeholder="Bob">
            <form:label path="last_name">Last name:</form:label>
            <input type="text" id="last_name" name="firstname" placeholder="M. Donald">
            <form:label path="email">Email:</form:label>
            <input type="text" id="email" name="email" placeholder="bob@example.com">
            <form:label path="phone_number">Phone Number:</form:label>
            <input type="text" id="phone_number" name="phonenumber" placeholder="0783249742">
            <form:label path="street_name">Street name:</form:label>
            <input type="text" id="street_name" name="street_name" placeholder="10 Downing Street">
            <form:label path="city">City:</form:label>
            <input type="text" id="city" name="city" placeholder="London">
</form:form>
            <div class="row">
              <div class="col-50">
                <form:label path="country">Country:</form:label>
                <input type="text" id="country" name="Country" placeholder="England">
              </div>
              <div class="col-50">
                <form:label path="postcode">Post Code:</form:label>
                <input type="text" id="postcode" name="PostCode" placeholder="LDN 123">
              </div>
            </div>
          </div>

          <div class="col-50">
            <h3>Payment</h3>
            <label for="fname">Accepted Cards</label>
            <div class="icon-container">
              <i class="fa fa-cc-visa" style="color:navy;"></i>
              <i class="fa fa-cc-amex" style="color:blue;"></i>
              <i class="fa fa-cc-mastercard" style="color:red;"></i>
              <i class="fa fa-cc-discover" style="color:orange;"></i>
            </div>
            <label for="cname">Name on Card</label>
            <input type="text" id="cname" name="cardname" placeholder="Bob M. Donald">
            <label for="ccnum">Credit card number</label>
            <input type="text" id="ccnum" name="cardnumber" placeholder="1111-2222-3333-4444">
            <label for="expmonth">Exp Month</label>
            <input type="text" id="expmonth" name="expmonth" placeholder="September">
            <div class="row">
              <div class="col-50">
                <label for="expyear">Exp Year</label>
                <input type="text" id="expyear" name="expyear" placeholder="2022">
              </div>
              <div class="col-50">
                <label for="cvv">CVV</label>
                <input type="text" id="cvv" name="cvv" placeholder="352">
              </div>
            </div>
          </div>
          
        </div>
        <label>
          <input type="checkbox" checked="checked" name="sameadr"> Shipping address same as billing
        </label>
        <input type="submit" value="Continue to checkout" class="btn">
      </form>
    </div>
  </div>
  <div class="col-25">
    <div class="container">
        
      <h4>Cart <span class="price" style="color:black"><i class="fa fa-shopping-cart"></i> <b>4</b></span></h4>
      <p><a href="#">Tumeric</a> <span class="price">&#163;15</span></p>
      <p><a href="#">Chilli Powder</a> <span class="price">&#163;5</span></p>
      <p><a href="#">Spice 3</a> <span class="price">&#163;8</span></p>
      <p><a href="#">Spice 4</a> <span class="price">&#163;2</span></p>
      <hr>
      <p>Total <span class="price" style="color:black"><b>&#163;30</b></span></p>
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
