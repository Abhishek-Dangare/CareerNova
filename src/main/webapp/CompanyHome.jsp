<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>CareerNova | Company Dashboard</title>

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
}

.sidebar{
    position:fixed;
    left:0;
    top:0;
    width:250px;
    height:100%;
    background:#0f172a;
    color:white;
    padding:25px;
}

.sidebar h2{
    text-align:center;
    margin-bottom:35px;
    color:#38bdf8;
}

.sidebar a{
    display:block;
    color:white;
    text-decoration:none;
    padding:14px;
    margin:8px 0;
    border-radius:8px;
    transition:.3s;
}

.sidebar a:hover{
    background:#2563eb;
}

.main{
    margin-left:250px;
}

.header{
    height:70px;
    background:white;
    display:flex;
    justify-content:space-between;
    align-items:center;
    padding:0 35px;
    box-shadow:0 2px 10px rgba(0,0,0,.1);
}

.header h2{
    color:#1e3a8a;
}

.profile{
    font-weight:bold;
    color:#2563eb;
}

.cards{
    padding:35px;
    display:grid;
    grid-template-columns:repeat(auto-fit,minmax(280px,1fr));
    gap:25px;
}

.card{
    background:white;
    border-radius:15px;
    padding:25px;
    box-shadow:0 5px 15px rgba(0,0,0,.1);
    transition:.3s;
}

.card:hover{
    transform:translateY(-8px);
}

.card h3{
    color:#1e3a8a;
    margin-bottom:15px;
}

.card p{
    color:#666;
    margin-bottom:20px;
    line-height:24px;
}

.card a{
    display:inline-block;
    text-decoration:none;
    background:#2563eb;
    color:white;
    padding:10px 20px;
    border-radius:6px;
    transition:.3s;
}

.card a:hover{
    background:#0f172a;
}

.footer{
    text-align:center;
    padding:20px;
    color:#777;
}

</style>

</head>

<body>

<div class="sidebar">

<h2>CareerNova</h2>

<a href="CompanyHome.jsp">🏠 Dashboard</a>

<a href="MyCompanyProfile">🏢 Company Profile</a>

<a href="Reports">📊 Company Reports</a>

<a href="Logout">🚪 Logout</a>

</div>

<div class="main">

<div class="header">

<h2>Company Dashboard</h2>

<div class="profile">

Welcome Company

</div>

</div>

<div class="card">

<h3>🏢 Company Profile</h3>

<p>
Manage your company information including company name,
website, industry, address and contact details.
</p>

<a href="MyCompanyProfile">
Open
</a>

</div>

<div class="card">

<h3>📊 Company Reports</h3>

<p>
View company reports including recruitment summary,
registered HR details and hiring statistics.
</p>

<a href="companyReports">Open</a>

</div>

<div class="card">

<h3>🚪 Logout</h3>

<p>
Securely logout from your Company Dashboard.
</p>

<a href="Logout">
Logout
</a>

</div>

</div>

<div class="footer">

© 2026 CareerNova | Smart Recruitment & Career Management Platform

</div>

</div>

</body>

</html>