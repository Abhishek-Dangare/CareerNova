
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<title>CareerNova | Upload Resume</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
      rel="stylesheet">

<style>

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:'Segoe UI',sans-serif;
}

body{
    background:linear-gradient(135deg,#0f172a,#2563eb);
    min-height:100vh;
    display:flex;
    justify-content:center;
    align-items:center;
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
    width:700px;
    border:none;
    border-radius:20px;
    overflow:hidden;
    box-shadow:0 15px 40px rgba(0,0,0,.35);
}

.card-header{
    background:#0f172a;
    color:white;
    text-align:center;
    padding:25px;
}

.card-header h2{
    margin:0;
    font-weight:bold;
}

.card-body{
    padding:35px;
    background:white;
}

.upload-box{
    border:3px dashed #2563eb;
    border-radius:15px;
    padding:40px;
    text-align:center;
    background:#f8fbff;
}

.upload-box:hover{
    background:#eef6ff;
}

.upload-box h4{
    color:#1e3a8a;
    margin-bottom:15px;
}

.upload-box p{
    color:#666;
}

input[type=file]{
    margin-top:20px;
}

.btn-upload{
    width:100%;
    margin-top:25px;
    padding:14px;
    background:#2563eb;
    color:white;
    border:none;
    border-radius:8px;
    font-size:18px;
    font-weight:bold;
}

.btn-upload:hover{
    background:#1d4ed8;
}

.info{
    margin-top:20px;
    color:#555;
    font-size:14px;
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

<h2>📄 Upload Resume</h2>

<p>CareerNova Smart Recruitment Platform</p>

</div>

<div class="card-body">

<form action="uploadResume"
      method="post"
      enctype="multipart/form-data">

<div class="upload-box">

<h4>Select Your Resume</h4>

<p>Supported Formats: PDF, DOC, DOCX</p>

<input
type="file"
name="resume"
class="form-control"
accept=".pdf,.doc,.docx"
required>

</div>

<div class="info">

<strong>Instructions:</strong>

<ul>

<li>Upload only PDF, DOC or DOCX files.</li>

<li>Resume should be updated.</li>

<li>Maximum recommended size: 5 MB.</li>

<li>Only one resume can be active at a time.</li>

</ul>

</div>

<input
type="submit"
value="Upload Resume"
class="btn-upload">

</form>

</div>

</div>

</body>
</html>
