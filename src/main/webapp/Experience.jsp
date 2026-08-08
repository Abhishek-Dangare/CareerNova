
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<title>CareerNova | Experience Details</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
rel="stylesheet">

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css">

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


/* =========================
   BACK TO DASHBOARD
========================= */

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

width:900px;
background:rgba(255,255,255,.12);
backdrop-filter:blur(18px);
border-radius:25px;
box-shadow:0 15px 40px rgba(0,0,0,.35);
overflow:hidden;
border:1px solid rgba(255,255,255,.15);

}

.card-header{

background:rgba(255,255,255,.08);
padding:30px;
text-align:center;
color:white;

}

.card-header h2{

font-weight:700;
margin-top:10px;

}

.card-header p{

color:#dbeafe;
margin-top:10px;

}

.card-body{

padding:40px;

}

label{

font-weight:600;
color:white;
margin-bottom:8px;

}

.form-control{

height:52px;
border:none;
border-radius:12px;
background:rgba(255,255,255,.95);

}

.form-control:focus{

box-shadow:0 0 12px #38bdf8;

}

textarea{

height:130px !important;
resize:none;

}

.btn-save{

width:100%;
height:55px;
border:none;
border-radius:12px;
background:#38bdf8;
color:white;
font-size:20px;
font-weight:bold;
transition:.3s;

}

.btn-save:hover{

background:#0284c7;
transform:scale(1.02);

}

.icon{

color:#38bdf8;
margin-right:8px;

}

.footer{

text-align:center;
padding:20px;
color:white;
opacity:.8;

}

</style>

</head>

<body>


<!-- =========================
     BACK TO DASHBOARD
========================= -->

<a href="CandidateHome.jsp" class="back-dashboard">
    ← Back to Dashboard
</a>


<div class="card">

<div class="card-header">

<i class="fa-solid fa-briefcase fa-3x"></i>

<h2>Experience Details</h2>

<p>
Add your work experience to build a strong professional profile.
</p>

</div>

<div class="card-body">

<form action="experience" method="post">

<div class="row">

<div class="col-md-6 mb-4">

<label>

<i class="fa-solid fa-building icon"></i>

Company Name

</label>

<input
type="text"
name="companyName"
class="form-control"
placeholder="Enter Company Name"
required>

</div>

<div class="col-md-6 mb-4">

<label>

<i class="fa-solid fa-user-tie icon"></i>

Job Title

</label>

<input
type="text"
name="jobTitle"
class="form-control"
placeholder="Java Developer"
required>

</div>

</div>


<div class="row">

<div class="col-md-6 mb-4">

<label>

<i class="fa-solid fa-calendar-days icon"></i>

Start Date

</label>

<input
type="date"
name="startDate"
class="form-control"
required>

</div>

<div class="col-md-6 mb-4">

<label>

<i class="fa-solid fa-calendar-check icon"></i>

End Date

</label>

<input
type="date"
name="endDate"
class="form-control">

</div>

</div>


<div class="row">

<div class="col-md-6 mb-4">

<label>

<i class="fa-solid fa-clock icon"></i>

Experience (Years)

</label>

<input
type="number"
step="0.1"
name="experienceYears"
class="form-control"
placeholder="Example : 2.5">

</div>

<div class="col-md-6 mb-4">

<label>

<i class="fa-solid fa-chart-line icon"></i>

Current Position

</label>

<select class="form-control">

<option>Select</option>

<option>Fresher</option>

<option>Working</option>

<option>Internship</option>

</select>

</div>

</div>


<div class="mb-4">

<label>

<i class="fa-solid fa-file-lines icon"></i>

Job Description

</label>

<textarea
name="jobDescription"
class="form-control"
placeholder="Describe your work, technologies used and responsibilities..."></textarea>

</div>


<input
type="submit"
value="💾 Save Experience"
class="btn-save">

</form>

</div>

<div class="footer">

© 2026 CareerNova | Smart Recruitment & Career Management Platform

</div>

</div>

</body>
</html>
