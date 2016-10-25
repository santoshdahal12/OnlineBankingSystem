<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"  %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"  %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>


<%@ page session="false" %>

<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	
</h1>
<body>
<form:form  modelAttribute="newLoanMember" class="form-horizontal"  >
			<fieldset>
				<legend>Loan Application Form</legend>
				<div class="form-div">
					<label class="form-label" for="accountNo">AccountNumber</label>
					<div class="form-input">
						<form:input id="accountNo" path="accountNo" type="text" />
						<form:errors path="accountNo" cssClass="text-danger"/>
					</div>
				</div>
				<div class="form-div">
					<label class="form-label" for="accountType">Account Type</label>
					<div class="form-input">
						<form:input id="accountType" path="accountType" type="text" />
						<form:errors path="accountType" cssClass="text-danger"/>
					</div>
				</div>
				
			<div class="form-div">
				<label class="form-label" for="loanPeriod">Loan Period</label>
				<div class="form-input">
					<form:select path="loanPeriod">
					<form:option value="" label="SelectLoanPeriod" />
						<form:option value="5" label="EducationLoan" />
						<form:option value="10" label="Home Loan" />
						<form:option value="15" label="Business Loan" />
						<form:errors path="loanPeriod" cssStyle="color : red; " />
					</form:select>	
				</div>
			</div>

			<div class="form-div">
					<label class="form-label" for="title"> Preferred Loan Types</label>
					<div class="form-input">
					<form:select path="loanType">
					<form:option value="" label="Select Loan Type" />
						<form:option value="education" label="EducationLoan" />
						<form:option value="home" label="Home Loan" />
						<form:option value="business" label="Basic Loan" />
						<form:errors path="loanType" cssStyle="color : red; " />
					</form:select>					
					</div>
				</div>
				<legend>Personal Reference</legend>

				<div class="form-div">
					<label class="form-label" for="nameOfPartner">Partner's Full Name</label>
					<div class="form-input">
						<form:input id="partner.nameOfPartner" path="nameOfPartner" type="text" />
						<form:errors path="partner.nameOfPartner" cssClass="text-danger"/>
					</div>
				</div>

				<div class="form-div">
					<label class="form-label" for="lastName">Last Name</label>
					<div class="form-input">
						<form:input id="lastName" path="lastName" type="text" />
						<form:errors path="lastName" cssClass="color : red; "/>
					</div>
				</div>

				<div class="form-div">
					<label class="form-label" for="age">Age</label>
					<div class="col-lg-10">
						<form:input id="age" path="age" type="text" class="form:input-large"/>
						<form:errors path="age" cssClass="text-danger"/>
					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-lg-2" for="title">Title</label>
					<div class="col-lg-10">
						<form:input id="title" path="title" type="text" class="form:input-large"/>
						<form:errors path="title" cssClass="text-danger"/>
					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-lg-2" for="userName">User Name</label>
					<div class="col-lg-10">
						<div class="form:input-prepend">
							<form:input id="username" path="credentials.username" type="text" class="form:input-large"/>
							<form:errors path="credentials.username" cssClass="text-danger"/>
						</div>
					</div>
				</div>

	
				<div class="form-group">
					<label class="control-label col-lg-2" for="password">Password</label>
					<div class="col-lg-10">
						<div class="form:input-prepend">
							<form:password id="password" path="credentials.password"  class="form:input-large"/>
							<form:errors path="credentials.password" cssClass="text-danger"/>
						</div>
					</div>
				</div>

	
				<div class="form-group">
					<label class="control-label col-lg-2" for="verifyPassword">Verify Password</label>
					<div class="col-lg-10">
						<div class="form:input-prepend">
							<form:password  path="credentials.verifyPassword"  class="form:input-large"/>
							<form:errors path="credentials.verifyPassword" cssClass="text-danger"/>
						</div>
					</div>
				</div>

					<div class="form-group">
					<label class="control-label col-lg-2" for="authority">Role</label>
					<div class="col-lg-10">
						<div class="form:input-prepend">
							<form:input  path="credentials.authority[0].authority" type="text" value="ROLE_USER" class="form:input-large"/>
							<form:errors path="credentials.authority[0].authority" cssClass="text-danger"/>
						</div>
					</div>
				</div>
 
 							<form:hidden path="credentials.enabled" value="TRUE"  />
 

				<div class="form-group">
					<div class="col-lg-offset-2 col-lg-10">
						<input type="submit" id="btnAdd" class="btn btn-primary" value ="Add"/>
					</div>
				</div>
				
			</fieldset>
		</form:form>
</body>