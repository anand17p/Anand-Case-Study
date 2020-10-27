<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Registration</title>
<style>
body {
	background-image:
		url("https://a57.foxnews.com/static.foxbusiness.com/foxbusiness.com/content/uploads/2020/02/0/0/iStock-airline.jpg?ve=1&tl=1");
	background-position: center center;
	bakground-size: cover;
	background-repeat: no-repeat;
	background-attachment: fixed;
}
</style>
</head>
<body>
	<div align="center">
		<h2>Manager Registration Form</h2>
		<form action="ManagerRegisterController" method="POST">
			<table align="center" cellpadding="10">
				<tr>
					<td>First Name * :</td>
					<td><input type="text" name="firstName" required></td>
				</tr>
				<tr>
					<td>Last Name * :</td>
					<td><input type="text" name="lastName" required></td>
				</tr>
				<tr>
					<td>Age * :</td>
					<td><input type="number" name="age" required></td>
				</tr>
				<tr>
					<td>Gender * :</td>
					<td><input type="radio" name="gender" value="Male" required>Male<input
						type="radio" name="gender" value="Female" required>Female</td>
				</tr>
				<tr>
					<td>Contact Number * :</td>
					<td><input type="text" name="contactNumber" required></td>
				</tr>
				<tr>
					<td>Manager Id * :</td>
					<td><input type="text" name="userId" required></td>
				</tr>
				<tr>
					<td>Password * :</td>
					<td><input type="password" name="password" required></td>
				<tr>
					<td></td>
					<td><input type="submit" value="Submit"
						style="margin-right: 20px;" /><a href="ManagerLogin.jsp">Go
							back</a></td>
				</tr>

			</table>
		</form>
	</div>
</body>
</html>