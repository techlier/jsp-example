<%@ page trimDirectiveWhitespaces="true" %>

<% if (request.getMethod() == "GET") { %>
<form action="./login.jsp" method="POST">
  Username: <input name="username"><br>
  Password: <input name="password" type="password"><br>
  <input type="submit" value="Login!">
<% } else { %>
<%
   session.setAttribute("username", request.getParameter("username"));
   session.setAttribute("password", request.getParameter("password"));

   session.setAttribute("userid", request.getParameter("userid"));
   session.setAttribute("cn", request.getParameter("cn"));
   session.setAttribute("mail", request.getParameter("mail"));

   //response.sendRedirect("./");
   application.getRequestDispatcher("/index.jsp").forward(request, response);
%>
<% } %>
