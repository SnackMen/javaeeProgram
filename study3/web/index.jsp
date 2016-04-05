<%--
  User: laowang
  Date: 16-4-4
  Time: 下午10:11
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>选择物品购买</title>
  </head>
  <body>
  <form action="processBuy.jsp" method="post">
    书籍：<input type="checkbox" name="item" value="book">
    电脑：<input type="checkbox" name="item" value="computer">
    汽车：<input type="checkbox" name="item" value="car">
    <input type="submit" value="购买">
  </form>
  </body>
</html>
