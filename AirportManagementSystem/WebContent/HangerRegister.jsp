<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Hanger Registration</title>
<style>
body {
	background-image:
		url("https://images.hdqwalls.com/download/plane-taking-off-1280x720.jpg");
	background-position: center center;
	bakground-size: cover;
	background-repeat: no-repeat;
	background-attachment: fixed;
}
</style>
</head>
<body>
<body>
	<h2 align="center">Hanger Registration Form</h2>
	<form action="HangerController" method="POST">
		<table align="center" cellpadding="10">
			<tr>
				<td>Hanger Id:</td>
				<td><input type="text" name="id" maxlength="30" required /></td>
			</tr>
			<tr>
				<td>Hanger Name:</td>
				<td><input type="text" name="name" maxlength="30" required /></td>
			</tr>
			<tr>
				<td>Other Details:</td>
				<td><input type="text" name="details" maxlength="30" required /></td>
			</tr>

			<tr>
				<td></td>
				<td colspan="2"><input type="submit" value="Submit"
					style="margin-right: 20px;"><a href="AdminWelcome.jsp">Go
						back</a></td>
			</tr>
		</table>
	</form>
</body>
</html>