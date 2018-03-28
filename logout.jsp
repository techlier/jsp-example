<%@ page trimDirectiveWhitespaces="true" %>

<%
session.invalidate();
response.sendRedirect("./");
%>
