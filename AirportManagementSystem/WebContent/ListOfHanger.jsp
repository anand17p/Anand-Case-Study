<%@page import="java.util.List"%>
<%@page import="com.hcl.dao.HangerDao"%>
<%@page import="java.util.Date"%>
<%@page import="com.hcl.model.Hanger"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Hanger Page</title>
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
		<div>
			<h2>Hanger Page</h2>
			<a href="AdminWelcome.jsp">Go back</a>
			</p>
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
						HangerDao loginService = new HangerDao();
					List<Hanger> list = loginService.getListOfUsers();
					for (Hanger u : list) {
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
