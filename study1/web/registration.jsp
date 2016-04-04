<%--
  Created by IntelliJ IDEA.
  User: laowang
  Date: 16-3-25
  Time: 下午8:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>User</title>
</head>
<body>
    <h1>Register</h1>
    <jsp:useBean id="user" scope="session" class="com.User">
        <jsp:setProperty name="user" property="*"/>
    </jsp:useBean>

Welcome new user,these are the values you submitted:
    <p>Your first name is <%=user.getFirstName()%>.</p>
    <%--<p>Your first name is: <jsp:getProperty name="user" property="firstName"/></p>--%>
    <p>Your last name is <jsp:getProperty name="user" property="surName"/>.</p>
    <p>Your user id is <jsp:getProperty name="user" property="loginName"/>.</p>
    <p>Your age is <jsp:getProperty name="user" property="age"/>.</p>
    <%--age类型为int型，所以输入其他类型会报错--%>
You selected these topics:

<%
    String []topics = request.getParameterValues("topics");
    if(topics==null){
        topics=new String[]{"No topics"};
    }
    for(int i=0;i<topics.length;i++){
%>
    <br><%=topics[i]%>
<%
    }
%>
    <p>Go to <a href="welcome.jsp">Topic List Page</a></p>
    <%@include file="WEB-INF/footer.jsp"%>
</body>
</html>
