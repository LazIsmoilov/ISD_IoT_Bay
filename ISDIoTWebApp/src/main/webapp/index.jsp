<%@ page import="uts.isd.model.User" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>

<%

    User user = (User)session.getAttribute("user");

%>

<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Home</title>
    <link rel="stylesheet" href="style.css">

</head>
<body>
<header>
</header>
<section>
    <nav>
        <ul>
            <li><a href="landing.jsp" target="content">HOME</a></li>
            <li><a href="register.jsp" target="content">REGISTER</a></li>
            <li><a href="#">ABOUT</a></li>
            <li><a href="#">CONTACT</a></li>
        </ul>

            <h2>Logged in user:
                <%
                    if (user == null) {
                %>
                No one
                <%
                }
                else {
                %>
                <%=user.getEmail()%>
                <%
                    }
                %>
            </h2>

        <%
            if (user != null) {
        %>
        <div class="user-box">
            <a href="edit.jsp" target="content"> <button>EDIT DETAILS</button></a>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <a href="Logout.jsp"><button>LOGOUT</button></a>
        </div>
        <%
            }
        %>

    </nav>
</section>
<section>
    <iframe name="content" src="landing.jsp"></iframe>
</section>
</body>
</html>

<script>

    function logout() {
        window.location.href = "LogoutHandler.jsp";
    }
</script>