<%@page import="uts.isd.model.User" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>

<%

    User user = (User)session.getAttribute("loggedInUser");

%>

<html>
<head>

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Home</title>
    <link rel="stylesheet" href="style.css">
    <%@ include file="header.jsp" %>


</head>
<body>

<pref-header></pref-header>

<br>
<br>
<br>
<br>
<br>

<div class="content">
    <div class="main-header">
        <h1>IOT Bay</h1>
        <h2>Premium Devices | Secure Shopping | Expert Support</h2>
    </div>

    <div class="stats">
        <div class="stat-item">
            <div class="stat-number">25% + 20%</div>
            <div class="stat-label">Discount</div>
        </div>
        <div class="stat-item">
            <div class="stat-number">100+</div>
            <div class="stat-label">Products</div>
        </div>
        <div class="stat-item">
            <div class="stat-number">24/7</div>
            <div class="stat-label">Support</div>
        </div>
    </div>
</div>

<div class="main-content">
    <br>
    <br>
    <br>
    <a href="register.jsp"><button>ENTER</button></a>
</div>


</body>
</html>

<script>

    function logout() {
        window.location.href = "LogoutHandler.jsp";
    }
</script>