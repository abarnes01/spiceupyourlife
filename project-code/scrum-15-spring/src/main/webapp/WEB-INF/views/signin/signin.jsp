<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Login Test</title>
</head>
<body>

	<form action="/checkLogin" method="post">
		Email : <input type="text" name="email" /><br/>
		Password: <input type="password" name="password" /><br/>
		<input type="submit" value="Sign In" /><br/>
	</form>

</body>
</html>
