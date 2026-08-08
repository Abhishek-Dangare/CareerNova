<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>CareerNova | Register</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<style>

body{

background:linear-gradient(135deg,#0f172a,#2563eb);
height:100vh;
display:flex;
justify-content:center;
align-items:center;

}

.card{

width:430px;
padding:30px;
border-radius:20px;
box-shadow:0 15px 40px rgba(0,0,0,.3);

}

.btn-register{

width:100%;
background:#2563eb;
color:white;
font-weight:bold;

}

.btn-register:hover{

background:#1d4ed8;
color:white;

}

</style>

</head>

<body>

<div class="card">

<h2 class="text-center mb-4">
CareerNova Register
</h2>

<form action="register" method="post">

<div class="mb-3">

<label>Email</label>

<input
type="email"
name="email"
class="form-control"
required>

</div>

<div class="mb-3">

<label>Password</label>

<input
type="password"
name="password"
class="form-control"
required>

</div>

<div class="mb-3">

<label>Confirm Password</label>

<input
type="password"
name="confirmPassword"
class="form-control"
required>

</div>

<input
type="submit"
value="Register"
class="btn btn-register">

</form>

<br>

<div class="text-center">

Already have an account?

<a href="Login.html">

Login

</a>

</div>

</div>

</body>

</html>