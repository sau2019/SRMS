<%@ page import ="java.sql.*" %>
<%
	String q1=request.getParameter("query");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/srecord","root", "root");
    
	Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery(" '"+q1+"' ");
	
	con.close();
%>