<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>Verify OTP - CareerNova</title>

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
    margin-bottom:12px;
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
    font-size:18px;
    text-align:center;
    letter-spacing:6px;
    margin-bottom:20px;
}

input:focus{
    outline:none;
    border-color:#2563eb;
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

.back{
    text-align:center;
    margin-top:20px;
}

.back a{
    color:#2563eb;
    text-decoration:none;
    font-weight:bold;
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

    <h2>Verify OTP</h2>

    <p class="subtitle">
        Enter the 6-digit OTP sent to your email.
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

    <form action="VerifyOTP" method="post">

        <label>Enter OTP</label>

        <input type="text"
               name="otp"
               maxlength="6"
               pattern="[0-9]{6}"
               placeholder="••••••"
               required>

        <button type="submit">
            Verify OTP →
        </button>

    </form>

    <div class="back">
        <a href="ForgotPassword.jsp">
            ← Change Email
        </a>
    </div>

</div>

</body>

</html>