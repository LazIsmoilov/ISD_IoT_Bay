<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Login | IoT Bay</title>
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
  <style>
    :root {
      --primary: #4361ee;
      --primary-light: #4895ef;
      --primary-dark: #3a0ca3;
      --accent: #f72585;
      --text-dark: #2b2d42;
      --text-medium: #4a4e69;
      --text-light: #8e9aaf;
      --bg-gradient: linear-gradient(135deg, #f6f9fc 0%, #eef2f5 100%);
      --card-shadow: 0 10px 25px -5px rgba(0, 0, 0, 0.1), 0 10px 10px -5px rgba(0, 0, 0, 0.04);
      --input-shadow: 0 1px 3px rgba(0, 0, 0, 0.05);
    }

    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    body {
      font-family: 'Poppins', sans-serif;
      background: var(--bg-gradient);
      color: var(--text-dark);
      display: flex;
      justify-content: center;
      align-items: center;
      min-height: 100vh;
      padding: 1rem;
      line-height: 1.6;
    }

    .login-container {
      background: white;
      border-radius: 16px;
      box-shadow: var(--card-shadow);
      padding: 2.5rem;
      width: 100%;
      max-width: 420px;
      position: relative;
      overflow: hidden;
    }

    .login-container::before {
      content: '';
      position: absolute;
      top: 0;
      left: 0;
      width: 100%;
      height: 6px;
      background: linear-gradient(90deg, var(--primary), var(--accent));
    }

    .login-header {
      text-align: center;
      margin-bottom: 2rem;
    }

    .login-header h1 {
      color: var(--primary-dark);
      font-size: 1.8rem;
      font-weight: 600;
      margin-bottom: 0.5rem;
    }

    .login-header p {
      color: var(--text-medium);
      font-size: 0.9rem;
    }

    .login-form {
      display: flex;
      flex-direction: column;
      gap: 1.5rem;
    }

    .form-group {
      display: flex;
      flex-direction: column;
      gap: 0.5rem;
    }

    .form-group label {
      font-size: 0.9rem;
      color: var(--text-medium);
      font-weight: 500;
    }

    .input-field {
      position: relative;
    }

    .input-field i {
      position: absolute;
      left: 1rem;
      top: 50%;
      transform: translateY(-50%);
      color: var(--primary);
      font-size: 1rem;
    }

    .form-control {
      width: 100%;
      padding: 0.75rem 1rem 0.75rem 2.5rem;
      border: 1px solid var(--text-light);
      border-radius: 10px;
      font-family: 'Poppins', sans-serif;
      font-size: 0.95rem;
      background-color: #f8fafc;
      box-shadow: var(--input-shadow);
    }

    .form-control:focus {
      outline: none;
      border-color: var(--primary-light);
      box-shadow: 0 0 0 3px rgba(67, 97, 238, 0.15);
      background-color: white;
    }

    .btn-login {
      width: 100%;
      background: linear-gradient(135deg, var(--primary) 0%, var(--primary-dark) 100%);
      color: white;
      border: none;
      padding: 0.9rem;
      border-radius: 10px;
      font-weight: 500;
      font-size: 1rem;
      cursor: pointer;
      margin-top: 0.5rem;
      letter-spacing: 0.5px;
      box-shadow: 0 4px 6px rgba(0, 0, 0, 0.05);
    }

    .login-footer {
      text-align: center;
      margin-top: 1.5rem;
      font-size: 0.9rem;
      color: var(--text-medium);
    }

    .login-footer a {
      color: var(--primary);
      text-decoration: none;
      font-weight: 500;
    }

    .login-footer a:hover {
      color: var(--accent);
      text-decoration: underline;
    }

    .forgot-password {
      text-align: right;
      margin-top: -0.5rem;
    }

    .forgot-password a {
      font-size: 0.8rem;
      color: var(--text-light);
    }

    .forgot-password a:hover {
      color: var(--primary);
    }

    @media (max-width: 480px) {
      .login-container {
        padding: 2rem 1.5rem;
      }

      .login-header h1 {
        font-size: 1.5rem;
      }
    }
  </style>
</head>
<body>
<div class="login-container">
  <div class="login-header">
    <h1><i class="fas fa-sign-in-alt" style="margin-right: 8px;"></i>Welcome Back</h1>
    <p>Sign in to access your IoT Bay dashboard</p>
  </div>

  <form action="welcome.jsp" method="post" class="login-form">
    <div class="form-group">
      <label for="email">Email Address</label>
      <div class="input-field">
        <i class="fas fa-envelope"></i>
        <input type="text" id="email" name="email" class="form-control" placeholder="your@email.com" required>
      </div>
    </div>

    <div class="form-group">
      <label for="password">Password</label>
      <div class="input-field">
        <i class="fas fa-lock"></i>
        <input type="password" id="password" name="password" class="form-control" placeholder="•••••••" required>
      </div>
      <div class="forgot-password">
        <a href="forgot-password.jsp">Forgot password?</a>
      </div>
    </div>

    <button type="submit" class="btn-login">
      <i class="fas fa-sign-in-alt" style="margin-right: 8px;"></i>Login
    </button>
  </form>

  <div class="login-footer">
    Don't have an account? <a href="register.jsp">Create one now</a>
  </div>
</div>
</body>
</html>