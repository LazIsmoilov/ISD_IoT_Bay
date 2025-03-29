<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@page session="true" %>

<%
  // Retrieving user input values from the form
  String userName = request.getParameter("name");
  String userColor = request.getParameter("favoriteColor");
  String userEmail = (String) session.getAttribute("email");
  String userGender = request.getParameter("gender");

  // Setting default values if null
  if (userColor == null || userColor.isEmpty()) {
    userColor = "#3a86ff"; // Default blue
  }
  if (userName == null || userName.isEmpty()) {
    userName = "Guest";
  }
%>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>IoT Bay Dashboard</title>
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
  <style>
    :root {
      --primary: #4361ee;
      --primary-light: #4895ef;
      --primary-dark: #3a0ca3;
      --accent: #f72585;
      --text-light: #f8f9fa;
      --card-bg: rgba(255, 255, 255, 0.15);
      --card-hover: rgba(255, 255, 255, 0.25);
    }

    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    body {
      font-family: 'Poppins', sans-serif;
      background: linear-gradient(135deg, <%= userColor %>, var(--primary-dark));
      color: var(--text-light);
      min-height: 100vh;
      padding: 2rem;
      line-height: 1.6;
    }

    .container {
      max-width: 1200px;
      margin: 0 auto;
    }

    /* Header Section */
    .user-header {
      text-align: center;
      margin-bottom: 2.5rem;
    }

    .user-header h1 {
      font-size: 2.5rem;
      font-weight: 600;
      margin-bottom: 0.5rem;
      display: flex;
      align-items: center;
      justify-content: center;
      gap: 0.75rem;
    }

    .user-header p {
      font-size: 1.1rem;
      opacity: 0.9;
      max-width: 600px;
      margin: 0 auto;
    }

    /* User Profile Card */
    .profile-card {
      background: var(--card-bg);
      backdrop-filter: blur(10px);
      border-radius: 16px;
      padding: 1.5rem;
      margin: 0 auto 2.5rem;
      max-width: 500px;
      box-shadow: 0 8px 32px rgba(0, 0, 0, 0.2);
      border: 1px solid rgba(255, 255, 255, 0.1);
    }

    .profile-info {
      display: flex;
      align-items: center;
      gap: 1.5rem;
    }

    .avatar {
      width: 80px;
      height: 80px;
      border-radius: 50%;
      background: rgba(255, 255, 255, 0.2);
      display: flex;
      align-items: center;
      justify-content: center;
      font-size: 2rem;
    }

    .user-details {
      text-align: left;
    }

    .user-details h2 {
      font-size: 1.5rem;
      margin-bottom: 0.25rem;
    }

    .user-details p {
      font-size: 0.9rem;
      opacity: 0.8;
      margin-bottom: 0.5rem;
    }

    .user-stats {
      display: flex;
      gap: 1rem;
      margin-top: 0.5rem;
    }

    .stat-item {
      background: rgba(255, 255, 255, 0.1);
      padding: 0.5rem 1rem;
      border-radius: 50px;
      font-size: 0.8rem;
      display: flex;
      align-items: center;
      gap: 0.5rem;
    }

    /* Dashboard Section */
    .dashboard {
      margin-bottom: 3rem;
    }

    .section-title {
      font-size: 1.5rem;
      margin-bottom: 1.5rem;
      display: flex;
      align-items: center;
      gap: 0.75rem;
    }

    .devices-grid {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
      gap: 1.5rem;
    }

    .device-card {
      background: var(--card-bg);
      backdrop-filter: blur(10px);
      border-radius: 16px;
      padding: 1.5rem;
      border: 1px solid rgba(255, 255, 255, 0.1);
      cursor: pointer;
    }

    .device-card:hover {
      background: var(--card-hover);
    }

    .device-icon {
      font-size: 2rem;
      margin-bottom: 1rem;
      color: <%= userColor %>;
    }

    .device-card h3 {
      font-size: 1.25rem;
      margin-bottom: 0.75rem;
      display: flex;
      align-items: center;
      gap: 0.5rem;
    }

    .device-card p {
      font-size: 0.95rem;
      opacity: 0.9;
      margin-bottom: 1rem;
    }

    .device-actions {
      display: flex;
      justify-content: space-between;
      margin-top: 1rem;
    }

    /* Buttons */
    .btn {
      display: inline-flex;
      align-items: center;
      gap: 0.5rem;
      padding: 0.75rem 1.5rem;
      border-radius: 50px;
      font-weight: 500;
      text-decoration: none;
      border: none;
      cursor: pointer;
    }

    .btn-primary {
      background: white;
      color: <%= userColor %>;
      box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
    }

    .btn-outline {
      background: transparent;
      color: white;
      border: 1px solid rgba(255, 255, 255, 0.3);
    }

    /* Responsive */
    @media (max-width: 768px) {
      .profile-info {
        flex-direction: column;
        text-align: center;
      }

      .user-details {
        text-align: center;
      }

      .user-stats {
        justify-content: center;
      }
    }
  </style>
