<%@ page import = "java.sql.*" %>
Your UserName and Password Is:
<br>

<br>
<% out.print("UserName: "+session.getAttribute("user"));
%>
<br>
<%
	out.print("Password: "+session.getAttribute("pass"));
%>