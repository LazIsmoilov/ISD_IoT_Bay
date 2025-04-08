<%@ page import="uts.isd.model.User" %>
<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%
  // Retrieve the user object from the session
  User user = (User) session.getAttribute("user");

  // Redirect to login if no user is found in session
  if (user == null) {
    response.sendRedirect("login.jsp");
    return;
  }

  // Handle form submission to update user profile
  if ("POST".equalsIgnoreCase(request.getMethod())) {
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String password = request.getParameter("password");
    String dob = request.getParameter("dob");
    String gender = request.getParameter("gender");

    // (Optional) Validate inputs here

    // Update the user object with new values
    user.setName(name);
    user.setEmail(email);
    user.setPassword(password);
    user.setDob(dob);
    user.setGender(gender);

    // Update the session with the modified user object
    session.setAttribute("user", user);

    // Set a success message to be displayed on the main page
    session.setAttribute("message", "Profile updated successfully!");

    // Redirect to main page (dashboard) so the user sees the updated profile and notification
    response.sendRedirect("main.jsp");
    return;
  }
%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Edit Profile - IoT Bay</title>
  <link rel="stylesheet" href="style.css">
</head>
<body>
<div class="form-container">
  <h1>Edit Profile</h1>
  <form method="post" action="edit.jsp">
    <div class="form-group">
      <label for="name">Full Name</label>
      <input type="text" id="name" name="name" value="<%= user.getName() %>" required>
    </div>
    <div class="form-group">
      <label for="email">Email Address</label>
      <input type="email" id="email" name="email" value="<%= user.getEmail() %>" required>
    </div>
    <div class="form-group">
      <label for="password">Password</label>
      <input type="password" id="password" name="password" value="<%= user.getPassword() %>" required>
    </div>
    <div class="form-group">
      <label for="dob">Date of Birth</label>
      <input type="date" id="dob" name="dob" value="<%= user.getDob() %>" required>
    </div>
    <div class="form-group">
      <label for="gender">Gender</label>
      <select id="gender" name="gender" required>
        <option value="male" <%= "male".equalsIgnoreCase(user.getGender()) ? "selected" : "" %>>Male</option>
        <option value="female" <%= "female".equalsIgnoreCase(user.getGender()) ? "selected" : "" %>>Female</option>
        <option value="other" <%= "other".equalsIgnoreCase(user.getGender()) ? "selected" : "" %>>Other</option>
      </select>
    </div>
    <div style="text-align: center;">
      <button type="submit" class="submit-btn">Update Profile</button>
    </div>
  </form>
</div>
</body>
</html>


