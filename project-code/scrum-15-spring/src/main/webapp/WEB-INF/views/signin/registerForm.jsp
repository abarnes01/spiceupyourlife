<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
    <style>
        * {margin: 0;padding: 0;font-family: monospace;box-sizing: border-box;}
        .third{float:left; width:28%;height:100%;object-fit:cover;padding: 10px;}
        .recipes-title{text-align: center;align-content: center;}
        .nav {position: fixed;width: 60px;height: 100%;background: #fff;transition: 0.5s;opacity: 0.8}
        .nav:hover {width: 300px;opacity: 1;background: lightgrey;}
        .nav ul {position: absolute;top: 0;left: 0;width: 100%;}
        .nav ul li {position: relative;width: 100%;list-style: none;}
        .nav ul li:hover{background: grey;}
        .nav ul li a {position: relative;display: none;width: 100%;display: flex;text-decoration: none;color: black;}
        .nav ul li a .icon {position: relative;display: block;min-width: 60px; height: 60px;line-height: 60px; text-align: center;}
        .nav ul li a .icon .fa {font-size: 24px;}
        .nav ul li a .title{position: relative;display: padding:0 10px; height: 60px;line-height: 60px;text-align: start;white-space: nowrap;}
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
</head>
    
<body>
    <div class="nav" style="left:0px;">
        <ul>
            <li>
                <a href="#">
                    <span class="icon"><i class="fa fa-info" aria-hidden="true"></i></span>
                    <span class="title">About</span>
                </a>
            </li>
            <li>
                <a href="#">
                    <span class="icon"><i class="fa fa-fire" aria-hidden="true"></i></span>
                    <span class="title">Spices</span>
                </a>
            </li>
            <li>
                <a href="#">
                    <span class="icon"><i class="fa fa-cutlery" aria-hidden="true"></i></span>
                    <span class="title">Recipes</span>
                </a>
            </li>
            <li>
                <a href="#">
                    <span class="icon"><i class="fa fa-sign-in" aria-hidden="true"></i></span>
                    <span class="title">Register</span>
                </a>
            </li>
            <li>
                <a href="#">
                    <span class="icon"><i class="fa fa-phone" aria-hidden="true"></i></span>
                    <span class="title">Contact</span>
                </a>
            </li>
        </ul>
    </div>
        
    <div class="top-menu" style="align-content: center;text-align: center;">
        <div class="title" style="font-size: 36px;display:inline;align-content: center;text-align: center;cursor: pointer;"><a href="index.html" style="text-decoration: none; color: black;opacity: 0.8;">Register</a></div>
        <div class="login" style="font-family: monospace;float: right;display: inline;opacity: 0.7;padding-top: 10px;cursor: pointer;font-size: 30px;padding-right: 10px;"><a href="/shopping-cart/form.jsp" style="text-decoration-line: none;color: black;"><i class="fa fa-shopping-cart" aria-hidden="true"></i></a></div>
    </div>
    <div style="float: left;width: 100%;text-align: center;padding-right: 10%;">
        <form class="register-form" style="display: inline">
            <label for="rEmail" style="padding-right: 9.6%;">Email:</label>
            <input type="text" id="first_name" name="first_name"><br>
            <label for="first_name" style="padding-right: 3.5%;">First name:</label>
            <input type="text" id="first_name" name="first_name"><br>
            <label for="last_name" style="padding-right: 4.8%;">Last name:</label>
            <input type="text" id="last_name" name="last_name"><br>
            <label for="phone_number" style="padding-right: 1%;">Phone Number:</label>
            <input type="text" id="phone_number" name="phone_number"><br>
            <label for="country" style="padding-right: 7.2%;">Country:</label>
            <input type="text" id="country" name="country"><br>
            <label for="street_name" style="padding-right: 2%;">Street name:</label>
            <input type="text" id="street_name" name="street_name"><br>
            <label for="post_code" style="padding-right: 4.7%;">Post Code:</label>
            <input type="text" id="post_code" name="post_code"><br>
            <label for="rPassword" style="padding-right: 6.1%;">Password:</label>
            <input type="password" id="rPassword" name="rPassword">
        </form>
        <div><br></div>
    </div>
    
    <div style="width: 100%;text-align: center;align-content: center;">
        <button style="height: 30px;width: 100px;font-size: 14px;font-weight: 500;">Register</button>
    </div>
    
        <hr style="width: 100%; border:0;border-top:1px solid #eee;margin:20px 0">
</body>
</html>
