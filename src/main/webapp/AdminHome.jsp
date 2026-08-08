<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CareerNova | Admin Dashboard</title>

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">

<style>

*{
	margin:0;
	padding:0;
	box-sizing:border-box;
	font-family:'Poppins',sans-serif;
}

body{
	background:#edf2f7;
}

.sidebar{
	position:fixed;
	left:0;
	top:0;
	width:260px;
	height:100%;
	background:#0f172a;
	color:#fff;
	padding:25px;
}

.sidebar h2{
	text-align:center;
	color:#38bdf8;
	margin-bottom:40px;
}

.sidebar a{
	display:block;
	text-decoration:none;
	color:white;
	padding:14px;
	margin:10px 0;
	border-radius:8px;
	transition:.3s;
	font-size:15px;
}

.sidebar a:hover{
	background:#2563eb;
	padding-left:20px;
}

.main{
	margin-left:260px;
}

.header{
	height:75px;
	background:white;
	display:flex;
	justify-content:space-between;
	align-items:center;
	padding:0 35px;
	box-shadow:0 3px 10px rgba(0,0,0,.1);
}

.header h2{
	color:#1e3a8a;
}

.admin{
	font-weight:600;
	color:#2563eb;
}

.cards{

	padding:35px;

	display:grid;

	grid-template-columns:repeat(auto-fit,minmax(250px,1fr));

	gap:25px;

}

.card{

	background:white;
	border-radius:15px;
	padding:25px;
	box-shadow:0 5px 15px rgba(0,0,0,.12);
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

}

.card a{

	text-decoration:none;
	background:#2563eb;
	color:white;
	padding:10px 18px;
	border-radius:6px;

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

<a href="AdminHome.jsp">🏠 Dashboard</a>

<a href="AddCompany.html">🏢 Add Company</a>

<a href="ViewCompany">🏢 View Companies</a>

<a href="AddHR.html">👨‍💼 Add HR</a>

<li><a href="ViewCandidate">👨‍🎓Candidates</a></li>

<a href="ViewJob">💼 Jobs</a>

<a href="Report">📊 Reports</a>

<a href="Logout">🚪 Logout</a>

</div>

<div class="main">

<div class="header">

<h2>Admin Dashboard</h2>

<div class="admin">

Welcome Admin

</div>

</div>

<div class="cards">

<div class="card">

<h3>🏢 Add Company</h3>

<p>Create new company accounts for recruiters.</p>

<a href="AddCompany.html">Open</a>

</div>

<div class="card">

<h3>📋 View Companies</h3>

<p>Manage all registered companies.</p>

<a href="ViewCompany">Open</a>

</div>

<div class="card">

<h3>👨‍💼 Manage HR</h3>

<p>Add and manage HR users.</p>


<a href="AddHR.html">Open</a>

</div>

<div class="card">

<h3>👨‍🎓 Candidates</h3>

<p>View all registered candidates.</p>
<a href="ViewCandidate">Open</a>

</div>

<div class="card">

<h3>💼 Jobs</h3>

<p>Manage all job postings.</p>
<li>
    <a href="ViewJob">💼 Open</a>
</li>

</div>

<div class="card">

<h3>📊 Reports</h3>

<p>Generate recruitment reports.</p>

<a href="Report">📊 Open</a></div>

</div>

</div>

<div class="footer">

© 2026 CareerNova | Smart Recruitment & Career Management Platform

</div>

</div>

</body>
</html>