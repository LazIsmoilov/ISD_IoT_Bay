<!DOCTYPE html>
<html>
<head>
    <title>Register Page</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width-device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
</head>
<body>
<div>
    <h1>Sign Up</h1>
    <form method="post" action="welcome.jsp">
<%--        <fieldset>--%>
            <table>
                <tr>
                    <td><label for="email">Email address:</label></td>
                    <td><input type="email" placeholder="Enter email" id="email" name="email" required></td>
                </tr>
                <tr>
                    <td><label for="firstName">First name:</label></td>
                    <td><input type="text" placeholder="Enter firstname" id="firstName" name="firstName" required></td>
                </tr>
                <tr>
                    <td><label for="lastName">Last name:</label></td>
                    <td><input type="text" placeholder="Enter surname" id="lastName" name="lastName" required></td>
                </tr>
                <tr>
                    <td><label for="password">Password:</label></td>
                    <td><input type="password" placeholder="Enter password" id="password" name="password" required></td>
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
                <input type="submit" value="Register">
            </div>
<%--        </fieldset>--%>
    </form>
</div>
</body>
</html>
