<%@ page import = "java.sql.*" %>
<%
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/srecord", "root", "root");

			Statement qry = con.createStatement(); 	
			Statement qry2=con.createStatement();
			ResultSet rs = qry.executeQuery("select * from studentlogin");
			ResultSet rs1= qry2.executeQuery("select * from tglogin");

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
 
 <style>
	
	.header{
	color:#1A237E;
	background-color:#1E88E5  ;
	text-align:center;
	}
	img{
	margin-top:10px;}
	
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
		<p>Welcome to Admin Dashboard</p>
		<a href="tglogout.jsp" align="right">LogOut</a>
	</div>
<div class="container">
	<div class="row">
	<div class="col-sm-6">
	<table border="5px">
		<h3>Connected Student details..</h3>
			<tr><th>Username </th><th>Name</th></tr>
		<tr><td>
<%		while(rs.next()) {
			String us=rs.getString("UserName");
			String nm=rs.getString("Name");
			
			out.print("<tr>"); 					
			out.print("<td>" + us+ "</td>");
			out.print("<td>"+ nm+"</td>");
			out.print("</tr>"); }
%>	
	</td></tr>
	</table>
	
	
	</div>
	<div class="col-sm-6">
	
		<table border="5px">
		<h3>Connected TG details...</h3>
		<tr><th>Username</th><th>Name </th></tr>
		<tr><td>
<%		while(rs1.next()) {
			String us=rs1.getString("UserName");
			String nm=rs1.getString("Name");
			
			out.print("<tr>"); 					
			out.print("<td>" +us+ "</td>");
			out.print("<td>"+ nm+"</td>");
			
			out.print("</tr>"); }
%>	
	</td></tr>
	</table>
	
	
	</div>
	
	</div>
	
	
	<div class="row">
	<div class="col-sm-8">
	<form mathod="post" action="adminquery.jsp">
	<h3>Process A Query From Databases;</h3>
		<table>
		<tr><td>Write a Query to perform task.</td></tr>
			<input type="text" name="query" style="width:70%; height:100px;">
			
		</table>
		<button>EXECUTE </button>
	</form>
		</div>
		
		<div class="col-sm-4">
		<h3>Advance database Management System</h3>
		<a href="http://localhost/phpMyAdmin">Go to Advance DataBase management</a>
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

</body>
</html>

	<%

			con.close();
		%>
