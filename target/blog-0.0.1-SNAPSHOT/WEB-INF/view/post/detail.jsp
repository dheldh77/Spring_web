<%--
  Created by IntelliJ IDEA.
  User: kimminseok
  Date: 2020/09/04
  Time: 10:08 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>${post.id}번 째 게시글</title>
</head>
<body>
    <h2>${post.title}</h2>
    <h6>${post.registerDateTime}</h6>
    <p>${post.user}</p>
    <p>${post.content}</p>
    <p><a href="<c:url value='/post/list' />">목록</a></p>
    <p><a href="<c:url value='/post/update/${post.id}' />">수정</a></p>
    <p><a href="<c:url value='/post/delete/${post.id}' />">삭제</a></p>
</body>
</html>
