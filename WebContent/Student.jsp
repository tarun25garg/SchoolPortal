<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style>
.header{
			background-color:white;
			border:1px solid #bfbfbf;
			height:110px;
			width:100%;
			position:fixed;
			margin-top:-1%;
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
section{
			background:url(3.jpg);
            background-size:cover;
			padding-bottom:0.6%;
}
.button1{
			background-color:white;
			border: none;
			border-radius:10px;
			padding:2% 5%;
			text-align: center;
			text-decoration: none;
			display: inline-block;
			font-size: 130%;
			margin-bottom:15%;
			margin-left:25%;
			opacity:0.8;
}
.button2{
			background-color:white;
			border: none;
			border-radius:10px;
			padding:2% 5%;
			text-align: center;
			text-decoration: none;
			display: inline-block;
			font-size: 130%;
			margin-bottom:15%;
			margin-left:25%;
			opacity:0.8;
			margin-left:10%;
			margin-top:28%;
}
.button1 a{
			text-decoration:none;
			color:brown;
}
.button2 a{
			text-decoration:none;
			color:brown;
}
button1:hover{
			background-color:#FFD700;
}
button2:hover{
			background-color:#FFD700;
}
.footer{
			background-color:#333333;
			color:white;
			text-align:center;
			padding:0.5%;
			margin-top:-2%;
			margin-left:-0.7%;
			margin-right:-0.3%;
			height:20px;
			width:100%;
			position:fixed;
			bottom:0;
}

</style>
<title>Student</title>
</head>

<body onpageshow="myFunction()">

<script>
function myFunction() {
    alert("Welcome In Wellfield School Portal!!!");
}
</script>

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


<section>
<button1 class="button1"><a href="AddStudent.jsp">Add Student</a></button1>
<button2 class="button2"><a href="SearchStudent.jsp">Search Student</a></button2>
</section>


<div class="footer">
&copy; All rights reserved. Wellfield School-2016
</div>

</body>
</html>