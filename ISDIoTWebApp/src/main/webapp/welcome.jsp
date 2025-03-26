<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@page session="true" %>

<!DOCTYPE html>
<html>
<head>
  <title>IoT Bay Dashboard</title>
  <link rel="stylesheet" type="text/css" href="landingPageStyle.css">

  <style>

    input {
      width: 100%;
      padding: 8px;
      margin-bottom: 10px;
      border: 1px solid #ccc;
      border-radius: 5px;
    }

    input[type="submit"] {
      background: #0066cc;
      color: white;
      border: none;
      cursor: pointer;
    }

    input[type="submit"]:hover {
      background: #ff6600;
    }

    h1 {
      color: #333;
    }

    a {
      text-decoration: none;
      color: #0066cc;
    }

    a:hover {
      color: #ff6600;
    }

    .device-card {
      border: 1px solid #ccc;
      padding: 10px;
      margin: 10px;
      border-radius: 5px;
      background-color: #f9f9f9;
    }


  </style>
</head>

<%
  // Retrieving user input values from the form
  String userName = request.getParameter("name");
  String userColor = request.getParameter("favoriteColor");

  // Setting a default background color if userColor is null
  userColor = (userColor != null && !userColor.isEmpty()) ? userColor : "#f4f4f4";
%>

<body style="background-color: <%= userColor %>;">
<h1>Welcome to IoT Bay, <%= userName != null ? userName : "Guest" %>!</h1>
<p>We've personalized your experience with your favorite color!</p>

<!-- IoT Dashboard -->
<div class="dashboard">
  <h2>Recommended IoT Devices:</h2>
  <div class="device-card">
    <h3>Smart Light Bulbs</h3>
    <p>Brighten your home with customizable lighting in <%= userColor %>.</p>
  </div>
  <div class="device-card">
    <h3>Home Security Camera</h3>
    <p>Protect your home and stay connected wherever you are.</p>
  </div>
  <div class="device-card">
    <h3>Smart Thermostat</h3>
    <p>Set the perfect temperature at any time, customized for your lifestyle.</p>
  </div>
</div>

<!-- Navigation -->
<p>
  <a href="index.jsp">Explore More Devices</a>
</p>
</body>
</html>
