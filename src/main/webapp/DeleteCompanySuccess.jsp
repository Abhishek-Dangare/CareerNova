<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CareerNova | Delete Success</title>

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600&display=swap" rel="stylesheet">

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
background:#f5f7fb;

}

.card{

width:400px;
background:#fff;
padding:40px 30px;
border-radius:18px;
text-align:center;
box-shadow:0 15px 35px rgba(0,0,0,.08);

}

.icon{

width:75px;
height:75px;
margin:auto;
border-radius:50%;
background:#22c55e;
color:white;
font-size:34px;
display:flex;
justify-content:center;
align-items:center;

}

h2{

margin:20px 0 10px;
color:#111827;
font-size:28px;

}

p{

color:#6b7280;
font-size:15px;
margin-bottom:28px;

}

.btn{

display:inline-block;
padding:12px 26px;
background:#2563eb;
color:white;
text-decoration:none;
border-radius:10px;
font-weight:500;
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
✓
</div>

<h2>Deleted Successfully</h2>

<p>
The company has been removed successfully.
</p>

<a href="ViewCompany" class="btn">
Back to Companies
</a>

</div>

</body>
</html>