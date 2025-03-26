<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@page session="true" %>

<!DOCTYPE html>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Registration page</title>
    <link rel="stylesheet" type="text/css" href="landingPageStyle.css">
</head>
<body>
<%--<nav>--%>
<%--    <a href="index.jsp">Home</a>--%>
<%--    <a href="welcomePage.jsp">Welcome</a>--%>
<%--</nav>--%>
<div class="form-container">
    <h1>Sign up</h1>
    <form action="welcomePage.jsp" method="post">
        <table>
            <tr><td>Full Name: </td><td><input type="text" placeholder="Enter name" name="name" required></td></tr>
            <tr><td>Email: </td><td><input type="email" placeholder="Enter email" name="email" required></td></tr>
            <tr><td>Password: </td><td><input type="password" placeholder="Enter password" name="password" required minlength="7"></td></tr>
            <tr><td>Date of birth: </td><td><input type="date" name="dob" required></td></tr>
            <tr><td>Gender: </td>
                <td>
                    <select name="gender" required>
                        <option value="Male">Male</option>
                        <option value="Female">Female</option>
                        <option value="Other">Other</option>
                    </select>
                </td>
            </tr>
            
            <tr><td>Agree to TOS: </td><td><input type="checkbox" name="agreeToTOS" value="yes" required></td></tr>
            <tr><td></td><td><input type="submit" value="Register"></td></tr>
        </table>
    </form>
    <a href="index.jsp">Back to Home</a>
</div>

</body>
</html>