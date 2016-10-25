<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>


<%@ page session="false"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<style type="text/css">@import url("<c:url value="/css/home.css"/>");</style>
<title>Online Banking System</title>
</head>
<body>
	<P>The time on the server is ${serverTime}.</P>
	<security:authorize access="isAnonymous()">
		<!-- WHICH ONE? depends on basic form OR CUSTOM -->
		<!--a href="<spring:url value='/spring_security_login' />" class="btn btn-default pull-right"> Login</a-->
		<a href="<spring:url value='/login' />"> Login</a>
	</security:authorize>
	<p>
		<security:authorize access="isAuthenticated()">
			<p>You are under secured browsing</p>
			<a href="<spring:url  value="/doLogout" />">Logout</a>
		</security:authorize>
	</p>
	<div id="wrapper">
		<div>
			<div id="header">Online Banking System</div>
			<!--<span style="float:left;">We accept every acknowledgement!</span>-->
			<div style="height: 25px"></div>
			<div style="border: 1px solid black">
				<ul class="tab">
					<li><a href="javascript:void(0)">Create an Account</a></li>
					<li><a href="javascript:void(0)">Loan</a></li>
					<li><a href="javascript:void(0)">Money Transfer</a></li>
					<li><a href="javascript:void(0)">Deposit Amount</a></li>
					<li style="float: left; margin-left: 28%"><a
						href="javascript:void(0)">Login</a></li>
					<li><a href="javascript:void(0)">Sign Up</a></li>
				</ul>
			</div>
		</div>
	</div>
	<script type="text/javascript">
	window.onload = (function(){
		alert();
	})();
	</script>
</body>
</html>
