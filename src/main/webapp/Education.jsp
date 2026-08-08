
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>CareerNova | Education Details</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
rel="stylesheet">

<link rel="preconnect" href="https://fonts.googleapis.com">

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap"
rel="stylesheet">

<style>

*{
margin:0;
padding:0;
box-sizing:border-box;
font-family:'Poppins',sans-serif;
}

body{

background:linear-gradient(135deg,#0f172a,#1e3a8a,#2563eb);
min-height:100vh;
display:flex;
justify-content:center;
align-items:center;
padding:40px;

}

/* BACK TO DASHBOARD */

.back-dashboard{

position:fixed;

top:25px;
right:30px;

background:white;

color:#1d4ed8;

text-decoration:none;

padding:11px 20px;

border-radius:10px;

font-size:13px;

font-weight:600;

box-shadow:0 8px 20px rgba(0,0,0,.20);

transition:.3s;

z-index:1000;

}

.back-dashboard:hover{

background:#2563eb;

color:white;

transform:translateY(-2px);

box-shadow:0 10px 25px rgba(0,0,0,.30);

}

.card{

width:100%;
max-width:900px;
border:none;
border-radius:25px;
overflow:hidden;
background:rgba(255,255,255,.12);
backdrop-filter:blur(18px);
box-shadow:0 20px 60px rgba(0,0,0,.35);

}

.card-header{

padding:35px;
background:rgba(255,255,255,.08);
text-align:center;
color:white;
border:none;

}

.card-header h2{

font-weight:700;
margin-bottom:10px;

}

.card-header p{

opacity:.85;
margin:0;

}

.card-body{

padding:40px;
background:white;

}

label{

font-weight:600;
margin-bottom:8px;

}

.form-control{

height:50px;
border-radius:12px;
border:1px solid #dcdcdc;

}

.form-control:focus{

border-color:#2563eb;
box-shadow:0 0 12px rgba(37,99,235,.25);

}

.btn-save{

width:100%;
height:55px;
background:linear-gradient(90deg,#2563eb,#1d4ed8);
color:white;
font-size:18px;
font-weight:600;
border:none;
border-radius:12px;
transition:.3s;

}

.btn-save:hover{

transform:translateY(-2px);
box-shadow:0 10px 20px rgba(37,99,235,.4);

}

.footer{

text-align:center;
margin-top:25px;
color:#666;
font-size:14px;

}

</style>

</head>

<body>


<!-- BACK TO DASHBOARD BUTTON -->

<a href="CandidateHome.jsp" class="back-dashboard">
    ← Back to Dashboard
</a>


<div class="card">

<div class="card-header">

<h2>🎓 Education Details</h2>

<p>

Build your professional academic profile for recruiters.

</p>

</div>

<div class="card-body">

<form action="education" method="post">

<div class="row">

<div class="col-md-6 mb-4">

<label>Qualification</label>

<input
type="text"
name="qualification"
class="form-control"
placeholder="BCA, MCA, B.Tech..."
required>

</div>

<div class="col-md-6 mb-4">

<label>College Name</label>

<input
type="text"
name="collegeName"
class="form-control"
placeholder="Enter College Name"
required>

</div>

<div class="col-md-12 mb-4">

<label>University Name</label>

<input
type="text"
name="universityName"
class="form-control"
placeholder="Enter University Name">

</div>

<div class="col-md-4 mb-4">

<label>Passing Year</label>

<input
type="number"
name="passingYear"
class="form-control"
placeholder="2026"
required>

</div>

<div class="col-md-4 mb-4">

<label>Percentage</label>

<input
type="number"
step="0.01"
name="percentage"
class="form-control"
placeholder="75.50">

</div>

<div class="col-md-4 mb-4">

<label>CGPA</label>

<input
type="number"
step="0.01"
name="cgpa"
class="form-control"
placeholder="8.75">

</div>

<div class="col-md-12">

<button
type="submit"
class="btn btn-save">

Save Education

</button>

</div>

</div>

</form>

<div class="footer">

CareerNova © 2026 | Smart Recruitment & Career Management Platform

</div>

</div>

</div>

</body>
</html>
