<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Forgot Password - CareerNova</title>

<style>
*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:Segoe UI, sans-serif;
}

body{
    height:100vh;
    display:flex;
    justify-content:center;
    align-items:center;
    background:linear-gradient(135deg,#0f172a,#2563eb);
}

.box{
    width:430px;
    background:white;
    padding:40px;
    border-radius:20px;
    box-shadow:0 20px 50px rgba(0,0,0,0.3);
}

h1{
    text-align:center;
    color:#111827;
    margin-bottom:10px;
}

.subtitle{
    text-align:center;
    color:#6b7280;
    margin-bottom:30px;
}

label{
    display:block;
    margin-bottom:8px;
    font-weight:600;
    color:#374151;
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
}

button{
    width:100%;
    padding:14px;
    border:none;
    border-radius:10px;
    background:linear-gradient(90deg,#2563eb,#0ea5e9);
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
    font-weight:600;
}
</style>

</head>

<body>

<div class="box">

    <h1>Forgot Password?</h1>

    <p class="subtitle">
        Enter your registered email address
    </p>

    <form action="ForgotPassword" method="post">

        <label>Email Address</label>

        <input type="email"
               name="email"
               placeholder="Enter your email"
               required>

        <button type="submit">
            Send OTP →
        </button>

    </form>

    <div class="back">
        <a href="Login.html">← Back to Login</a>
    </div>

</div>

</body>
</html>