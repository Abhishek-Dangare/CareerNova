<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<title>Application Failed</title>

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">

<style>

body{
font-family:Poppins;
background:#eef3f8;
display:flex;
justify-content:center;
align-items:center;
height:100vh;
}

.box{

width:500px;
background:white;
padding:40px;
text-align:center;
border-radius:15px;
box-shadow:0 5px 15px rgba(0,0,0,.15);

}

h1{

color:red;
margin-bottom:20px;

}

a{

display:inline-block;
margin-top:20px;
padding:12px 25px;
background:#2563eb;
color:white;
text-decoration:none;
border-radius:8px;

}

</style>

</head>

<body>

<div class="box">

<h1>❌ Application Failed</h1>

<p>Something went wrong. Please try again.</p>

<a href="searchJobs">Back</a>

</div>

</body>

</html>