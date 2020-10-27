<%@page import="java.util.List"%>
<%@page import="com.hcl.dao.PlaneDao"%>
<%@page import="java.util.Date"%>
<%@page import="com.hcl.model.Plane"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Result Page</title>
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
	<center>
		<div >
			<h2>Plane Details</h2>
			<a href="AdminWelcome.jsp">Go Back</a>
			</p>
			<form action="PlaneController" method="POST">
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
			</form>
			<br />
		</div>
	</center>
</body>
</html>
