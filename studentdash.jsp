<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ page import = "java.sql.*" %>

<%
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/srecord", "root", "root");
			
			Statement qry = con.createStatement(); 	
			Statement qr1= con.createStatement();
			ResultSet rs = qry.executeQuery("select * from studentlogin");

%>


<!DOCTYPE html>
<html>
<head>
<title>Student Record Management</title>
<link rel="icon" 
     type="image/jpg" 
     href="\dronacharya\dlogo1.jpg">
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
 <style>
	
	.header{
	color:#1A237E;
	background-color:#1E88E5  ;
	text-align:center;
	}
	img{
	margin-top:5px;}
	
	button{
		color:white;
		background-color:#1E88E5 ;
		width:30%;
		padding:5px;
	}
	button:hover{
		background-color:green;
	}

	h3{
		color:brown;
	}
	
.footer{
background-color:#E3F2FD;
color:#1E88E5;}	
 </style>
</head>

<body>
	
	<div class="header">
	<div class="col-sm-4">
		<img src="icon.jpg" height="100px";width="100px" align="left">
	</div>
	<div class="col-sm-8">
		<h1><b>STUDENT RECORD MANAGEMENT SYSTEM</b></h1>
		<h5> <b>Hello</b>
		<% out.print(session.getAttribute("name")); %>
		</h5>
	</div>
	<a href="tglogout.jsp" align="right" color="red">LogOut</a>
		
	</div>
<div class="container">
	<div class="row">
		<div class="col-sm-3">
			
		 <button onclick="document.getElementById('id01').style.display='block'"  class="w3-bar-item w3-button w3-mobile">Student Locker</button>
		
		
		</div>
		
		
		<div class="col-sm-9">
		<table border="5px">
		<h3>Connected Student details..</h3>
			<tr><th>Enrollment Id </th><th>Student Name</th><th>Email Id</th><th>Branch</th><th> Semester</th></tr>
		<tr><td>
<%		while(rs.next()) {
			String us=rs.getString("UserName");
			String nm=rs.getString("Name");
			String em=rs.getString("Email");
			
			out.print("<tr>"); 					
			out.print("<td>" + us+ "</td>");
			out.print("<td>"+ nm+"</td>");
			out.print("<td>"+ em +"</td>");
			out.print("</tr>"); }
%>	
	</td></tr>
	</table>
	
	
		</div>
	
	

</div>
</div>

<div class="footer">
	<center>
		<h5>Stay Connected with us:</h5>
		<p>SRMS project ADL</p>
		<br>
		
		<h6>Follow us at:</h6>
	<center><a href="http://www.facebook.com"><i class="fa fa-facebook"></i></a><a href="http://www.twitter.com"> <i class="fa fa-twitter"></i></a><a href="http://www.instagram.com"><i class="fa fa-instagram"></i></a></center>
	
	</center>
</div>

	<script>

</script>




		<!-- Model for Student login -->
  
  <div id="id01" class="w3-modal">
    <div class="w3-modal-content  w3-blue">
      <header class="w3-container"> 
        <span onclick="document.getElementById('id01').style.display='none'" class="w3-button w3-display-topright">&times;</span>
      </header>
      <div class="w3-container">
		<h3><b>Student Login</b></h3>
	  <form method="post" action="studentlogin.jsp">
		<center>
		<table>
		
			<tr><td>UserName:</td><td><input type="text" name="us" style="background-color:white;border-radius:10px;color:tomato;"required></td></tr>
			<tr><td>Password:</td><td><input type="password" name="ps" style="background-color:white;border-radius:10px;color:tomato;"required></td></tr>
		</table>
		</br>
		<button id="mb">Login</button></center>
	  </form>
      </div>
      <footer class="w3-container w3-yellow">
	  <center>
		<a href="sforgotpass.html"> Forgot Password?</a>
        <a href="registration.html">New User </a>
		
		</center>
      </footer>
    </div>
  </div>
  

</body>
</html>

	<%

			con.close();
		%>
