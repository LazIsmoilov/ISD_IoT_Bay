<%@ page import="uts.isd.model.User" %>
<!DOCTYPE html>

<html>
<head>
    <title>Profile Page</title>
    <meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
    <link rel="stylesheet" href="style.css">
</head>
<body>
<%
    User user =  (User) session.getAttribute("user");
    String updated = request.getParameter("updated");
%>
<h1>Edit Profile Information <br><span> <%= (updated != null) ? "Update was successful": ""%></span></h1>
<form method="post" action="edit.jsp">
    <%--        <fieldset>--%>
    <table>
        <tr>
            <td><label for="email">Email address:</label></td>
            <td><input type="email" id="email" name="email" value="<%= user.getEmail()%>" required></td>
        </tr>
        <tr>
            <td><label for="firstName">First name:</label></td>
            <td><input type="text" id="firstName" name="firstName" value="<%= user.getFirstName()%>" required></td>
        </tr>
        <tr>
            <td><label for="lastName">Last name:</label></td>
            <td><input type="text" id="lastName" name="lastName" value="<%= user.getLastName()%>" required></td>
        </tr>
        <tr>
            <td><label for="password">Password:</label></td>
            <td><input type="password" id="password" name="password" value="<%= user.getPassword()%>" required></td>
        </tr>
        <tr>
            <td><label for="gender">Gender:</label></td>
            <td>
                <select id="gender" name="gender" required>
                    <option value="male">Male</option>
                    <option value="female">Female</option>
                    <option value="other">Other</option>
                </select>
            </td>
        </tr>
        <tr>
            <td><label for="favcol">Favourite colour:</label></td>
            <td>
                <select id="favcol" name="favcol">
                    <option value="blue">Blue</option>
                    <option value="red">Red</option>
                    <option value="white">White</option>
                </select>
            </td>
        </tr>
        <tr>
            <td><label for="tos">TOS:</label></td>
            <td><input type="checkbox" id="tos" name="tos" required></td>
        </tr>
    </table>
    <div style="text-align: center">
        <a type="button" href="index.jsp">Main</a>
        <input type="submit" value="Update">
        <input type="hidden" name="updated" value="updated">
    </div>
    <%--        </fieldset>--%>
</form>
<%
    String firstName = request.getParameter("firstName");
    String lastName = request.getParameter("lastName");
    String email = request.getParameter("email");
    String password = request.getParameter("password");
    user = new User(firstName, lastName, email, password);
    session.setAttribute("user", user);
%>
</body>
</html>