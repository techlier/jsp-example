<%@ page trimDirectiveWhitespaces="true" %>
<%@ page import="java.util.Collections" %>

<% if (session.getAttribute("username") == null) { %>
<a href="./login.jsp">You must login!</a>
<% } else { %>
Welcome: <%= session.getAttribute("username") %> (<%= session.getAttribute("password") %>)
<ul>
<li><a href="./change_password.jsp">Change password</a>
<li><a href="./logout.jsp">Logout</a>
</ul>
<% } %>

<hr>
Session:<ul>
<% for (String name: Collections.list(session.getAttributeNames())) { %>
<li><%= name %> = <%= session.getAttribute(name) %>
<% } %>
</ul>

Request:<ul>
<% for (String name: Collections.list(request.getParameterNames())) { %>
<li><%= name %> = <%= request.getParameter(name) %>
<% } %>
</ul>

Header:<ul>
<% for (String name: Collections.list(request.getHeaderNames())) { %>
<li><%= name %> = <%= request.getHeader(name) %>
<% } %>
</ul>
