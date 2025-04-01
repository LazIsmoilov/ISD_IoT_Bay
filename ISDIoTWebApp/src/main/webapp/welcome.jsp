<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@page session="true" %>

<!DOCTYPE html>
<html>
<head>
  <title>IoT Bay Dashboard</title>
  <link rel="stylesheet" type="text/css" href="style.css">

</head>

<%
  String userName = request.getParameter("name");
%>

<body>
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
