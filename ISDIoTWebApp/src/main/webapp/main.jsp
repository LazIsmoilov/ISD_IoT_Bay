<%@ page import="uts.isd.model.User" %>
<!DOCTYPE html>

<html>
<head>
    <title>Main Page</title>
    <meta http-equiv="Content-Type" content="text/html"; charset="UTF-8">
    <link rel="stylesheet" href="style.css">
</head>
<body>
<h1>User Profile</h1>
<%
    User user = (User)session.getAttribute("user");
    if (user == null) {
        out.println("<p>Error: No user found in the session.</p>");
    } else {
%>
<table>
    <thead><th>First Name</th><th>Last Name</th><th>Email</th><th>Password</th></thead>
    <tbody>
    <tr>
        <td><%= user.getFirstName() %></td>
        <td><%= user.getLastName() %></td>
        <td><%= user.getEmail() %></td>
        <td><%= user.getPassword() %></td>
    </tr>
    </tbody>
</table>
<%
        }
%>
<div>
    <a class="button" href="logout.jsp">Logout</a>
    <a class="button" href="edit.jsp">Edit</a>
</div>
</body>
</html>