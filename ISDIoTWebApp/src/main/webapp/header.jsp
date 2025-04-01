<%@page import="uts.isd.model.User" %>

<script>
    class Header extends HTMLElement {
        connectedCallback() {
            const shadow = this.attachShadow({ mode: "open" }); // Attach Shadow DOM

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
            <a href="index.jsp"><li>HOME</li></a>
            <a href="register.jsp"><li>REGISTER</li></a>
            <a href="#"><li>ABOUT</li></a>
            <a href="#"><li>CONTACT</li></a>
          </ul>
            <div>
            <h2>Logged in user:
                <%
                    if (session.getAttribute("user") == null) {
                %>
                Guest
                <%
                    } else {
                        User user1 = (User) session.getAttribute("user");
                %>
                <%=user1.getName()%>
                <%
                    }
                %>
            </h2>
            </div>
            <%
                if (session.getAttribute("user") != null) {
            %>
            <div class="user-box">
              <a href="edit.jsp"><button class="header-button">EDIT DETAILS</button></a>
              <a href="Logout.jsp"><button class="header-button">LOGOUT</button></a>
            </div>
          <%
            }
          %>`;
        }
    }

    customElements.define("pref-header", Header);
</script>
