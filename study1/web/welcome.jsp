<%@ page import="java.util.Iterator,com.FaqCategories" %>
<%@ page import="com.User" %><%--
  Created by IntelliJ IDEA.
  User: laowang
  Date: 16-3-25
  Time: 下午4:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Java FAQ Welcome Page</title>
</head>
<body>
    <h1>Java FAQ Welcome Page</h1>
<%
    User user = (User) session.getAttribute("user");
//    强制转换，不然返回的是object类型对象
    if(user == null){

%>
    You are not yet registed,please
    <a href="registrationform.html">register</a>
<%
    }else{
%>
    Welcome to the Java FAQ
<%!FaqCategories faqCategories = new FaqCategories();%>
Click a link below for answers to given topic.
<%
    Iterator categories = faqCategories.getAllCategories();
    while(categories.hasNext()){//遍历
        String category = (String)categories.next();
%> <p>
        <a href="<%=replaceUnderscore(category)%>.jsp"><%=category %>
            <%--链接页面和文字--%>
        </a>
    </p>
<%
    }
%>
<%@include file="/WEB-INF/footer.jsp"%>
<%
}
%>
</body>
</html>
<%!
    public String replaceUnderscore(String s){
        return s.replace(' ','_');
    }
%>
