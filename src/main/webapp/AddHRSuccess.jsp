<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<title>CareerNova | HR Added</title>

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">

<style>

*{
margin:0;
padding:0;
box-sizing:border-box;
font-family:'Poppins',sans-serif;
}

body{
background:linear-gradient(135deg,#eef5ff,#dbeafe);
display:flex;
justify-content:center;
align-items:center;
height:100vh;
}

.card{

width:430px;
background:white;
padding:40px;
border-radius:18px;
text-align:center;
box-shadow:0 15px 35px rgba(0,0,0,.12);

}

.icon{

width:90px;
height:90px;
margin:auto;
border-radius:50%;
background:#dcfce7;
display:flex;
justify-content:center;
align-items:center;
font-size:45px;

}

h2{

margin-top:20px;
color:#16a34a;

}

p{

margin:15px 0 30px;
color:#666;
line-height:25px;

}

.btn{

display:inline-block;
text-decoration:none;
padding:12px 28px;
border-radius:8px;
background:#2563eb;
color:white;
font-weight:600;
transition:.3s;

}

.btn:hover{

background:#1d4ed8;

}

</style>

</head>

<body>

<div class="card">

<div class="icon">
✅
</div>

<h2>HR Added Successfully!</h2>

<p>
The HR account has been created successfully and is ready to log in.
</p>

<a href="AddHR.html" class="btn">
Add Another HR
</a>

&nbsp;

<a href="AdminHome.jsp" class="btn">
Dashboard
</a>

</div>

</body>
</html>