<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Save Name</title>
</head>
<body>
<%
	String name = request.getParameter("username");
	session.setAttribute("sessusername", name);
%>
<a href="Dispname.jsp">Continue</a>
</body>
</html>