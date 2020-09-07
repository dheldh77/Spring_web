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
    <title>NEW POST</title>
    <%@ include file="../cdn.jsp"%>
</head>
<body>
    <%@ include file="../header.jsp"%>
    <section style="max-width: 600px; margin: auto; margin-top:30px;">
        <form action="regist" method="post">
            <div class="form-group">
                <label for="title">Title</label>
                <input type="text" class="form-control" id="title" name="title" placeholder="title ">
            </div>
            <div class="form-group">
                <label for="content">Content</label>
                <textarea class="form-control" id="content" name="content" rows="20"></textarea>
            </div>
            <div class="form-group">
                <label for="title">User</label>
                <input type="text" class="form-control" id="user" name="user">
            </div>
            <input class="btn btn-primary" type="submit" value="Submit">
        </form>
    </section>
</body>
</html>
