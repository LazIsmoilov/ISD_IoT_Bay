<%@ page import="uts.isd.model.User" %>
<!DOCTYPE html>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
    <title>Welcome Page</title>
    <link rel="stylesheet" href="style.css">
</head>

<body>
<h1><%= "Welcome, " + request.getParameter("firstName")%></h1>
<div>
    <a class="button" href="index.jsp"> Cancel</a>
    <a class="button" href="main.jsp">Main</a>
</div>
<%
    String firstName = request.getParameter("firstName");
    String lastName = request.getParameter("lastName");
    String email = request.getParameter("email");
    String password = request.getParameter("password");
    User user = new User(firstName, lastName, email, password);
    session.setAttribute("user", user);
%>
</body>
</html>