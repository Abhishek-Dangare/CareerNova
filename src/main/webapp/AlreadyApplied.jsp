<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<title>Already Applied</title>

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">

<style>

*{
margin:0;
padding:0;
box-sizing:border-box;
font-family:'Poppins',sans-serif;
}

body{
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
border-radius:15px;
text-align:center;
box-shadow:0 10px 20px rgba(0,0,0,.15);

}

h1{

color:#eab308;
margin-bottom:20px;

}

p{

font-size:18px;
color:#555;
margin-bottom:30px;

}

a{

display:inline-block;
padding:12px 25px;
background:#2563eb;
color:white;
text-decoration:none;
border-radius:8px;

}

a:hover{

background:#0f172a;

}

</style>

</head>

<body>

<div class="box">

<h1>⚠ Already Applied</h1>

<p>
You have already applied for this job.
</p>

<a href="searchJobs">Back To Jobs</a>

</div>

</body>

</html>