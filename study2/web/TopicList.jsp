<%--
  User: laowang
  Date: 16-4-4
  Time: 下午7:29
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.util.*,java.lang.*" %>
<html>
<head>
    <title>Topic Questions</title>
</head>
<body>
    <h1>Topic Questions</h1>
    <jsp:useBean id="questions" class="pers.laowang.study2.el.Questions">
        <jsp:setProperty name="questions" property="topic"/>
    </jsp:useBean>
    <%
        Map topic = questions.getQuestions();
        Iterator keys = topic.keySet().iterator();
        while (keys.hasNext()){
            String key = (String)keys.next();
            pageContext.setAttribute("key",key);
    %>
        <p>
            Question <a href="Questions.jsp?qid=${key}">
            ${key}</a>
            ${questions.questions[key]}
        </p>
    <%
        }
    %>
</body>
</html>

