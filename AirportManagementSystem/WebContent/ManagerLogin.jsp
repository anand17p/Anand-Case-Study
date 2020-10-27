<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<head>
<html>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Manager Registration</title>
<style>
body{
background-image:url("https://a57.foxnews.com/static.foxbusiness.com/foxbusiness.com/content/uploads/2020/02/0/0/iStock-airline.jpg?ve=1&tl=1");
background-position:center center;
bakground-size:cover;
background-repeat:no-repeat;
background-attachment:fixed;
}
</style>
</head>
<body>
	<div align="center">
		<h2>Manager Login Form</h2>
		<form action="ManagerLoginController" method="POST">
			<table align="center" cellpadding="10">
				<tr>
					<td>User Id * :</td>
					<td><input type="text" name="userId" required></td>
				</tr>
				<tr>
					<td>Password * :</td>
					<td><input type="password" name="password" required></td>
				<tr>
					<td>New User?</td>
					<td><a href="ManagerRegister.jsp" style="margin-left: 30px;">Register
							Here</a></td>
				</tr>

				<tr>
					<td></td>
					<td><input type="submit" value="Login"
						style="margin-left: 20px;" /><a href="home.jsp"
						style="margin-left: 20px;" />Home</a></td>
				</tr>

			</table>
		</form>
	</div>
</body>
</html>