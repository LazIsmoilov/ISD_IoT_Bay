<%@ page import="uts.isd.model.User" %>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%
    // Processing registration
    if ("POST".equalsIgnoreCase(request.getMethod())) {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String dob = request.getParameter("dob");
        String gender = request.getParameter("gender");

        // Validating inputs (trimming to remove extra spaces)
        if (name != null && email != null && password != null && dob != null && gender != null &&
                !name.trim().isEmpty() && !email.trim().isEmpty() && !password.trim().isEmpty() &&
                !dob.trim().isEmpty() && !gender.trim().isEmpty()) {

            User user = new User();
            user.setName(name);
            user.setEmail(email);
            user.setPassword(password);
            user.setDob(dob);
            user.setGender(gender);

            // Storing the new user in the session.
            session.setAttribute("user", user);

            response.sendRedirect("welcome.jsp");
            return;
        }
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register - IoT Bay</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
<%@ include file="header.jsp" %>
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
        <div class="checkbox-group">
            <input type="checkbox" id="agreeToTOS" name="agreeToTOS" value="yes" required>
            <label for="agreeToTOS">I agree to the Terms of Service</label>
        </div>
        <br>
        <button type="submit" class="submit-btn">Register</button>
        <br><br>
        <p>Already have an account? <a href="login.jsp">Sign in</a></p>
    </form>
</div>
</body>
</html>


