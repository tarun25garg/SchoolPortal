<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Search Student</title>
<style>
.header{
			background-color:white;
			border:1px solid #bfbfbf;
			height:110px;
			width:100%;
			position:fixed;
			margin-top:-8.5%;
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
			background-image:url("5.jpg");
			background-size:cover;	
			margin-top:8.5%;
			padding-top:10%;
			padding-bottom:13.8%;
			padding-left:3%;
			color:black;
			font-size:120%;
}
.content{
			background-color:#ffffff;
			opacity:0.9;
			margin-left:20%;
			margin-right:25%;
			padding:2%;
			border-radius:10px;
}
.head{
			font-size:160%;
			text-decoration:underline;
}
.content1{
			margin-left:40%;
}
.content2{
			margin-left:60%;
}
.box{
			height:20px;
			width:100%;
			border-radius:5px;
}
.button1{
			padding:3% 10%;
			border-radius:5px;
}
.button1:hover{
			background-color:green;
			color:white;

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
<form autocomplete="on" action="SearchStudentServlet">
<div class="content" >

<div class="head">Search Student :-</div>

<br>

<div class="content1">
Name Of The Student:-
<br>
<input class="box" type="text" name="name" placeholder="Student Name" required>
</div>


<br><br>

<div class="content2">
<input class="button1" type="submit" name="name" value="Search">
</div>

</div>
</form>
</div>


<div class="footer">
&copy; All rights reserved. Wellfield School-2016
</div>

</body>
</html>