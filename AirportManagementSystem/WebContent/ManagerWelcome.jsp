<%@page import="java.util.List"%>
<%@page import="com.hcl.dao.ManagerLoginDao"%>
<%@page import="java.util.Date"%>
<%@page import="com.hcl.model.Manager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="css/style.css" />
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
			<h1>Welcome Manager!!!</h1>
			<a href="ManagerLogout.jsp">Logout</a>
			<table>
				<h2>Allot Hanger</h2>
				<td><a href="HangerStatus.jsp">Allot Hanger</a></td>
				</tr>
			</table>
	</center>
</body>
</html>
