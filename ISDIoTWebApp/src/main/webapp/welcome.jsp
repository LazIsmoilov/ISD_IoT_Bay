<%@ page import="uts.isd.model.User" %>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page session="true" %>
<%
  // Retrieving the user from the session
  User user = (User) session.getAttribute("user");
  String userName = (user != null && user.getName() != null) ? user.getName() : "Guest";
%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>IoT Bay Dashboard</title>
  <link rel="stylesheet" href="style.css">
  <%@ include file="header.jsp" %>
</head>
<body>
<pref-header></pref-header>
<div class="content">
  <div class="main-header">
    <h1>Welcome to IoT Bay, <%= userName %>!</h1>
    <p>Your premier destination for high-quality IoT devices and technology solutions.
      Explore our extensive collection of smart devices, components, and accessories that will transform your digital experience.</p>
  </div>
  <p><a href="main.jsp">Explore More Devices</a></p>
</div>
</body>
</html>


