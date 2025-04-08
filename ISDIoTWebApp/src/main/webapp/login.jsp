<%@ page import="uts.isd.model.User" %>
<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%
  // Check if this is a form submission (POST request)
  if ("POST".equalsIgnoreCase(request.getMethod())) {
    // Retrieve login credentials from the request
    String email = request.getParameter("email");
    String password = request.getParameter("password");

    // Retrieve the previously registered user from application scope
    // (Assumes register.jsp stored the user as "registeredUser" in application scope)
    User regUser = (User) application.getAttribute("registeredUser");

    // Validate login credentials against the registered user
    if (regUser != null &&
            regUser.getEmail() != null &&
            regUser.getPassword() != null &&
            regUser.getEmail().equals(email) &&
            regUser.getPassword().equals(password)) {

      // Create a new session (or reuse the existing one) and store the user object for this session
      session = request.getSession(true);
      session.setAttribute("user", regUser);

      // Redirect to the welcome page after successful login
      response.sendRedirect("welcome.jsp");
      return;
    } else {
      // Set an error message if credentials are invalid
      request.setAttribute("error", "Invalid login credentials. Please try again or register.");
    }
  }
%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Login - IoT Bay</title>
  <link rel="stylesheet" href="style.css">
</head>
<body>
<div class="form-container">
  <h1>Log in</h1>
  <form method="post" action="login.jsp">
    <div class="form-group">
      <label for="email">Email:</label>
      <input type="email" id="email" name="email" placeholder="your@email"
             required>
    </div>

    <div class="form-group">
      <label for="password">Password:</label>
      <input type="password" id="password" name="password" placeholder="Minimum 7 characters" required>
    </div>

    <button type="submit" class="submit-btn">Login</button>
    <p>Don't have an account? <a href="register.jsp">Create one now</a></p>
  </form>
  <%
    // Display any error message if present
    if (request.getAttribute("error") != null) {
      out.println("<p style='color:red; text-align: center;'>" + request.getAttribute("error") + "</p>");
    }
  %>
</div>
</body>
</html>


