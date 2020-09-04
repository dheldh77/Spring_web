<%--
  Created by IntelliJ IDEA.
  User: kimminseok
  Date: 2020/09/04
  Time: 8:42 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h2>글 작성</h2>
    <form action="regist" method="post">
        <p>
            <label>제목 : <br>
                <input type="text" name="title">
            </label>
        </p>
        <p>
            <label>내용 : <br>
                <textarea name="content"></textarea>
            </label>
        </p>
        <p>
            <label>유저 : <br>
                <input type="text" name="user">
            </label>
        </p>
        <input type="submit" value="작성 완료">
    </form>
</body>
</html>
