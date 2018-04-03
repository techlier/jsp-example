<%@ page trimDirectiveWhitespaces="true" %>
<%@ page import="java.util.Collections" %>

<% if (request.getMethod() == "GET") { %>
<form action="./change_password.jsp" method="POST">
  <input name="username" type="hidden" value="${session.username}">
  Current password: <input name="current_password" type="password"><br>
  New password: <input name="new_password" type="password"><br>
  <input type="submit" value="Submit">
<% } else { %>
<%
   session.setAttribute("password", request.getParameter("new_password"));
%>
<jsp:forward page="index.jsp">
  <jsp:param name="message" value="Password Changed! (${param.current_password} -> ${param.new_password})" />
</jsp:forward>
<% } %>

<hr>
Session:<ul>
<% for (String name: Collections.list(session.getAttributeNames())) { %>
<li><%= name %> = <%= session.getAttribute(name) %>
<% } %>
</ul>
