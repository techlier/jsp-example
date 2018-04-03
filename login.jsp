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
%>
<jsp:forward page="index.jsp">
  <jsp:param name="message" value="${param.username} (${param.password})" />
</jsp:forward>
<% } %>
