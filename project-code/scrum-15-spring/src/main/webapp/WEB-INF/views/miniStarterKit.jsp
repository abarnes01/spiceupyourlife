<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>

<h1>Mini Starter Kit</h1>

<label for="spice">Choose 10g of a spice of your choice: (alongside 10g of chilli)</label>
<select name="spice" id="spice" form="staterKit">
<option value = "cayenne pepper">Cayenne pepper</option>
<option value = "cardamon">Cardamon</option>
<option value = "cinnamon">Cinnamon</option>
<option value = "paparika">Paparika</option>
<option value = "harissa powder">Harissa powder</option>
<option value = "ginger">Ginger</option>
<option value = "cloves">Cloves</option></select>

<form id="staterKit" action="/miniStarterKit" method="post">
	
<h1>Is this your delivery address?</h1>
<p>${streetName}</p>
<p>${city}</p> 
<p>${postcode}</p>
<p>${country}</p>
<input type="radio" id="yes" name="delivery_address" value="yes">
<label for="yes">yes</label>
<input type="radio" id="no" name="delivery_address" value="no">
<label for="no">no</label>
					

<button>
		Confirm
</button>
				
</form>