<%@ page trimDirectiveWhitespaces="true" %>

<% if (request.getMethod() == "GET") { %>
<form action="./change_password.jsp" method="POST">
  <input name="username" type="hidden" value="<%= session.getAttribute("username") %>">
  Current password: <input name="current_password" type="password"><br>
  New password: <input name="new_password" type="password"><br>
  <input type="submit" value="Submit">
<% } else { %>
<%
   session.setAttribute("usename", request.getParameter("username"));
   session.setAttribute("password", request.getParameter("new_password"));

   //response.sendRedirect("./");
   application.getRequestDispatcher("/index.jsp").forward(request, response);
%>
<% } %>
