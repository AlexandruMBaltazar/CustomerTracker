<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html> 

<html>

	<head>
		<title>Add Customer</title>
		<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
		<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/add-customer-style.css">
	</head>

	<body>
		
		<div id="wrapper">
			<div id="header">
				<h2>CRM - Customer Relationship Manager</h2>
			</div>
		</div>
		
		<div id="container">
			<h3>Save Customer</h3>
			
			<div id="content">
				<form:form action="saveCustomer" method="POST" modelAttribute="customer">
					<form:hidden path="id"/>
					<table>
						<tbody>
							<tr>
								<td><label>First Name:</label></td>
								<td><form:input path="firstName" /></td>
							</tr>
							
							<tr>
								<td><label>Last Name:</label></td>
								<td><form:input path="lastName" /></td>
							</tr>
							
							<tr>
								<td><label>Email:</label></td>
								<td><form:input path="email" /></td>
							</tr>
							
							<tr>
								<td><label></label></td>
								<td><input type="submit" name="Submit" value="Update" class="save" /></td>
							</tr>
						</tbody>
					</table>
				</form:form>
				
				<div style="clear; both;"> </div>
				
				<p>
					<a href="/web-customer-tracker/customer/list"> Back To List</a>
				</p>
				
			</div>
		
		</div>
		
	</body>

</html>