<%@ page import="uts.isd.model.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    // Retrieve form parameters
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String password = request.getParameter("password");
    String dob = request.getParameter("dob");
    String gender = request.getParameter("gender");

    // Retrieve existing user from session
    User user = (User) session.getAttribute("user");

    // Ensure session has a user object
    if (user == null) {
        user = new User("", "", "", "", ""); // Create a blank user
    }

    // Update user details
    user.setName(name);
    user.setEmail(email);
    user.setPassword(password);
    user.setDob(dob);
    user.setGender(gender);

    // Store updated user in session
    session.setAttribute("user", user);

    // Redirect back to the edit page with success message
    response.sendRedirect("edit.jsp?updated=true");
%>