<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Login</title>
  <link rel="stylesheet" href="style.css">
</head>
<body>
<header class="header">
  <h1>IoT Bay</h1>
</header>

<main class="content container">
  <h1>Login</h1>
  <form action="welcome.jsp" method="post" class="main-content">
    <label for="email">Email</label>
    <input id="email" name="email" type="text" required>

    <label for="password">Password</label>
    <input id="password" name="password" type="password" required>

    <input type="submit" value="Login">
  </form>
  <p>Don't have an account? <a href="register.jsp">Register here</a></p>
</main>

<footer class="footer">
  <p>Stylesheet is not to be used in assessable submissions</p>
</footer>
</body>
</html>
