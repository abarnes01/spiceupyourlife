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
                    <span class="icon"><i class="fa fa-phone" aria-hidden="true"></i></span>
                    <span class="title">Contact</span>
                </a>
            </li>
        </ul>
    </div>
        
    <div class="top-menu" style="align-content: center;text-align: center;">
        <div class="title" style="font-family: monospace; font-size: 36px;display:inline;align-content: center;text-align: center;cursor: pointer;"><a href="index.html" style="text-decoration: none; color: black;opacity: 0.8;">Recipes</a></div>
        <div class="login" style="font-family: monospace;float: right;display: inline;opacity: 0.7;padding-top: 10px;cursor: pointer;font-size: 30px;padding-right: 10px;"><a href="/shopping-cart/form.jsp" style="text-decoration-line: none;color: black;"><i class="fa fa-shopping-cart" aria-hidden="true"></i></a></div>
    </div>
    
	<div class="main content" style="width: 100%;padding-left: 13%;">
		<div class="first row">
		<!-- first row of recipes!-->
			<div class="third">
				<a href="recipes/chilli-con-carne.html"><img src="https://ichef.bbci.co.uk/food/ic/food_16x9_1600/recipes/healthy_chilli_con_carne_64911_16x9.jpg" style="width:100%"></a>
				<h3 class="recipes-titles" style="font-family:monospace;font-size: 22px;align-content: center;text-align: center;"><a href="recipes/chilli-con-carne.html" style="text-decoration: none;color: black;">Chilli Con Carne</a></h3>
			</div>

			<div class="third">
                <a href="recipes/mackerel-recheado.html"><img src="https://ichef.bbci.co.uk/food/ic/food_16x9_1600/recipes/mackerel_recheado_35296_16x9.jpg" style="width:100%"></a>
                <h3 class="recipes-titles" href="/recipes/mackerel-recheado.html" style="font-family:monospace;font-size: 22px;padding: 10pxl;align-content: center;text-align: center;"><a href="/recipes/mackerel-recheado.html" style="text-decoration: none;color: black;">Mackerel Recheado</a></h3>
			</div>

			<div class="third">
                <a href="/recipes/vegetable-biryani.html"><img src="https://ichef.bbci.co.uk/food/ic/food_16x9_1600/recipes/vegetable_biryani_50072_16x9.jpg" style="width:100%"></a>
                <h3 class="recipes-titles" href="/recipes/vegetable-biryani.html" style="font-family:monospace;font-size: 22px;align-content: center;text-align: center;"><a href="/recipes/vegan-tofu-katsu-curry.html" style="text-decoration: none;color: black;">Vegetable Biryani</a></h3>
			</div>


		</div>

		<div class="second row" style="width: 100%";>
		<!-- second row of recipes!-->
			<div class="third">
                <a href="/recipes/morrocan-style-soup.html"><img src="https://ichef.bbci.co.uk/food/ic/food_16x9_1600/recipes/moroccan-style_soup_33454_16x9.jpg" style="width:100%"></a>
                <h3 class="recipes-titles" href="/recipes/morrocan-style-soup.html" style="font-family:monospace;font-size: 22px;align-content: center;text-align: center;"><a href="/recipes/morrocan-style-soup.html" style="text-decoration: none;color: black;">Moroccan-Style soup</a></h3>
			</div>

			<div class="third">
                <a href="/recipes/saffron-chicken-korma-with-wholemeal-paratha.html"><img src="https://reciperian.com/admin/Recepie/1582275663creamychickenkormawi_.jpg" style="width:100%"></a>
                <h3 class="recipes-titles" href="/recipes/saffron-chicken-korma-with-wholemeal-paratha.html" style="font-family:monospace;font-size: 22px;align-content: center;text-align: center;"><a href="/recipes/saffron-chicken-korma-with-wholemeal-paratha.html" style="text-decoration: none;color: black;">Saffron Chicken Korma with Wholemeal Paratha</a></h3>
			</div>

			<div class="third">
                <a href="/recipes/chilli-bean-stir-fry.html"><img src="https://food-images.files.bbci.co.uk/food/recipes/chilli_bean_stir-fry_19412_16x9.jpg" style="width:100%"></a>
                <h3 class="recipes-titles" href="/recipes/chilli-bean-stir-fry.html" style="font-family:monospace;font-size: 22px;align-content: center;text-align: center;"><a href="/recipes/chilli-bean-stir-fry.html" style="text-decoration: none;color: black;">Chilli Bean Stir-Fry</a></h3>
			</div>
		</div>

		<div class="third row" style="width: 100%;">
		<!-- third row of recipes!-->
			<div class="third">
                <a href="/recipes/vegan-gingerbread.html"><img src="https://ichef.bbci.co.uk/food/ic/food_16x9_1600/recipes/vegan_gingerbread_34867_16x9.jpg" style="width:100%"></a>
                <h3 class="recipes-titles" href="/recipes/vegan-gingerbread.html" style="font-family:monospace;font-size: 22px;align-content: center;text-align: center;"><a href="/recipes/vegan-gingerbread.html" style="text-decoration: none;color: black;">Vegan Gingerbread</a></h3>
			</div>

			<div class="third">
                <a href="/recipes/green-peppercorn-and-lemongrass-coconut-broth.html"><img src="https://ichef.bbci.co.uk/food/ic/food_16x9_1600/recipes/peppercorn_coconut_broth_84709_16x9.jpg" style="width:100%"></a>
                <h3 class="recipes-titles" href="/recipes/green-peppercorn-and-lemongrass-coconut-broth" style="font-family:monospace;font-size: 22px;align-content: center;text-align: center;"><a href="/recipes/green-peppercorn-and-lemongrass-coconut-broth.html" style="text-decoration: none;color: black;">Green Peppercorn and Lemongrass Coconut Broth</a></h3>
			</div>

			<div class="third">
                <a href="/recipes/vegan-tofu-katsu-curry.html"><img src="https://ichef.bbci.co.uk/food/ic/food_16x9_1600/recipes/vegan_tofu_katsu_52859_16x9.jpg" style="width:100%"></a>
                <h3 class="recipes-titles" href="/recipes/vegan-tofu-katsu-curry.html" style="font-family:monospace;font-size: 22px;align-content: center;text-align: center;"><a href="/recipes/vegan-tofu-katsu-curry.html" style="text-decoration: none;color: black;">Vegan Tofu Katsu Curry</a></h3>
			</div>
		</div>
        
        <div class="fourth row" style="width: 100%;height: auto;padding-left: 20%">
		<!-- third row of recipes!-->
			<div class="third" style="min-width: 310px;">
                <a href="/recipes/apple-pie.html"><img src="https://ichef.bbci.co.uk/food/ic/food_16x9_1600/recipes/perfect_apple_pie_73735_16x9.jpg" style="width:100%"></a>
                <h3 class="recipes-titles" href="/recipes/apple-pie.html" style="font-family:monospace;font-size: 22px;align-content: center;text-align: center;"><a href="/recipes/apple-pie.html" style="text-decoration: none;color: black;">Apple Pie</a></h3>
			</div>

			<div class="third" style="min-width: 310px;">
                <a href="/recipes/potato-rosti-quiche.html"><img src="https://ichef.bbci.co.uk/food/ic/food_16x9_1600/recipes/potato_rosti_quiche_87900_16x9.jpg" style="width:100%"></a>
                <h3 class="recipes-titles" href="/recipes/potato-rosti-quiche.html" style="font-family:monospace;font-size: 22px;align-content: center;text-align: center;"><a href="/recipes/potato-rosti-quiche.html" style="text-decoration: none;color: black;">Potato Rosti Quiche</a></h3>
            </div>

		</div>
        <hr style="width: 100%; border:0;border-top:1px solid #eee;margin:20px 0">
	</div>


</body>
</html>