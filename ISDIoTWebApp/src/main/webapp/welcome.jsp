<%@ page import="uts.isd.model.User" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@page session="true" %>

<html>
<head>
  <title>IoT Bay Dashboard</title>
  <link rel="stylesheet" type="text/css" href="style.css">
  <%@ include file="header.jsp" %>


</head>

<%
  String name = request.getParameter("name");
  String email = request.getParameter("email");
  String password = request.getParameter("password");
  String dob = request.getParameter("dob");
  String gender = request.getParameter("gender");
  String userName = request.getParameter("name");
  User user = new User(name, email, password, dob, gender);
  session.setAttribute("user", user);
%>

<body>

<pref-header></pref-header>

<div class="content">
  <div class="main-header">


    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>

    <h1>Welcome to IOT Bay, <%= userName != null ? userName : "Guest" %>!</h1>
    <p>Your premier destination for high-quality IoT devices and technology solutions.
      Explore our extensive collection of smart devices, components, and accessories
      that will transform your digital experience.</p>
  </div>

  <p>
    <a href="main.jsp">Explore More Devices</a>
  </p>
</div>
</body>
</html>
