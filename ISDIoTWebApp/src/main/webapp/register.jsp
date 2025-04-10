<%@ page import="uts.isd.model.User" %>
<%@ page contentType="text/html" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Register at IoT Bay - Your gateway to premium IoT devices and expert support.">
    <title>Register - IoT Bay</title>
    <link rel="stylesheet" href="style.css">
</head>

<body>

<%
    // Retrieve session
    if (session == null) {
        session = request.getSession();
    }

    // Retrieve form parameters
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String password = request.getParameter("password");
    String dob = request.getParameter("dob");
    String gender = request.getParameter("gender");

    // Input validation
    if (name != null && email != null && password != null && dob != null && gender != null &&
            !name.isEmpty() && !email.isEmpty() && !password.isEmpty() && !dob.isEmpty() && !gender.isEmpty()) {

        // Create a new User object
        User user = new User();
        user.setName(name);
        user.setEmail(email);
        user.setPassword(password);
        user.setDob(dob);
        user.setGender(gender);

        // Store user in the session
        session.setAttribute("user", user);

        // Redirect to the welcome page
        response.sendRedirect("welcome.jsp");
    }
%>

<div class="form-container">
    <h1>Sign Up</h1>
    <form action="register.jsp" method="post">
        <div class="form-group">
            <label for="name">Full Name:</label>
            <input type="text" id="name" name="name" placeholder="John Doe" required>
        </div>

        <div class="form-group">
            <label for="email">Email:</label>
            <input type="email" id="email" name="email" placeholder="you@example.com" required>
        </div>

        <div class="form-group">
            <label for="password">Password:</label>
            <input type="password" id="password" name="password" placeholder="Minimum 7 characters" required minlength="7">
        </div>

        <div class="form-group">
            <label for="dob">Date of Birth:</label>
            <input type="date" id="dob" name="dob" required>
        </div>

        <div class="form-group">
            <label for="gender">Gender:</label>
            <select id="gender" name="gender" required>
                <option value="" disabled selected>Select</option>
                <option value="Male">Male</option>
                <option value="Female">Female</option>
            </select>
        </div>

        <div class="form-container">
            <form action="register.jsp" method="post">
                <div class="checkbox-group">
                    <input type="checkbox" id="agreeToTOS" name="agreeToTOS" value="yes" required>
                    <label for="agreeToTOS">I agree to the <a href="">Terms of Service</a></label>
        </div>
        <button type="submit" class="submit-btn">Register</button>

        <p>Already have an account? <a href="login.jsp">Sign in</a></p>
    </form>
</div>

</body>
</html>
