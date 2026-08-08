<%@page import="java.util.ArrayList"%>
<%@page import="com.careernova.bean.CompanyBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%
ArrayList<CompanyBean> list =
(ArrayList<CompanyBean>)request.getAttribute("companyList");
%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<title>CareerNova | View Companies</title>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css">

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
background:linear-gradient(180deg,#0f172a,#1e293b);
overflow:auto;
}

.logo{
text-align:center;
padding:25px;
font-size:28px;
font-weight:bold;
color:#38bdf8;
border-bottom:1px solid rgba(255,255,255,.15);
}

.sidebar a{
display:block;
padding:16px 22px;
text-decoration:none;
color:white;
transition:.3s;
font-size:15px;
}

.sidebar a:hover{
background:#2563eb;
padding-left:30px;
}

.sidebar i{
width:25px;
}

.main{
margin-left:260px;
}

.topbar{
height:75px;
background:white;
display:flex;
justify-content:space-between;
align-items:center;
padding:0 35px;
box-shadow:0 3px 12px rgba(0,0,0,.1);
}

.topbar h2{
color:#1e3a8a;
}

.admin{
font-weight:600;
color:#2563eb;
}

.content{
padding:30px;
}

.header-box{
display:flex;
justify-content:space-between;
align-items:center;
margin-bottom:25px;
}

.header-box h2{
color:#0f172a;
}

.add-btn{
background:#2563eb;
color:white;
padding:12px 22px;
border-radius:8px;
text-decoration:none;
transition:.3s;
font-weight:600;
}

.add-btn:hover{
background:#0f172a;
}

.search-box{
margin-bottom:20px;
}

.search-box input{
width:350px;
padding:12px 15px;
border:1px solid #ccc;
border-radius:8px;
outline:none;
font-size:15px;
}

.table-box{
background:white;
border-radius:15px;
overflow:hidden;
box-shadow:0 5px 20px rgba(0,0,0,.08);
}

table{
width:100%;
border-collapse:collapse;
}

table th{
background:#2563eb;
color:white;
padding:15px;
font-size:15px;
}

table td{
padding:15px;
text-align:center;
border-bottom:1px solid #eee;
font-size:14px;
}

table tr:hover{
background:#f8fafc;
}

.badge{
padding:7px 14px;
border-radius:20px;
font-size:13px;
font-weight:bold;
color:white;
}

.pending{
background:#f59e0b;
}

.approved{
background:#16a34a;
}

.rejected{
background:#dc2626;
}

.action-btn{
display:inline-flex;
justify-content:center;
align-items:center;
width:38px;
height:38px;
border-radius:8px;
color:white;
margin:2px;
text-decoration:none;
transition:.3s;
}

.action-btn:hover{
transform:translateY(-2px);
box-shadow:0 4px 10px rgba(0,0,0,.2);
}

.view{
background:#2563eb;
}

.edit{
background:#16a34a;
}

.delete{
background:#dc2626;
}
.footer{
text-align:center;
padding:20px;
color:#777;
font-size:14px;
}

</style>

</head>

<body>

<div class="sidebar">

<div class="logo">
CareerNova
</div>

<a href="AdminHome.jsp">
<i class="fa-solid fa-house"></i> Dashboard
</a>

<a href="AddCompany.html">
<i class="fa-solid fa-building"></i> Add Company
</a>

<a href="ViewCompany">
<i class="fa-solid fa-list"></i> View Companies
</a>

<a href="#">
<i class="fa-solid fa-user-tie"></i> Manage HR
</a>

<a href="#">
<i class="fa-solid fa-users"></i> Candidates
</a>

<a href="#">
<i class="fa-solid fa-briefcase"></i> Jobs
</a>

<a href="#">
<i class="fa-solid fa-chart-line"></i> Reports
</a>

<a href="LogoutServlet">
<i class="fa-solid fa-right-from-bracket"></i> Logout
</a>

</div>

<div class="main">

<div class="topbar">

<h2>Company Management</h2>

<div class="admin">
Welcome Admin
</div>

</div>

<div class="content">

<div class="header-box">

<h2>Registered Companies</h2>

<a href="AddCompany.html" class="add-btn">
<i class="fa-solid fa-plus"></i> Add Company
</a>

</div>

<div class="search-box">

<input type="text" placeholder="Search Company...">

</div>

<div class="table-box">
<table id="companyTable">

<thead>

<tr>

<th>ID</th>
<th>Company Name</th>
<th>Email</th>
<th>Phone</th>
<th>Industry</th>
<th>City</th>
<th>Status</th>
<th>Action</th>

</tr>

</thead>

<tbody>

<%

if(list!=null && !list.isEmpty()){

for(CompanyBean cb : list){

%>

<tr>

<td><%=cb.getCompanyId()%></td>

<td>

<b><%=cb.getCompanyName()%></b>

</td>

<td><%=cb.getCompanyEmail()%></td>

<td><%=cb.getCompanyPhone()%></td>

<td><%=cb.getIndustry()%></td>

<td><%=cb.getCity()%></td>

<td>

<%

String status = cb.getStatus();

if(status.equalsIgnoreCase("APPROVED")){

%>

<span class="badge approved">

Approved

</span>

<%

}else if(status.equalsIgnoreCase("PENDING")){

%>

<span class="badge pending">

Pending

</span>

<%

}else{

%>

<span class="badge rejected">

Rejected

</span>

<%

}

%>

</td>

<td>

<a class="action-btn view"
href="ViewCompanyDetails?id=<%=cb.getCompanyId()%>"
title="View">

<i class="fa-solid fa-eye"></i>

</a>

<a class="action-btn edit"
href="EditCompany?id=<%=cb.getCompanyId()%>"
title="Edit">

<i class="fa-solid fa-pen"></i>

</a>

<a class="action-btn delete"
   href="DeleteCompany?id=<%=cb.getCompanyId()%>"
   onclick="return confirm('Are you sure you want to delete this company?');"
   title="Delete">

    <i class="fa-solid fa-trash"></i>

</a>



</td>

</tr>

<%

}

}else{

%>

<tr>

<td colspan="8"
style="padding:40px;
font-size:18px;
color:#888;">

<i class="fa-solid fa-circle-info"></i>

No Companies Found

</td>

</tr>

<%

}

%>

</tbody>

</table>
</div>

<div class="footer">

© 2026 CareerNova | Smart Recruitment & Career Management Platform

</div>

</div>

</div>

<script>

// Live Search

const searchInput = document.querySelector(".search-box input");

searchInput.addEventListener("keyup", function(){

let filter = this.value.toUpperCase();

let table = document.getElementById("companyTable");

let tr = table.getElementsByTagName("tr");

for(let i=1;i<tr.length;i++){

let td = tr[i].getElementsByTagName("td")[1];

if(td){

let txt = td.textContent || td.innerText;

if(txt.toUpperCase().indexOf(filter)>-1){

tr[i].style.display="";

}else{

tr[i].style.display="none";

}

}

}

});

</script>

</body>
</html>