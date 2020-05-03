<%--
  Created by IntelliJ IDEA.
  User: asus
  Date: 2020/5/2
  Time: 13:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <form action="${pageContext.request.contextPath}/book/login" method="post">
        用户名:<input type="text" name="username">
        密码:<input type="text" name="password">
        <input type="submit" value="提交">
    </form>
</body>
</html>
