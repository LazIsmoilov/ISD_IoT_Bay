<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Login</title>
  <link rel="stylesheet" href="style.css">
  <%@ include file="header.jsp" %>


</head>
<body>

<pref-header></pref-header>

<div class="form-container">
  <h1>Log in</h1>
  <form action="welcome.jsp" method="post">
    <table>
      <label for="email">Email</label>
      <input type="text" id="email" name="email" placeholder="your@email.com" required>

      <label for="password">Password</label>
      <input type="password" id="password" name="password" placeholder="•••••••" required>

      <br>

      <div class="forgot-password">
        <a href="forgot-password.jsp">Forgot password?</a>
      </div>

      <br>

      <button type="submit" class="submit-btn">Login</button>

      <br>
      <br>

      <div>
        Don't have an account? <a href="register.jsp">Create one now</a>
      </div>
    </table>
  </form>
</div>
</body>
</html>
