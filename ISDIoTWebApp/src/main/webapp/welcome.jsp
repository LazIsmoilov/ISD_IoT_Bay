<%@ page import="uts.isd.model.User" %>
<%@ page contentType="text/html" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Welcome - IoT Bay</title>
  <link rel="stylesheet" href="style.css">
</head>
<body>

<%
  // Retrieve the user object from the session
  User user = (User) session.getAttribute("user");

  // Redirect to login page if no user is found in session
  if (user == null) {
    response.sendRedirect("login.jsp");
    return;
  }
%>

<div class="hero-container">
  <h1>Welcome, <%= user.getName() %>!</h1>
  <p>Your gateway to premium IoT devices starts here.</p>
  <a href="main.jsp" class="submit-btn">Go to Dashboard</a>
</div>

</body>
</html>
