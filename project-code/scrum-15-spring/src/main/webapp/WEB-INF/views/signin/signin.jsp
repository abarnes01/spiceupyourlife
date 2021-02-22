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
                    <span class="title">Sign in/Register</span>
                </a>
            </li>
            <li>
                <a href="#">
                    <span class="icon"><i class="fa fa-sign-in" aria-hidden="true"></i></span>
                    <span class="title">Sign in/</span>
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
        <div class="title" style="font-size: 36px;display:inline;align-content: center;text-align: center;cursor: pointer;"><a href="index.html" style="text-decoration: none; color: black;opacity: 0.8;">Sign in</a></div>
        <div class="login" style="font-family: monospace;float: right;display: inline;opacity: 0.7;padding-top: 10px;cursor: pointer;font-size: 30px;padding-right: 10px;"><a href="/shopping-cart/form.jsp" style="text-decoration-line: none;color: black;"><i class="fa fa-shopping-cart" aria-hidden="true"></i></a></div>
    </div>
    <div style="float:left; width: 100%;text-align:center;padding-right:10%;">
        <br><br><h2 style="font-weight: 100;display: inline;">Sign in</h2><br>
        <form class="sign-in-form" style="display: inline;">
            <label for="email" style="padding-right: 2%">Email:</label>
            <input type="text" id="email" name="email"><br>
            <label for="password" style="padding-right: 0.2%">Password:</label>
            <input type="password" id="password" name="password">
        </form>
    </div>

    <div><br></div>
    
    <div style="width: 100%; align-content: center;text-align: center;">
        <br><br><a href="/sign-up/form.jsp"><button style="width: 100px; height:30px;font-size: 14px;font-weight:500;">Sign in</button></a><br><br><br><br>
    </div>
        <hr style="width: 100%; border:0;border-top:1px solid #eee;margin:20px 0">
</body>
</html>
