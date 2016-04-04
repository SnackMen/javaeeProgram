<%@ page import="java.util.Iterator,com.FaqCategories" %>
<%@ page import="com.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page errorPage="WEB-INF/errorPage.jsp"
    import="java.util.Iterator,com.*" %>
<%@ page import="com.sun.xml.internal.fastinfoset.algorithm.IEEE754FloatingPointEncodingAlgorithm" %>
<%
    User user = (User)session.getAttribute("user");
    String reqType = request.getParameter("reqType");
    if(user == null && reqType == null){
%>
    <jsp:forward page="registrationform.html"/>
<%
    }else if(user == null && reqType!=null){
%>
    <jsp:forward page="registration.jsp">
        <jsp:param name="submitTime" value="<%=(new java.util.Date()).toString()%>"/>
    </jsp:forward>
<%
    }
%>
<html>
<head>
    <meta name="Cache-control" content="no-cache">
    <title>Java FAQ Welcome Page</title>
</head>
<body>
    <h1>Java FAQ Welcome Page</h1>
    Welcome to the Java FAQ
<%! FaqCategories faqs = new FaqCategories();%>
    Click a link below for answers to the given topic.
<%
    Iterator categories = faqs.getAllCategories();
    while(categories.hasNext()){
        String catefory = (String) categories.next();
%>
    <p><a href="<%=replaceUnderscore(catefory)%>.jsp" <%=catefory%> </a> </p>
<%
    }
%>
<%@include file="/WEB-INF/footer.jsp"%>

</body>
</html>
<%!
    public String replaceUnderscore(String s){
        return s.replace(' ','_');
    }
%>
