<%@ page import="uts.isd.model.User" %>
<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%
    // Retrieve the user object from the session
    User user = (User) session.getAttribute("user");

    // Redirect to login page if no user is found in session
    if (user == null) {
        response.sendRedirect("login.jsp");
        return;
    }

    // Check for any session message (e.g., from successful profile update)
    String message = (String) session.getAttribute("message");
    if (message != null) {
%>
<p style="color: green; text-align: center;"><%= message %></p>
<%
        session.removeAttribute("message"); // Clear the message after displaying it
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>IoT Bay Dashboard</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
<div class="dashboard-container">
    <h1>Welcome back, <%= user.getName() %>!</h1>
    <main>
        <p>Discover the latest IoT devices tailored for your smart home and beyond.</p>
        <a href="edit.jsp" class="submit-btn">Edit Profile</a>
        <a href="logout.jsp" class="submit-btn">Log out</a>
    </main>
</div>
</body>
</html>



