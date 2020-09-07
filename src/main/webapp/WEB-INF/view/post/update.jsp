<%--
  Created by IntelliJ IDEA.
  User: kimminseok
  Date: 2020/09/04
  Time: 11:03 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>POST #${post.id}</title>
    <%@ include file="../cdn.jsp"%>
</head>
<body>
    <%@ include file="../header.jsp"%>
    <section style="max-width: 600px; margin: auto; margin-top:30px;">
        <form action="${post.id}" method="post">
            <div class="form-group">
                <label for="title">Title</label>
                <input type="text" class="form-control" id="title" name="title" value="${post.title}">
            </div>
            <div class="form-group">
                <label for="content">Content</label>
                <textarea class="form-control" id="content" name="content" rows="20">${post.content}</textarea>
            </div>
            <div class="form-group">
                <label for="title">User</label>
                <input type="text" class="form-control" id="user" name="user" value="${post.user}">
            </div>
            <input class="btn btn-primary" type="submit" value="Submit">
        </form>
    </section>
</body>
</html>
