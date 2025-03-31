<!DOCTYPE html>

<html>
<head>
    <title>Logout</title>
    <meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
    <link rel="stylesheet" href="style.css">
</head>
<body>
<p style="text-align: center">You have logged out, click <a href="index.jsp">here</a> to go to the main page.</p>
<%session.invalidate(); %>
</body>
</html>