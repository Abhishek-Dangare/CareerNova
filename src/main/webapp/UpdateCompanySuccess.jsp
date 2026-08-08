<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CareerNova | Success</title>

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">

<style>

*{
margin:0;
padding:0;
box-sizing:border-box;
font-family:'Poppins',sans-serif;
}

body{

height:100vh;
display:flex;
justify-content:center;
align-items:center;
background:linear-gradient(135deg,#dbeafe,#eff6ff);

}

.card{

width:450px;
background:white;
padding:45px 35px;
border-radius:20px;
text-align:center;
box-shadow:0 15px 35px rgba(0,0,0,.15);
animation:popup .5s ease;

}

@keyframes popup{

0%{
transform:scale(.8);
opacity:0;
}

100%{
transform:scale(1);
opacity:1;
}

}

.icon{

width:90px;
height:90px;
margin:auto;
background:#22c55e;
border-radius:50%;
display:flex;
justify-content:center;
align-items:center;
font-size:45px;
color:white;
box-shadow:0 8px 20px rgba(34,197,94,.4);

}

h1{

margin-top:25px;
font-size:28px;
color:#1e3a8a;

}

p{

margin:15px 0 30px;
color:#555;
font-size:15px;
line-height:25px;

}

.btn{

display:inline-block;
text-decoration:none;
background:linear-gradient(135deg,#2563eb,#1d4ed8);
color:white;
padding:13px 30px;
border-radius:10px;
font-weight:600;
transition:.3s;

}

.btn:hover{

transform:translateY(-3px);
box-shadow:0 10px 20px rgba(37,99,235,.35);

}

.footer{

margin-top:25px;
font-size:13px;
color:#888;

}

</style>

</head>

<body>

<div class="card">

<div class="icon">
✓
</div>

<h1>Update Successful!</h1>

<p>
Company details have been updated successfully.
The latest information is now available in the company list.
</p>

<a href="ViewCompany" class="btn">
🏢 View Companies
</a>

<div class="footer">

CareerNova Recruitment Management System

</div>

</div>

</body>
</html>