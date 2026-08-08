<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="com.careernova.bean.JobBean"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Manage Jobs</title>

<style>
body{
    font-family:Arial, sans-serif;
    background:#f4f6f9;
    margin:0;
}

.container{
    width:95%;
    margin:30px auto;
}

h2{
    text-align:center;
    color:#2c3e50;
}

table{
    width:100%;
    border-collapse:collapse;
    background:#fff;
}

th{
    background:#2c3e50;
    color:white;
    padding:12px;
}

td{
    padding:10px;
    border:1px solid #ddd;
    text-align:center;
}

tr:nth-child(even){
    background:#f9f9f9;
}

tr:hover{
    background:#eef5ff;
}
.back-btn{
    display:inline-block;
    margin-bottom:20px;
    padding:10px 18px;
    background:#3498db;
    color:white;
    text-decoration:none;
    border-radius:5px;
    font-weight:bold;
}

.back-btn:hover{
    background:#2980b9;
}
</style>

</head>
<body>

<div class="container">
<a href="AdminHome.jsp" class="back-btn">← Back to Dashboard</a>

<h2>Manage Jobs</h2>

<table>

<tr>
<th>ID</th>
<th>Company</th>
<th>Category</th>
<th>Job Title</th>
<th>Location</th>
<th>Type</th>
<th>Experience</th>
<th>Salary</th>
<th>Vacancy</th>
<th>Status</th>
</tr>

<%
List<JobBean> list=(List<JobBean>)request.getAttribute("jobList");

if(list!=null){

for(JobBean jb:list){
%>

<tr>

<td><%=jb.getJobId()%></td>
<td><%=jb.getCompanyId()%></td>
<td><%=jb.getCategoryId()%></td>
<td><%=jb.getJobTitle()%></td>
<td><%=jb.getJobLocation()%></td>
<td><%=jb.getJobType()%></td>
<td><%=jb.getExperienceRequired()%></td>
<td><%=jb.getSalary()%></td>
<td><%=jb.getVacancy()%></td>
<td><%=jb.getStatus()%></td>

</tr>

<%
}
}
%>

</table>

</div>

</body>
</html>