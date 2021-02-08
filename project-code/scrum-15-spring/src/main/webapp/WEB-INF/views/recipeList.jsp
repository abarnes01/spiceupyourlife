<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
</head>
<body>
<h2>Recipes</h2>
<p>
	<c:forEach items="${recipe}" var="r">
		<h2>${r.title}</h2>
		<p>${r.}</p> 
	</c:forEach>
	<p><a href="/">[Homepage and all recipes]</a></p>
</p>
</body>
</html>