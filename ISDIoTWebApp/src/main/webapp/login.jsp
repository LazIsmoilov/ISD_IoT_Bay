<%@ page import="uts.isd.model.User" %>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%
  // Processing login
  if ("POST".equalsIgnoreCase(request.getMethod())) {
    String email = request.getParameter("email");
    String password = request.getParameter("password");

    // Assuming the registered user is stored in application
    User regUser = (User) application.getAttribute("registeredUser");

    if (regUser != null &&
            regUser.getEmail() != null &&
            regUser.getPassword() != null &&
            regUser.getEmail().equals(email) &&
            regUser.getPassword().equals(password)) {

      session = request.getSession(true);
      session.setAttribute("user", regUser);
      response.sendRedirect("welcome.jsp");
      return;
    } else {
      request.setAttribute("error", "Invalid login credentials. Please try again or register.");
    }
  }
%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Login - IoT Bay</title>
  <link rel="stylesheet" href="style.css">
  <%@ include file="header.jsp" %>
</head>
<body>
<pref-header></pref-header>
<div class="form-container">
  <h1>Log in</h1>
  <form action="login.jsp" method="post">
    <div class="form-group">
      <label for="email">Email</label>
      <input type="text" id="email" name="email" placeholder="your@email.com"
             required>
    </div>
    <div class="form-group">
      <label for="password">Password</label>
      <input type="password" id="password" name="password" placeholder="•••••••"
             required>
    </div>
    <div class="forgot-password">
      <a href="forgot-password.jsp">Forgot password?</a>
    </div>
    <br>
    <button type="submit" class="submit-btn">Login</button>
    <br><br>
    <p>Don't have an account? <a href="register.jsp">Create one now</a></p>
  </form>
  <%
    if (request.getAttribute("error") != null) {
      out.println("<p style='color:red; text-align: center;'>"
              + request.getAttribute("error") + "</p>");
    }
  %>
</div>
</body>
</html>



