<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="uts.isd.model.User" %>
<script>
    class Header extends HTMLElement {
        connectedCallback() {
            const shadow = this.attachShadow({ mode: "open" });
            shadow.innerHTML = `
                <style>
                    .header {
                        display: flex;
                        justify-content: space-between;
                        align-items: center;
                        background-color: #333;
                        padding: 10px;
                        color: white;
                    }
                    .items {
                        list-style: none;
                        padding: 0;
                        display: flex;
                        gap: 15px;
                    }
                    .items a {
                        text-decoration: none;
                        color: white;
                        padding: 10px;
                        font-weight: bold;
                    }
                    .user-box {
                        display: flex;
                        gap: 10px;
                    }
                    .header-button {
                        background-color: transparent;
                        color: white;
                        font-weight: bold;
                        border: 2px solid white;
                        padding: 10px 30px;
                        cursor: pointer;
                        transition: 0.3s;
                    }
                    .header-button:hover {
                        background-color: white;
                        color: black;
                        box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.2);
                    }
                </style>
                <div class="header">
                    <ul class="items">
                        <li><a href="index.jsp">HOME</a></li>
                        <li><a href="register.jsp">REGISTER</a></li>
                        <li><a href="#">ABOUT</a></li>
                        <li><a href="#">CONTACT</a></li>
                    </ul>
                    <div>
                        <h2>Logged in user:
                        <%
                            // Note: Renamed variable to avoid duplicate declaration error.
                            User loggedInUser = (User) session.getAttribute("user");
                            if(loggedInUser == null) {
                        %>
                            Guest
                        <%
                            } else {
                                out.print(loggedInUser.getName());
                            }
                        %>
                        </h2>
                    </div>
                    <%
                        if(session.getAttribute("user") != null) {
                    %>
                    <div class="user-box">
                        <a href="edit.jsp"><button class="header-button">EDIT DETAILS</button></a>
                        <a href="logout.jsp"><button class="header-button">LOGOUT</button></a>
                    </div>
                    <%
                        }
                    %>
                </div>
            ;
        }
    }
    customElements.define("pref-header", Header);
</script>


