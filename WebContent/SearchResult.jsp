<%@ page import="java.util.List,school.Student"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%
    List<Student> students = (List<Student>) request.getSession().getAttribute("studentList");
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Search Result</title>
<style>
.header{
			background-color:white;
			border:1px solid #bfbfbf;
			height:110px;
			width:100%;
			position:fixed;
			margin-top:-8.7%;
			margin-left:-0.6%;
			margin-right:-0.6%;
			padding-top:0.5%;
}
.image{
			width:8%;
}
.title{
			margin-top:-7%;
			margin-left:8%;
			font-size:180%;
			line-height:1.2;
}
.title1{
			margin-left:1%;
			color:#FFD700;
			font-weight:900;
			font-size:113%;
			font-family:georgia;
}
.title2{
			color:brown;
}
.button{
			margin-top:-3.2%;
			margin-left:55%;
}
.button a{
			text-decoration:none;
			color:#47484a;
			font-family:arial;
			font-weight:590;
}
.button li{
			display:inline;
			padding:7%;
}
.button a:hover{
			background-color:white;
			color:#FFD700;
}
.back{
			background-image:url("6.jpg");
			background-size:cover;	
			margin-top:8.5%;
			padding-top:7%;
			padding-bottom:13.8%;
			padding-left:3%;
			color:black;
			font-size:120%;
}
.content{
			background-color:#ffffff;
			opacity:1;
			margin-left:20%;
			margin-right:25%;
			padding:2%;
			border-radius:10px;
}
.head{
			font-size:160%;
			text-decoration:underline;
}
table,th,td{
			margin-left:17%;
			width:65%;
			border-collapse:collapse;
}
th,td{
			padding:8px;
}
td a{
			padding-right:20px;
			padding-left:20px;
			padding-top:5px;
			padding-bottom:5px;
}
th{
			background-color: #4CAF50;
			color: white;
			font-family:arial;
			text-align:left;
}
tr:nth-child(even){
			background-color: #f2f2f2;
}
.button1{
			text-decoration:none;
			color:#ff6666;
			cursor:pointer;
}
.button1:hover{
			background-color:white;
			color:#FFD700;
}
.footer{
			background-color:#333333;
			color:white;
			text-align:center;
			padding:0.5%;
			margin-top:-8.2%;
			margin-left:-0.7%;
			margin-right:-0.3%;
			height:20px;
			width:100%;
			position:fixed;
			bottom:0;
}

</style>
</head>
<body>

<div class="header">

<div><img src="1.png" class="image"></div>

<div class="title">
<div class="title1">WELLFIELD</div>
<div class="title2">MIDDLE  SCHOOL</div>
</div>

<div>
<ul class="button">
<li><a href="Login.jsp">Home</a></li>
<li><a href="AboutUs.jsp">About Us</a></li>
<li><a href="ContactUs.jsp">Contact Us</a></li>
<li><a href="LogoutServlet">Logout</a></li>
</ul>
</div>

</div>



<div class="back">
<div class="content" >

<div class="head">Search Result :-</div>
<br><br>

<table>
<tr>
   <th>No.</th>
   <th>Name</th>
   <th>Class</th>
   <th>Age</th>
</tr>
<%
int i =0;
for(Student std:students)
{
	i++;
%>
<tr>
   <td><%=i%></td>
   <td><%=std.getStudentName() %></td>
   <td><%=std.getStudentClass() %></td>
   <td><%=std.getStudentAge() %></td>
   <td><a class="button1" href="AddStudent.jsp">Edit</a></td>
   <td class="button1">Delete</td>
</tr>
<%} %>
</table>


</div>
</div>



<div class="footer">
&copy; All rights reserved. Wellfield School-2016
</div>

</body>
</html>