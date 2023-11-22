<%@
    page import="java.util.*"
    contentType="text/html; charset=utf8"
%>
<!DOCTYPE html>
<html>
<head>
    <title>JSP</title>
</head>
<body>
    <%
        java.util.Date nowTime = new java.util.Date();
    %>
    <h1>Hello, world! Now time is <strong><% out.print(nowTime); %></strong>.</h1>
    user principal = <%=request.getUserPrincipal() %>
</body>
</html>