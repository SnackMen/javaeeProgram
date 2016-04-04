<%--
  User: laowang
  Date: 16-4-4
  Time: 下午7:30
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Expression Language Q1</title>
</head>
<body>
    <h1>Expression Language Question 1</h1>
    <h2>How do I use implicit objects?</h2>
    <p>The implicit objects are</p>
    <ul>
        <li>pageContext</li>
        <li>pageScope</li>
        <li>requestScope</li>
        <li>sessionScope</li>
        <li>applicationScope</li>
        <li>param</li>
        <li>paramValues</li>
        <li>header</li>
        <li>headerValues</li>
        <li>cookie</li>
        <li>initParam</li>
    </ul>
    <p>
        Im.................................................
        .................................................
        .................................................
    </p>
    <p>
        ${'${'}pageContext.request.requestURI} evaluates to
        "${pageContext.request.requestURI}"
    </p>
    <p>
        ${'${'}param.qid} evaluates to "${param.qid}"
    </p>
    <p>
        ${'${'}header.referer} evaluates to "${header.referer}"
    </p>
    <p>
        ${'${'}cookie.JSESIONID.value} evalutes to "${cookie.JESSIONID.value}"
    </p>
</body>
</html>
