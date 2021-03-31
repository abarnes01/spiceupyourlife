<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<style>
.fa {
  padding: 10px;
  font-size: 10px;
  width: 40px;
  text-align: center;
  text-decoration: none;
  margin: 5px 2px;
}

.fa:hover {
    opacity: 0.7;
}

.fa-facebook {
  background: #3B5998;
  color: white;
}

.fa-twitter {
  background: #55ACEE;
  color: white;
}


.fa-instagram {
  background: #125688;
  color: white;
}


</style>
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
<html>



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
      <span class="tooltiptext">Go to Login Page</span></a>
  <a class="tooltip" href="/spices_list.html">Recipes
    <span class="tooltiptext">All recipes</span></a>  
  <a class="tooltip" href="/updatedetails">My Account
    <span class="tooltiptext">My account details!</span></a>
  
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
            <a href="#contact">Contact</a>
            <a href="#about">About</a>
            <a href="/logout">Logout</a>
            <a href="/updatedetails">My Account</a>
            
           
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







<title>MiniStarterKitConfirmPage</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<style>
body {font-family: "monospace", monospace, monospace;}
h1, h2, h3, h4, h5, h6 {
  font-family: "Playfair Display";
  letter-spacing: 5px;
}
</style>
<body>




<!-- Page content -->
<div class="w3-content" style="max-width:1100px">

  <!-- About Section -->
  <div class="w3-row w3-padding-64" id="about">
      <br></br>
     <h1>Mini Starter Kit</h1>    
     <form:form action="/miniStarterKit" modelAttribute="miniStarterKit" method="post" class="delivery-address" style="display: inline; color: black">    
         <h1>Is this your delivery address?</h1>
         <p>${streetName}</p>
         <p>${city}</p>
         <p>${postcode}</p>
         <p>${country}</p>
         <p id="text2" style="display:block"> 	<br></br>
         <form:label path="spice">Choose 10g of a spice of your choice: (alongside 10g of chilli)</form:label>
         <form:select path="spice">
         <form:option value = "cayenne pepper">Cayenne pepper</form:option>
         <form:option value = "cardamon">Cardamon</form:option>
         <form:option value = "cinnamon">Cinnamon</form:option>
         <form:option value = "paparika">Paparika</form:option>
         <form:option value = "harissa powder">Harissa powder</form:option>
         <form:option value = "ginger">Ginger</form:option>
         <form:option value = "cloves">Cloves</form:option>
         </form:select>
         <input type="hidden" value="${mskId}" name="mskId" id="mskId"/>
         <input type="submit" value="confirm" style="height:30px;font-size:14px;font-weight=500; color: blue;"/>
 		</p>
     </form:form>
  </div>
</div>	
 <form:form action="/deliveryAddress" modelAttribute="miniStarterKit" method="POST" class="delivery-address" style="display: inline; color: black">
<label for="myCheck"> If this is not your address, tick here:</label>
<input type="checkbox" id="myCheck" onclick="myFunctionForSelectingForm()"> <br></br>
                <p id="text" style="display:none"> 	<br></br>			
 				<form:label path="spice">Choose 10g of a spice of your choice: (alongside 10g of chilli)</form:label>
     			<form:select path="spice">
     			<form:option value = "cayenne pepper">Cayenne pepper</form:option>
     			<form:option value = "cardamon">Cardamon</form:option>
     			<form:option value = "cinnamon">Cinnamon</form:option>
     			<form:option value = "paparika">Paparika</form:option>
     			<form:option value = "harissa powder">Harissa powder</form:option>
     			<form:option value = "ginger">Ginger</form:option>
     			<form:option value = "cloves">Cloves</form:option>
     			</form:select>
 				<form:label path="street_name">Street Name:</form:label>
                <form:input path="street_name"/><br>
                <form:errors path="street_name"/><br/><br></br><br></br>
                <form:label path="city">City:</form:label>
                <form:input path="city"/><br>
                <form:errors path="city"/><br/><br></br><br></br>
                <form:label path="postcode">Post Code:</form:label>
                <form:input path="postcode"/><br>
                <form:errors path="postcode"/><br/><br></br><br></br>
                <form:label path="country">Country:</form:label>
                <form:input path="country"/><br>
                <form:errors path="country"/><br/><br></br><br></br>
                <input type="hidden" value="${mskId}" name="mskId" id="mskId"/>
                <input type="submit" value="confirm" style="height:30px;font-size:14px;font-weight=500; color: blue;"/>
           </p> 
  
  	
  
  </form:form>
  
  <script>                               
					
					function myFunctionForSelectingForm() {
					  var checkBox = document.getElementById("myCheck");
					  var text = document.getElementById("text");
					  var text2 = document.getElementById("text2");
					  if (checkBox.checked == true){
					    text.style.display = "block";
					    text2.style.display = "none";
					  } else {
					     text.style.display = "none";
					     text2.style.display = "block"
					  }
					}
		</script>
  <hr>
  
  

  
  
<!-- End page content -->
</div>

<!-- Footer -->
<footer class="w3-center w3-light-grey w3-padding-32">
  <p>------Spice Up Your Life<a href="https://www.google.com" title="homepage" target="_blank" class="w3-hover-text-green">------</a></p>
</footer>


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
