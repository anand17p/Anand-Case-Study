<%@page import="java.util.List"%>
<%@page import="com.hcl.dao.*"%>
<%@page import="java.util.Date"%>
<%@page import="com.hcl.model.Admin"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Result Page</title>
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
	<center>
		<div id="container">
			<h1>Welcome Admin!!!</h1>
			<a href="AdminLogout.jsp">Logout</a>

			<table>
				<h2>Plane Details</h2>
				<tr>
					<td><a href="PlaneRegister.jsp" style="margin-right: 20px;">Add
							Plane Details</a></td>
					<td><a href="ListOfPlanes.jsp">View Plane Details</a></td>
				</tr>
			</table>
			<table>
				<h2>Pilot Details</h2>
				<tr>
					<td><a href="PilotRegister.jsp" style="margin-right: 20px;">Add
							Pilot Details</a></td>
					<td><a href="ListOfPilots.jsp">View Pilot Details</a></td>
				</tr>
			</table>
			<h2>Hanger Details</h2>
			<tr>
				<td><a href="HangerRegister.jsp" style="margin-right: 20px;">Add
						Hanger Details</a></td>
				<td><a href="ListOfHanger.jsp">View Hanger Details</a></td>
			</tr>
	</center>
</body>
</html>
