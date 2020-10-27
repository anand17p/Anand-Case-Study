<%@page import="java.util.List"%>
<%@page import="com.hcl.dao.PlaneDao"%>
<%@page import="java.util.Date"%>
<%@page import="com.hcl.model.Plane"%>
<%@page import="java.util.List"%>
<%@page import="com.hcl.dao.HangerDao"%>
<%@page import="java.util.Date"%>
<%@page import="com.hcl.model.Hanger"%>
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
			<h2>Plane Details</h2>
			<a href="ManagerWelcome.jsp">Go Back</a>
			</p>
			<table border="1">
				<thead>
					<tr>
						<th>Plane ID</th>
						<th>Plane Name</th>
						<th>Details</th>
					</tr>
				</thead>
				<tbody>
					<%
						PlaneDao loginService = new PlaneDao();
					List<Plane> list = loginService.getListOfUsers();
					for (Plane u : list) {
					%>
					<tr>
						<td><%=u.getId()%></td>
						<td><%=u.getName()%></td>
						<td><%=u.getOtherdetails()%></td>
					</tr>
					<%
						}
					%>
				
				<tbody>
			</table>
			<br />
		</div>
	</center>
	<center>
		<div id="container">
			<h1>Hanger Details</h1>
			<table border="1">
				<thead>
					<tr>
						<th>Hanger ID</th>
						<th>Hanger Name</th>
						<th>Details</th>
					</tr>
				</thead>
				<tbody>
					<%
						HangerDao loginService1 = new HangerDao();
					List<Hanger> list1 = loginService1.getListOfUsers();
					for (Hanger u : list1) {
					%>
					<tr>
						<td><%=u.getId()%></td>
						<td><%=u.getName()%></td>
						<td><%=u.getOtherdetails()%></td>
					</tr>
					<%
						}
					%>
				
				<tbody>
			</table>
			<br />
		</div>
	</center>
</body>
</html>
