<%@ page %>
<%
session.invalidate();
response.sendRedirect("./");
%>
