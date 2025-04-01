<%@page import="uts.isd.model.User" %>

<script>
  class Header extends HTMLElement {
    connectedCallback() {
      this.innerHTML = `
                <div class="header">
                    <ul class="items">
                        <a href="index.jsp"><li>HOME</li></a>
                        <a href="register.jsp"><li>REGISTER</li></a>
                        <li><a href="#">ABOUT</a></li>
                        <li><a href="#">CONTACT</a></li>
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
                    </div >
                    <%
                        if (session.getAttribute("user") != null) {
                    %>
                    <div class="user-box">
                        <a href="edit.jsp" target="content"> <button>EDIT DETAILS</button></a>
                        <a href="Logout.jsp"><button>LOGOUT</button></a>
                    </div>
                    <%
                        }
                    %>
                </div>
            `;
    }
  }

  customElements.define("pref-header", Header);
</script>
