<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"  %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Loan application form</title>
</head>
<body>
	<h1>Greeting From ABC Bank</h1>
<body>
	<form:form modelAttribute="newLoanMember" class="form-form"
		action="addLoan" method="post">
		<fieldset>
			<legend>Loan Application Form</legend>
			<div class="form-div">
				<label class="form-label" for="accountNo">AccountNumber</label>
				<div class="form-input">
					<form:input id="accountNo" path="accountNo" type="text" />
					<%-- <form:errors path="accountNo" cssStyle="text-danger"/> --%>
				</div>
			</div>


			<div class="form-div">
				<label class="form-label" for="loanPeriod">Loan Period</label>
				<div class="form-input">
					<form:select path="loanPeriod">
						<form:option value="" label="--SelectLoanPeriod--" />
						<form:option value="5" label="5" />
						<form:option value="10" label="10" />
						<form:option value="15" label="15" />
						<%-- <form:errors path="loanPeriod" cssStyle="color : red; " /> --%>
					</form:select>
				</div>
			</div>

			<div class="form-div">
				<label class="form-label" for="loanType"> Preferred Loan
					Types</label>
				<div class="form-input">
					<form:select path="loanType">
						<form:option value="" label="--Select Loan Type--" />
						<form:option value="education" label="EducationLoan" />
						<form:option value="home" label="Home Loan" />
						<form:option value="business" label="Basic Loan" />
						<%-- <form:errors path="loanType" cssStyle="color : red; " /> --%>
					</form:select>
				</div>
			</div>
			<legend>Personal Reference</legend>

			<div class="form-div">
				<label class="form-label" for="nameOfPartner">Partner's
					Full Name</label>
				<div class="form-input">
					<form:input id="nameOfPartner"
						path="loaneePartner.nameOfPartner" type="text" />
					<%-- 	<form:errors path="loaneePartner.nameOfPartner" cssStyle="text-danger"/> --%>
				</div>
			</div>
			
			<div class="form-div">
				<label class="form-label" for="loaneePartner.phoneNumber">Phone
					Number</label>
				<div class="form-input">
					<form:input id="loaneePartner.phoneNumber"
						path="loaneePartner.phoneNumber" type="text" />
					<%-- <form:errors path="loaneePartner.phoneNumber" cssStyle="color : red; "/> --%>
				</div>
			</div>
			<legend>Business/Employement Information</legend>

			<div class="form-div">
				<label class="form-label" for="loaneeOfficeDetails.officeName">Business/Employemer's
					Name</label>
				<div class="col-lg-10">
					<form:input id="loaneeOfficeDetails.officeName"
						path="loaneeOfficeDetails.officeName" type="text" />
					<%-- <form:errors path="loaneeOfficeDetails.officeName" cssStyle="color : red;"/> --%>
				</div>
			</div>
			<div class="form-div">
				<label class="form-label" for="loaneeOfficeDetails.noOfYearsWorked">
					No of Years Involved</label>
				<div class="col-lg-10">
					<form:input id="loaneeOfficeDetails.noOfYearsWorked"
						path="loaneeOfficeDetails.noOfYearsWorked" type="text" />
					<%-- 	<form:errors path="loaneeOfficeDetails.noOfYearsWorked" cssStyle="color : red;"/> --%>
				</div>
			</div>

			<div class="form-div">
				<label class="form-label"
					for="loaneeOfficeDetails.contactPersonName">Contact Person
				</label>
				<div class="col-lg-10">
					<form:input id="loaneeOfficeDetails.contactPersonName"
						path="loaneeOfficeDetails.contactPersonName" type="text" />
					<%-- 	<form:errors path="loaneeOfficeDetails.contactPersonName" cssStyle="color : red;"/> --%>
				</div>
			</div>

			<div class="form-div">
				<label class="form-label"
					for="loaneeOfficeDetails.contactPersonPosition">Contact
					Person's Position </label>
				<div class="col-lg-10">
					<form:input id="loaneeOfficeDetails.contactPersonPosition"
						path="loaneeOfficeDetails.contactPersonPosition" type="text" />
					<%-- 	<form:errors path="loaneeOfficeDetails.contactPersonPosition" cssStyle="color : red;"/> --%>
				</div>
			</div>

			<div class="form-div">

				<input type="submit" value="Apply" />

			</div>

		</fieldset>
	</form:form>
</body>