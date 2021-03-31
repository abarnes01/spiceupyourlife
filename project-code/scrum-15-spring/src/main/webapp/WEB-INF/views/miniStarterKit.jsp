<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<style>
.form1 {
      font-family: Poppins-Regular;
      font-size: 13px;
      line-height: 1.4;
      color: #00ad5f;
      text-align: center;
      width: 100%;
    }
    
 .form2 {
    font-family: Poppins-Regular;
      font-size: 15px;
      line-height: 1.4;
      color: #00ad5f;
      text-transform: uppercase;
      text-align: center;
      width: 100%;
  }
</style>

<h1>Mini Starter Kit</h1>
<div class="form1" id="text2" style="display:block">
	<label for="spice">Choose 10g of a spice of your choice: (alongside 10g of chilli)</label>
	<select name="spice" id="spice" form="starterKit">
	<option value = "cayenne pepper">Cayenne pepper</option>
	<option value = "cardamon">Cardamon</option>
	<option value = "cinnamon">Cinnamon</option>
	<option value = "paparika">Paparika</option>
	<option value = "harissa powder">Harissa powder</option>
	<option value = "ginger">Ginger</option>
	<option value = "cloves">Cloves</option></select>
	<form id="starterKit" action="/miniStarterKit" method="post"> <br/>
	
		
		${streetName} <br/>
		${city} <br/>
		${postcode} <br/>
		${country} <br/>
		<input type="hidden" id="email" name="email" value="${email}"/>
		<input type="hidden" id="id" name="id" value = "${customerId}"/>
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
		<input type="submit" value="confirm" style="height:30px;font-size:14px;font-weight=500; color: blue;"/>
		
	</form>
</div>
<label for="myCheck">Not your delivery address?</label>
<input type="checkbox" id="myCheck" onclick="myFunctionDeliveryAddress()">

<div class="form2" id="text" style="display:none">
	<label for="spice2">Choose 10g of a spice of your choice: (alongside 10g of chilli)</label>
	<select name="spice2" id="spice2" form="deliveryAddress">
	<option value = "cayenne pepper">Cayenne pepper</option>
	<option value = "cardamon">Cardamon</option>
	<option value = "cinnamon">Cinnamon</option>
	<option value = "paparika">Paparika</option>
	<option value = "harissa powder">Harissa powder</option>
	<option value = "ginger">Ginger</option>
	<option value = "cloves">Cloves</option></select>
	<form id="deliveryAddress" action="/deliveryAddress" method="post"> <br/>
		<h2> Please enter your delivery address: </h2> <br/>
		<input type="text" id="streetname" name="streetname" placeholder="street name"> <br/>
		<input type="text" id="city" name="city" placeholder="city"> <br/>
		<input type="text" id="postcode" name="postcode" placeholder="postcode"> <br/>
		<input type="text" id="country" name="country" placeholder="country"> <br/>
		<input type="hidden" id="email" name="email" value="${email}"/>
		<input type="hidden" id="id" name="id" value = "${customerId}"/>
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
		<input type="submit" value="confirm" style="height:30px;font-size:14px;font-weight=500; color: blue;"/>
	
	</form>
</div>


<script>
function myFunctionDeliveryAddress(){
	var checkBox = document.getElementById("myCheck")
	var text = document.getElementById("text");
	var text2 = document.getElementById("text2");
	if (checkBox.checked == true) {
		text.style.display = "block";
		text2.style.display = "none";
	}
	else {
		text.style.display = "none";
		text2.style.display = "block";
	
	}
}
</script>