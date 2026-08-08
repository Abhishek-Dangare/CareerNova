<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Upload Failed</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<style>

body{
    background:#fff5f5;
    display:flex;
    justify-content:center;
    align-items:center;
    height:100vh;
}

.card{
    width:500px;
    border:none;
    border-radius:20px;
    text-align:center;
    padding:40px;
    box-shadow:0 10px 30px rgba(0,0,0,.2);
}

.fail{
    font-size:70px;
}

.btn-back{
    margin-top:25px;
    background:#dc3545;
    color:white;
    font-weight:bold;
}

.btn-back:hover{
    background:#bb2d3b;
    color:white;
}

</style>

</head>

<body>

<div class="card">

<div class="fail">
❌
</div>

<h2 class="mt-3 text-danger">
Resume Upload Failed
</h2>

<p class="text-muted">
Something went wrong while uploading your resume.
Please try again.
</p>

<a href="UploadResume.jsp"
class="btn btn-back">
Try Again
</a>

</div>

</body>
</html>