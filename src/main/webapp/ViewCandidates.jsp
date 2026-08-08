<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.util.*" %>
<%@ page import="com.careernova.bean.CandidateBean" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Manage Candidates</title>

<style>

body{
    margin:0;
    font-family:Arial, Helvetica, sans-serif;
    background:#f4f6f9;
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
    background:white;
    box-shadow:0 0 10px rgba(0,0,0,.15);
}

th{
    background:#2c3e50;
    color:white;
    padding:12px;
}

td{
    padding:10px;
    text-align:center;
    border-bottom:1px solid #ddd;
}

tr:hover{
    background:#f2f2f2;
}

.back{
    display:inline-block;
    margin-bottom:20px;
    text-decoration:none;
    background:#3498db;
    color:white;
    padding:10px 18px;
    border-radius:5px;
}

.back:hover{
    background:#2980b9;
}

</style>

</head>
<body>

<div class="container">

<a href="AdminHome.jsp" class="back">← Back to Dashboard</a>

<h2>Manage Candidates</h2>

<table>

<tr>
<th>ID</th>
<th>User ID</th>
<th>Name</th>
<th>Gender</th>
<th>Email</th>
<th>Mobile</th>
<th>City</th>
<th>State</th>
<th>Status</th>
</tr>

<%
List<CandidateBean> list=(List<CandidateBean>)request.getAttribute("candidateList");

if(list!=null){

for(CandidateBean c:list){
%>

<tr>

<td><%=c.getCandidateId()%></td>
<td><%=c.getUserId()%></td>
<td><%=c.getFirstName()+" "+c.getLastName()%></td>
<td><%=c.getGender()%></td>
<td><%=c.getEmail()%></td>
<td><%=c.getMobileNo()%></td>
<td><%=c.getCity()%></td>
<td><%=c.getState()%></td>
<td><%=c.getStatus()%></td>

</tr>

<%
}
}
%>

</table>

</div>

</body>
</html>