<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>


<%@ page session="false"%>

<html>
<head>
<title>Home</title>
</head>
<body>
	<h1>Hello ABC Bank!</h1>

	<P>The time on the server is ${serverTime}.</P>
	<security:authorize access="isAnonymous()">
		<!-- WHICH ONE? depends on basic form OR CUSTOM -->
		<!--a href="<spring:url value='/spring_security_login' />" class="btn btn-default pull-right"> Login</a-->
		<a href="<spring:url value='/login' />"> Login</a>
	</security:authorize>

	<p>
		<security:authorize access="isAuthenticated()">
			<p>You are under secured browsing</p>
			<a href="<spring:url  value="/loan/addLoan" />">ApplyForLoan</a>
			<a href="<spring:url  value="/doLogout" />">Logout</a>
		</security:authorize>
</body>
</html>