</head>

<body>
<div class="container">
  <!-- User Header -->
  <header class="user-header">
    <h1>
      <i class="fas fa-rocket"></i>
      Welcome to IoT Bay, <%= userName %>!
    </h1>
    <p>Your personalized dashboard with your favorite color theme</p>
  </header>

  <!-- User Profile Card -->
  <section class="profile-card">
    <div class="profile-info">
      <div class="avatar">
        <i class="fas fa-<%= (userGender != null && userGender.equalsIgnoreCase("female")) ? "venus" :
                          (userGender != null && userGender.equalsIgnoreCase("male")) ? "mars" : "user" %>"></i>
      </div>
      <div class="user-details">
        <h2><%= userName %></h2>
        <p><%= (userEmail != null && !userEmail.isEmpty()) ? userEmail : "Guest Account" %></p>
        <div class="user-stats">
          <div class="stat-item">
            <i class="fas fa-palette"></i>
            <span><%= userColor %></span>
          </div>
          <div class="stat-item">
            <i class="fas fa-user-tag"></i>
            <span><%= (userEmail != null && !userEmail.isEmpty()) ? "Registered" : "Guest" %></span>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- IoT Dashboard -->
  <section class="dashboard">
    <h2 class="section-title">
      <i class="fas fa-bolt"></i>
      Recommended IoT Devices
    </h2>

    <div class="devices-grid">
      <!-- Device Card 1 -->
      <div class="device-card">
        <div class="device-icon">
          <i class="fas fa-lightbulb"></i>
        </div>
        <h3><i class="fas fa-star" style="color: gold;"></i> Smart Light Bulbs</h3>
        <p>Brighten your home with customizable lighting that adapts to your schedule and preferences.</p>
        <div class="device-actions">
          <a href="#" class="btn btn-outline">
            <i class="fas fa-info-circle"></i> Details
          </a>
          <a href="#" class="btn btn-primary">
            <i class="fas fa-cart-plus"></i> Add to Cart
          </a>
        </div>
      </div>

      <!-- Device Card 2 -->
      <div class="device-card">
        <div class="device-icon">
          <i class="fas fa-camera"></i>
        </div>
        <h3><i class="fas fa-shield-alt" style="color: #4cc9f0;"></i> Security Camera</h3>
        <p>Protect your home with 4K resolution, night vision, and smart motion detection.</p>
        <div class="device-actions">
          <a href="#" class="btn btn-outline">
            <i class="fas fa-info-circle"></i> Details
          </a>
          <a href="#" class="btn btn-primary">
            <i class="fas fa-cart-plus"></i> Add to Cart
          </a>
        </div>
      </div>

      <!-- Device Card 3 -->
      <div class="device-card">
        <div class="device-icon">
          <i class="fas fa-thermometer-half"></i>
        </div>
        <h3><i class="fas fa-leaf" style="color: #2ecc71;"></i> Smart Thermostat</h3>
        <p>Save energy with intelligent temperature control that learns your habits and preferences.</p>
        <div class="device-actions">
          <a href="#" class="btn btn-outline">
            <i class="fas fa-info-circle"></i> Details
          </a>
          <a href="#" class="btn btn-primary">
            <i class="fas fa-cart-plus"></i> Add to Cart
          </a>
        </div>
      </div>
    </div>
  </section>

  <!-- Call to Action -->
  <div style="text-align: center; margin-top: 2rem;">
    <a href="index.jsp" class="btn btn-primary">
      <i class="fas fa-search"></i> Explore More Devices
    </a>
  </div>
</div>
</body>
</html>