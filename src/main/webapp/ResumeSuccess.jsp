<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<title>CareerNova | Resume Uploaded</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" rel="stylesheet">

<style>

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:'Poppins',sans-serif;
}

body{

    background:linear-gradient(135deg,#2563eb,#0f172a);
    display:flex;
    justify-content:center;
    align-items:center;
    height:100vh;

}

.success-card{

    width:550px;
    background:white;
    border-radius:20px;
    padding:45px;
    text-align:center;
    box-shadow:0 15px 35px rgba(0,0,0,.3);

}

.icon{

    width:120px;
    height:120px;
    background:#22c55e;
    color:white;
    border-radius:50%;
    display:flex;
    justify-content:center;
    align-items:center;
    font-size:60px;
    margin:auto;

}

h1{

    margin-top:25px;
    color:#16a34a;
    font-weight:bold;

}

p{

    margin-top:20px;
    color:#555;
    font-size:18px;
    line-height:30px;

}

.info{

    margin-top:30px;
    background:#f8fafc;
    padding:20px;
    border-radius:12px;
    color:#444;
    font-size:16px;

}

.btn-home{

    margin-top:35px;
    background:#2563eb;
    color:white;
    padding:14px 35px;
    border-radius:8px;
    text-decoration:none;
    font-size:18px;
    font-weight:bold;
    transition:.3s;

}

.btn-home:hover{

    background:#0f172a;
    color:white;

}

.footer{

    margin-top:30px;
    color:#777;
    font-size:14px;

}

</style>

</head>

<body>

<div class="success-card">

<div class="icon">

<i class="fa-solid fa-check"></i>

</div>

<h1>

Resume Uploaded Successfully

</h1>

<p>

Congratulations! 🎉

<br><br>

Your resume has been uploaded successfully to the
CareerNova Recruitment Portal.

Recruiters can now view your resume while shortlisting
your profile for jobs.

</p>

<div class="info">

<b>Next Steps</b>

<br><br>

✔ Complete Skills

<br>

✔ Add Projects

<br>

✔ Add Certificates

<br>

✔ Apply for Jobs

</div>

<a href="CandidateHome.jsp" class="btn-home">

Go To Dashboard

</a>

<div class="footer">

© 2026 CareerNova | Smart Recruitment & Career Management Platform

</div>

</div>

</body>
</html>