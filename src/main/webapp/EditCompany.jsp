<%@page import="com.careernova.bean.CompanyBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%
CompanyBean cb=(CompanyBean)request.getAttribute("company");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Company</title>

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600&display=swap" rel="stylesheet">

<style>

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:'Poppins',sans-serif;
}

body{
    background:linear-gradient(135deg,#eef2ff,#dbeafe);
    min-height:100vh;
    padding:40px;
}

.container{
    width:850px;
    margin:auto;
    background:#fff;
    border-radius:18px;
    padding:35px 40px;
    box-shadow:0 15px 35px rgba(0,0,0,.12);
    border-top:6px solid #2563eb;
}

h2{
    text-align:center;
    color:#1e40af;
    margin-bottom:30px;
    font-size:30px;
    font-weight:600;
}

table{
    width:100%;
    border-collapse:separate;
    border-spacing:0 14px;
}

td:first-child{
    width:220px;
    font-weight:600;
    color:#374151;
}

input,
textarea,
select{
    width:100%;
    padding:12px 15px;
    border:1px solid #d1d5db;
    border-radius:10px;
    outline:none;
    font-size:15px;
    transition:.3s;
    background:#f9fafb;
}

input:focus,
textarea:focus,
select:focus{
    border-color:#2563eb;
    background:#fff;
    box-shadow:0 0 8px rgba(37,99,235,.25);
}

textarea{
    height:100px;
    resize:none;
}

.btn{
    padding:12px 30px;
    border:none;
    border-radius:10px;
    cursor:pointer;
    font-size:15px;
    font-weight:600;
    transition:.3s;
}

.update{
    background:linear-gradient(135deg,#2563eb,#1d4ed8);
    color:white;
}

.update:hover{
    transform:translateY(-3px);
    box-shadow:0 8px 18px rgba(37,99,235,.35);
}

.back{
    display:inline-block;
    text-decoration:none;
    background:#6b7280;
    color:white;
    padding:12px 30px;
    border-radius:10px;
    margin-left:12px;
    font-weight:600;
    transition:.3s;
}

.back:hover{
    background:#374151;
    transform:translateY(-3px);
}

</style>

</head>

<body>

<div class="container">

<h2>Edit Company</h2>

<form action="UpdateCompany" method="post">

<input type="hidden" name="companyId"
value="<%=cb.getCompanyId()%>">

<table>

<tr>
<td>Company Name</td>
<td>
<input type="text" name="companyName"
value="<%=cb.getCompanyName()%>">
</td>
</tr>

<tr>
<td>Email</td>
<td>
<input type="email" name="companyEmail"
value="<%=cb.getCompanyEmail()%>">
</td>
</tr>

<tr>
<td>Phone</td>
<td>
<input type="text" name="companyPhone"
value="<%=cb.getCompanyPhone()%>">
</td>
</tr>

<tr>
<td>Website</td>
<td>
<input type="text" name="website"
value="<%=cb.getWebsite()%>">
</td>
</tr>

<tr>
<td>Industry</td>
<td>
<input type="text" name="industry"
value="<%=cb.getIndustry()%>">
</td>
</tr>

<tr>
<td>Company Size</td>
<td>
<input type="number" name="companySize"
value="<%=cb.getCompanySize()%>">
</td>
</tr>

<tr>
<td>Address</td>
<td>
<textarea name="address"><%=cb.getAddress()%></textarea>
</td>
</tr>

<tr>
<td>City</td>
<td>
<input type="text" name="city"
value="<%=cb.getCity()%>">
</td>
</tr>

<tr>
<td>State</td>
<td>
<input type="text" name="state"
value="<%=cb.getState()%>">
</td>
</tr>

<tr>
<td>Pincode</td>
<td>
<input type="text" name="pincode"
value="<%=cb.getPincode()%>">
</td>
</tr>

<tr>
<td>Description</td>
<td>
<textarea name="description"><%=cb.getDescription()%></textarea>
</td>
</tr>

<tr>
<td>Status</td>
<td>

<select name="status">

<option value="PENDING"
<%=cb.getStatus().equals("PENDING")?"selected":""%>>

PENDING

</option>

<option value="APPROVED"
<%=cb.getStatus().equals("APPROVED")?"selected":""%>>

APPROVED

</option>

<option value="REJECTED"
<%=cb.getStatus().equals("REJECTED")?"selected":""%>>

REJECTED

</option>

</select>

</td>
</tr>

<tr>

<td colspan="2" align="center">

<button class="btn update">

Update Company

</button>

<a href="ViewCompany" class="back">

Back

</a>

</td>

</tr>

</table>

</form>

</div>

</body>
</html>