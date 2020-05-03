<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: asus
  Date: 2020/4/28
  Time: 0:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <style type="text/css">
    a {
        text-decoration: none;
        color: black;
        font-size: 18px;
    }
    h3 {
        width: 180px;
        height: 38px;
        margin: 100px auto;
        text-align: center;
        line-height: 38px;
        background: deepskyblue;
        border-radius: 4px;
    }
</style>

</head>
<body>


<div class="container">

    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>书籍列表 —— 显示所有书籍</small>
                    ${userLoginInfo}
                    <a href="${pageContext.request.contextPath}/book/getOut">注销</a>
                </h1>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-4 column">
            <a class="btn btn-primary" href="${pageContext.request.contextPath}/book/toAddBook">新增</a>
        </div>
    </div>

    <div class="row clearfix">
        <div class="col-md-12 column">
            <table class="table table-hover table-striped">
                <thead>
                <tr>
                    <th>书籍编号</th>
                    <th>书籍名字</th>
                    <th>书籍数量</th>
                    <th>书籍详情</th>
                    <th>操作</th>
                </tr>
                </thead>

                <tbody>
                <c:forEach var="books" items="${requestScope.get('book')}">
                    <tr>
                        <td>${books.getBookID()}</td>
                        <td>${books.getBookName()}</td>
                        <td>${books.getBookCounts()}</td>
                        <td>${books.getDetail()}</td>
                        <td>
                            <a href="${pageContext.request.contextPath}/book/toUpdateBook?id=${books.bookID}">更改</a> |
                            <a href="${pageContext.request.contextPath}/book/deleteBook/${books.bookID}">删除</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>
<%--欢迎来到书籍展示页面--%>
<%--<c:forEach var="books" items="${book}">--%>
<%--    <tr>--%>
<%--        <td>${books.bookID}</td>--%>
<%--        <td>${books.bookName}</td>--%>
<%--        <td>${books.bookCounts}</td>--%>
<%--        <td>${books.detail}</td>--%>
<%--    </tr>--%>
<%--</c:forEach>--%>
</body>
</html>
