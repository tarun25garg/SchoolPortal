<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ContactUs</title>
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
			background-image:url("8.jpg");
			background-size:cover;
			margin-top:8.7%;
			padding-top:2%;
			padding-bottom:2%;
			padding-left:3%;
			color:black;
			font-size:120%;
}
.content{
			background-color:#ffffff;
			margin-left:15%;
			margin-right:20%;
			padding:2%;
			border-radius:10px;
}
.content1{
			text-decoration:underline;
			font-size:220%;
			color:green;
			text-align:center;
			font-family:arial;
}
.content2{
			width:80%;
}
.content3{
			background-color:#ffffff;
			text-align:center;
			margin-top:2%;
			margin-left:5%;
			margin-right:10%;
			padding:2%;
			border-radius:10px;
			font-family:arial;
}
.contact{
			height:35px;
			width:90%;
			border-radius:5px;
			margin-left:30%;
			padding:1%;
}
.message{
			margin-left:15%;
			resize:none;
			height:150px;
			border-radius:5px;
			width:94%;
			padding:1%;
}
.submit{
			margin-left:50%;
			font-family:arial;
			border-radius:30px;
			padding:10px 35px 10px 35px;
			background-color:brown;
			color:white;
}
.submit:hover{
			color:#FFD700;
}
.mail{
			text-decoration:none;
			margin-top:5%;
			color:green;
}
.mail:hover{
			text-decoration:underline;
			color:brown;
}
.footer{
			background-color:#333333;
			color:white;
			text-align:center;
			padding:0.5%;
			margin-top:-11.61%;
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
<div class="content">
<div class="content1">Contact Us</div><br>
<form method="post" action="">
<table class="content2">
<tr>
<td><input class="contact" type="text" name="name" placeholder="Name" required></td>
<td><input class="contact" type="email" name="name" placeholder="E-mail" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{0,9}$" required></td>
</tr>
<tr>
<td><input class="contact" type="text" name="name" placeholder="Subject" required></td>
<td><input class="contact" type="text" name="name" placeholder="Phone No." required></td>
</tr>
<tr>
<td colspan="2">
<textarea class="message" name="message" placeholder="Message" required>
</textarea>
</td>
</tr>
<tr>
<td colspan="2">
<input class="submit" type="submit" name="submit" value="Post Your Query">
</td>
</tr>
</table>
</form>
</div>

<div class="content3">
<div>
<strong>School Mail-ID:-</strong>
<a href="mailto:tarungarg.bpr@gmail.com" class="mail">tarungarg.bpr@gmail.com</a>
</div><br>
<div>
<strong>School Location:-</strong>Sector-50, Golf Course Extension Road, Gurgaon-122018(Haryana), India.
</div><br>
<div>
<strong>Contact No.-</strong>+91-8120007655, +91-9413876324
</div>
</div>



</div>


<div class="footer">
&copy; All rights reserved. Wellfield School-2016
</div>

</body>
</html>