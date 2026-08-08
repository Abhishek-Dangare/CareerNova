<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
    Boolean verified = (Boolean) session.getAttribute("otpVerified");

    if (verified == null || !verified) {
        response.sendRedirect("ForgotPassword.jsp");
        return;
    }
%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>Reset Password - CareerNova</title>

<style>

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:Arial,sans-serif;
}

body{
    min-height:100vh;
    display:flex;
    justify-content:center;
    align-items:center;
    background:linear-gradient(135deg,#0f1f52,#123c78,#0b2239);
}

.container{
    width:430px;
    background:white;
    padding:40px;
    border-radius:20px;
    box-shadow:0 20px 50px rgba(0,0,0,0.35);
}

.logo{
    text-align:center;
    font-size:30px;
    font-weight:bold;
    margin-bottom:20px;
}

.logo span{
    color:#2196f3;
}

h2{
    text-align:center;
    color:#172033;
    margin-bottom:10px;
}

.subtitle{
    text-align:center;
    color:#718096;
    font-size:14px;
    margin-bottom:30px;
}

label{
    display:block;
    color:#374151;
    font-weight:bold;
    margin-bottom:8px;
}

input{
    width:100%;
    padding:14px;
    border:1px solid #d1d5db;
    border-radius:10px;
    font-size:15px;
    margin-bottom:20px;
}

input:focus{
    outline:none;
    border-color:#2563eb;
    box-shadow:0 0 0 3px rgba(37,99,235,0.1);
}

button{
    width:100%;
    padding:14px;
    border:none;
    border-radius:10px;
    background:linear-gradient(90deg,#2563eb,#078bd3);
    color:white;
    font-size:16px;
    font-weight:bold;
    cursor:pointer;
}

button:hover{
    opacity:0.9;
}

.message{
    text-align:center;
    color:red;
    margin-bottom:15px;
}

</style>

</head>

<body>

<div class="container">

    <div class="logo">
        Career<span>Nova</span>
    </div>

    <h2>Reset Password</h2>

    <p class="subtitle">
        Create a new password for your account.
    </p>

    <%
        String message = (String) request.getAttribute("message");

        if(message != null){
    %>

        <div class="message">
            <%= message %>
        </div>

    <%
        }
    %>

    <form action="ResetPassword" method="post">

        <label>New Password</label>

        <input type="password"
               name="password"
               placeholder="Enter new password"
               minlength="6"
               required>

        <label>Confirm Password</label>

        <input type="password"
               name="confirmPassword"
               placeholder="Confirm new password"
               minlength="6"
               required>

        <button type="submit">
            Reset Password
        </button>

    </form>

</div>

</body>

</html>