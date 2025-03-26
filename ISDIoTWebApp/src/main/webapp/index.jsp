

<%@page contentType="text/html" pageEncoding="UTF-8" %>

<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Home</title>
        <link rel="stylesheet" href="style.css">

        <style>
            iframe {
                width: 100%;
                height: 700px;
            }
        </style>
    </head>
    <body>
        <header>
        </header>
        <section>
            <nav>
                <ul style = margin-centre>
                    <li><a href="landing.jsp" target="content">HOME</a></li>
                    <li><a href="register.jsp" target="content">REGISTER</a></li>
                    <li><a href="about.jsp" target="content">ABOUT</a></li>
                    <li><a href="contact.html" target="content">CONTACT</a></li>


                    <li><a href="logout.html" target="content">LOGOUT</a></li>
                </ul>
            </nav>
        </section>
        <section>
            <iframe name="content" src="landing.jsp"></iframe>
        </section>
        </body>
</html>
