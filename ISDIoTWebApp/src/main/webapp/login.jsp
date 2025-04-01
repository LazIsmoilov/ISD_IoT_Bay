<!DOCTYPE html>
<html>
<head>
    <title>Login Page</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width-device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
</head>
<body>
<div>
<h1>Sign in</h1>
<form action="welcome.jsp">
    <table>
        <tr>
            <td><label for="email">Email address:</label></td>
            <td><input type="email" placeholder="Enter email" id="email" name="email" required></td>
        </tr>
        <tr>
            <td><label for="password">Password:</label></td>
            <td><input type="password" placeholder="Enter password" id="password" name="password" required></td>
        </tr>
    </table>
    <div style="text-align: center">
        <input type="submit" value="Sign in">
    </div>
</form>
</div>
</body>
</html>