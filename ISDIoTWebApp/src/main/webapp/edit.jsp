<%@ page import="uts.isd.model.User" %>
<!DOCTYPE html>
<html>
<head>
  <title>Profile Page</title>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <link rel="stylesheet" href="style.css">
  <%@ include file="header.jsp" %>

</head>
<body>
<pref-header></pref-header>

<%
  // Retrieve the current user from session
  User user = (User) session.getAttribute("user");

  // Handle cases where user is null
  if (user == null) {
    user = new User("", "", "", "", ""); // Create an empty user object
    session.setAttribute("user", user);
  }

  String updated = request.getParameter("updated");
%>

<div class="form-container">
  <h1>Edit Profile Information <br>
  </h1>

  <form method="post" action="edithandler.jsp">

    <div class="form-group">
      <label for="name">Full Name</label>
      <input type="text" id="name" name="name" value="<%= user.getName() %>" required>
    </div>

    <div>
      <label for="email">Email address:</label>
      <input type="email" id="email" name="email" value="<%= user.getEmail() %>" required>
    </div>

    <div>
      <label for="password">Password:</label>
      <input type="password" id="password" name="password" value="<%= user.getPassword() %>" required>
    </div>

    <div>
      <label for="dob">Date of Birth:</label>
      <input type="date" id="dob" name="dob" value="<%= user.getDob() %>" required>
    </div>

    <div>
      <label for="gender">Gender:</label>
      <select id="gender" name="gender" required>
        <option value="male" <%= user.getGender().equals("male") ? "selected" : "" %>>Male</option>
        <option value="female" <%= user.getGender().equals("female") ? "selected" : "" %>>Female</option>
        <option value="other" <%= user.getGender().equals("other") ? "selected" : "" %>>Other</option>
      </select>
    </div>

    <div style="text-align: center">
      <input type="submit" value="Update">
      <input type="hidden" name="updated" value="updated">

    </div>
  </form>
</div>
</body>
</html>