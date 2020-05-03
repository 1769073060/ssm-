<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <title>修改书籍</title>
</head>
<body>

<div class="container">

    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>书籍列表 —— 显示所有书籍</small>
                </h1>
            </div>
        </div>
    </div>

    <form action="${pageContext.request.contextPath}/book/updateBook" method="post">
        <input type="hidden" name="bookID" value="${QBooks.bookID}" style=""><br><br><br>
        书籍名称：<input type="text" name="bookName" value="${QBooks.bookName}"><br><br><br>
        书籍数量：<input type="text" name="bookCounts" value="${QBooks.bookCounts}"><br><br><br>
        书籍详情：<input type="text" name="detail" value="${QBooks.detail}"><br><br><br>
        <input type="submit" value="修改">
    </form>
</div>
</div>
</body>
</html>
