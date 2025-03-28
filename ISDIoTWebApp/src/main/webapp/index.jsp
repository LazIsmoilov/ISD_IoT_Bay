<%@page contentType="text/html" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>IoT Bay - Home</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        :root {
            --primary: #151b1b;
            --primary-dark: #1d4ed8;
            --accent: #ec4899;
            --gray-100: #f3f4f6;
            --gray-200: #e5e7eb;
            --gray-700: #374151;
            --gray-900: #111827;
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        body {
            display: flex;
            flex-direction: column;
            min-height: 100vh;
            background-color: var(--gray-100);
        }

        header {
            background-color: white;
            box-shadow: 0 2px 10px rgba(0,0,0,0.1);
            padding: 1rem 2rem;
        }

        .logo {
            font-size: 1.5rem;
            font-weight: bold;
            color: var(--primary);
            display: flex;
            align-items: center;
            gap: 0.5rem;
        }

        .logo i {
            color: var(--accent);
        }

        nav {
            background-color: white;
            border-bottom: 1px solid var(--gray-200);
            padding: 0 2rem;
        }

        nav ul {
            display: flex;
            list-style: none;
            justify-content: flex-start;
            gap: 1.5rem;
        }

        nav a {
            display: block;
            padding: 1rem 0;
            color: var(--gray-700);
            text-decoration: none;
            font-weight: 500;
            position: relative;
            transition: color 0.2s ease;
        }

        nav a:hover {
            color: var(--primary);
        }

        nav a::after {
            content: '';
            position: absolute;
            bottom: 0;
            left: 0;
            width: 0;
            height: 3px;
            background-color: var(--primary);
            transition: width 0.3s ease;
        }

        nav a:hover::after {
            width: 100%;
        }

        nav a.active {
            color: var(--primary);
        }

        nav a.active::after {
            width: 100%;
        }

        iframe {
            flex-grow: 1;
            width: 100%;
            border: none;
            background-color: white;
        }

        @media (max-width: 768px) {
            nav ul {
                gap: 1rem;
                overflow-x: auto;
                padding: 0.5rem 0;
                -webkit-overflow-scrolling: touch;
            }

            nav a {
                padding: 0.5rem 0;
                white-space: nowrap;
            }

            header, nav {
                padding: 0.5rem 1rem;
            }
        }
    </style>
</head>
<body>
<header>
    <div class="logo">
        <i class="fas fa-bolt"></i>
        <span>IoT Bay</span>
    </div>
</header>

<nav>
    <ul>
        <li><a href="landing.jsp" target="content" class="active">HOME</a></li>
        <li><a href="register.jsp" target="content">REGISTER</a></li>
        <li><a href="about.jsp" target="content">ABOUT</a></li>
        <li><a href="contact.jsp" target="content">CONTACT</a></li>
        <li><a href="logout.html" target="content">LOGOUT</a></li>
    </ul>
</nav>

<iframe name="content" src="landing.jsp"></iframe>

<script>
    // Highlight active nav link based on iframe content
    document.addEventListener('DOMContentLoaded', function() {
        const navLinks = document.querySelectorAll('nav a');
        const iframe = document.querySelector('iframe');

        // Set initial active state
        navLinks.forEach(link => {
            if (link.href.includes(iframe.src)) {
                link.classList.add('active');
            }
        });

        // Update active state when iframe navigates
        iframe.addEventListener('load', function() {
            navLinks.forEach(link => {
                link.classList.remove('active');
                if (link.href.includes(iframe.contentWindow.location.pathname)) {
                    link.classList.add('active');
                }
            });
        });
    });
</script>
</body>
</html>