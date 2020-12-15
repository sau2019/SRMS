<%@ page import ="java.sql.*" %>
<%
    String userid = request.getParameter("us");    
    String pwd = request.getParameter("ps");
	
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/dronacharya","root", "root");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from studentlogin where Username ='" + userid + "'and Password='"+pwd+"'");
	 if (rs.next()) {
	 String name=rs.getString("Name");
        session.setAttribute("userid", userid);
		session.setAttribute("name",name);
		//out.println("welcome " + userid);
       // out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("studentdash.jsp");
    } else {
        out.println("Invalid password <a href='index.html'>try again</a>");
    }
	
	con.close();
	
    
%>