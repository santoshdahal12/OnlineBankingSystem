<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"  %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"  %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Login</title>
</head>
<body>
<h2>Please log in</h2>
	<form action="<spring:url value="/postLogin"></spring:url>" method="post">

<input name="username" value =""/>UserName<br>
<input name="password" value =""/>Password<br>
<input type='checkbox' name="keepMe"/>Remember Me? <br/>	
<input type="submit" value="Login"/>


</form>
</body>