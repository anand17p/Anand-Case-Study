<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Logged Out</title>
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
	<%     
         session.removeAttribute("userId");
         session.removeAttribute("password");
         session.invalidate();
     %>
	<center>
		<h2 style='color: green;'>You have successfully logged out</h2>
		To login again <a href="ManagerLogin.jsp">click here</a>.
	</center>
</body>
</html>
