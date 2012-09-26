<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*" %>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<h1>Beer selection JSP</h1>
<p>
<%
	List styles = (List)request.getAttribute("styles");
	Iterator it = styles.iterator();
	while(it.hasNext()){
		out.print("<br>try next: " + it.next());
	}
%>
</p>
</body>
</html>