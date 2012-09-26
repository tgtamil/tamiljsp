<html>
<head>
	<title>Insert title here</title>
</head>
<body>
<%
    // This is a scriptlet.  Notice that the "date"
    // variable we declare here is available in the
    // embedded expression later on.
    System.out.println( "Evaluating date now... " );
    java.util.Date date = new java.util.Date();
    System.out.println(date);
%>
Hello!  The time is now 
<%
	out.println(String.valueOf(date));
	out.println(request.getRemoteAddr());
	out.println(request.getRemoteHost());
	out.println(request.getServerName());
%>

<TABLE border=2>
<%

	for ( int i = 0; i < 5; i++ ) {
%>
        <TR>
        <TD>Number</TD>
        <TD><%= i+1 %></TD>
        </TR>
<%
	}
%>
</TABLE>

</body>
</html>