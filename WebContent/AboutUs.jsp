<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>AboutUs</title>
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
			background-image:url("7.jpg");
			background-size:cover;
			margin-top:8.7%;
			padding-top:3%;
			padding-bottom:4.8%;
			padding-left:3%;
			color:brown;
			font-family:arial;
			text-align:center;
			line-height:1.5;
}
.content{
			background-color:#ffffff;
			opacity:1;
			margin-left:15%;
			margin-right:20%;
			padding:2%;
			border-radius:10px;
}
.content1{
			font-size:200%;
			text-decoration:underline;
}
.content2{
			color:#47484a;
			font-size:90%;
			padding:2%;
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
<div class="content" >
<div class="content1">About Us</div>
<div class="content2">WELLFIELD Middle School, a co-educational school affiliated to the Central Board of Secondary Education, is located
in Sector-50, Gurgaon.<br><br>
The school was ranked among the top schools in a survey conducted by the Hindustan Times and C-Fore, and adjudged the "School of the Future" by Education World in
Indian School Rankings in 2012.WELLFIELD Middle School has been awarded for being the best Public School in Primary and Secondary Education in Delhi, NCR region
which was presented by the Royal Brands in association with Delhi Aaj Tak by the then honourable Union Minister, Govt. of India, Mr. Kapil Sibal. It has also 
been awarded for being among top 100 schools of U.P. and top 10 schools of the district in an online survey conducted by www.shikshaadvisor.com.<br><br>
WELLFIELD Middle School always makes innumerable efforts to make the students come up with the highest quality of education, incorporating right blend of personal 
integrity and the fundamental values. We work together in making our students extraordinary in scholastic & co-scholastic areas.WELLFIELD Middle School sets an 
example of academic excellence and we seek to reach new heights of distinction through perseverance of faculty, dedication of students, commitment & cooperation 
of the management.</div>
</div>
</div>


<div class="footer">
&copy; All rights reserved. Wellfield School-2016
</div>

</body>
</html>