<%--
  Created by IntelliJ IDEA.
  User: laowang
  Date: 16-3-25
  Time: 下午4:20
  To change this template use File | Settings | File Templates.
--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%@page isErrorPage="true"
import="java.io.PrintWriter"%>
<html>
<head>
    <title>error</title>
</head>
<body>
<h1>Error</h1>
There was an error somewhere.
<p>Here is the stack trace</p>
<p><% exception.printStackTrace(new PrintWriter(out));%></p>
<%@include file="footer.jsp"%>
</body>
</html>
