<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<title>Experience Failed</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css">

<style>

body{

height:100vh;
display:flex;
justify-content:center;
align-items:center;
background:linear-gradient(135deg,#7f1d1d,#dc2626);

}

.card{

width:500px;
padding:40px;
text-align:center;
border-radius:20px;
background:white;
box-shadow:0 10px 30px rgba(0,0,0,.3);

}

i{

font-size:80px;
color:red;
margin-bottom:20px;

}

h2{

color:red;

}

.btn{

margin-top:25px;
padding:12px 25px;

}

</style>

</head>

<body>

<div class="card">

<i class="fa-solid fa-circle-xmark"></i>

<h2>Experience Save Failed</h2>

<p>Something went wrong while saving your experience.</p>

<a href="Experience.jsp" class="btn btn-danger">

Try Again

</a>

</div>

</body>

</html>