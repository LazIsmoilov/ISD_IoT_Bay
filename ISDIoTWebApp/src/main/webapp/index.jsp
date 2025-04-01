<%@ page import="uts.isd.model.User" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>

<%
    User user = (User) session.getAttribute("user");
%>

<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Home</title>
    <link rel="stylesheet" href="style.css">

    <style>
        /* Style to match button links */
        .nav-button {
            display: inline-block;
            padding: 10px 20px;
            text-decoration: none;
            color: white;
            background-color: gray;
            border: none;
            cursor: pointer;
            font-size: 16px;
            transition: background 0.3s;
        }

        .nav-button:hover {
        color: black;
        }

        /* Remove default form styling */
        .nav-form {
            display: inline;
        }

        .nav-form button {
            all: unset; /* Reset all button styles */
            padding: 10px 20px; /* Match other buttons */
            color: white;
            background-color: gray;
            cursor: pointer;
            font-weight: bold;
            font-size: 16px;
            transition: background 0.3s;
        }

        .nav-form button:hover {
            color: black;
        }
    </style>

</head>
<body>
<header>
</header>
<section>
    <nav>
        <ul>
            <li>
                <form action="index.jsp" method="get" class="nav-form">
                    <input type="hidden" name="page" value="landing.jsp">
                    <button type="submit">HOME</button>
                </form>
            </li>
            <li><a href="register.jsp" class="nav-button" target="content">REGISTER</a></li>
            <li><a href="#" class="nav-button">ABOUT </a></li>
            <li><a href="#" class="nav-button">CONTACT</a></li>
            <li><a href="main.jsp" class="nav-button" target="content">MAIN</a></li>
        </ul>

            <h2>Logged in user:
                <%
                    if (session.getAttribute("user") == null) {
                %>
                No one
                <%
                } else {
                    User user1 = (User) session.getAttribute("user");
                %>
                <%=user1.getEmail()%>
                <%
                    }
                %>
            </h2>

        <%
            if (user != null) {
        %>

        <div class="user-box">
            <a href="edit.jsp" target="content"> <button>EDIT DETAILS</button></a>
            <a href="logout.jsp"><button>LOGOUT</button></a>
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
