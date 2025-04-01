<%@ page import="uts.isd.model.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String password = request.getParameter("password");
    String dob = request.getParameter("dob");
    String gender = request.getParameter("gender");

    User user = (User) session.getAttribute("user");

    user.setName(name);
    user.setEmail(email);
    user.setPassword(password);
    user.setDob(dob);
    user.setGender(gender);

    session.setAttribute("user", user);
    response.sendRedirect("main.jsp");
%>