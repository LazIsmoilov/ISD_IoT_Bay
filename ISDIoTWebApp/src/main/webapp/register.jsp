<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@page session="true" %>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Registration page</title>
    <link rel="stylesheet" type="text/css" href="style.css">
    <%@ include file="header.jsp" %>

</head>
<body>

<pref-header></pref-header>

<div class="form-container">
    <h1>Sign up</h1>
    <form action="welcome.jsp" method="post">
        <table>
            <div class="form-group">
                <label for="name">Full Name</label>
                <input type="text" id="name" name="name" placeholder="John Smith" required>
            </div>

            <div class="form-group">
                <label for="email">Email</label>
                <input type="email" id="email" name="email" placeholder="your@email.com" required>
            </div>

            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" id="password" name="password" placeholder="•••••••" required minlength="7">
            </div>

            <div class="form-group">
                <label for="dob">Date of Birth</label>
                <input type="date" id="dob" name="dob" required>
            </div>

            <div class="form-group">
                <label for="gender">Gender</label>
                <select id="gender" name="gender" required>
                    <option value="" disabled selected>Select</option>
                    <option value="Male">Male</option>
                    <option value="Female">Female</option>
                    <option value="Other">Other</option>
                </select>
            </div>

            <br>

            <div class="checkbox-group">
                <input type="checkbox" id="agreeToTOS" name="agreeToTOS" value="yes" required>
                <label for="agreeToTOS">I agree to the Terms of Service</label>
            </div>

            <br>

        <button type="submit" class="submit-btn">Register</button>

            <br>
            <br>

        <div>
            Already have an account? <a href="login.jsp">Sign in</a>
        </div>
    </form>


</div>


</body>
</html>