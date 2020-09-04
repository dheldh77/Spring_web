<%--
  Created by IntelliJ IDEA.
  User: kimminseok
  Date: 2020/09/04
  Time: 9:58 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>게시글</title>
</head>
<body>
    <table>
        <tr>
            <th>날짜</th>
            <th>제목</th>
            <th>사용자</th>
        </tr>
        <c:forEach var="post" items="${posts}">
            <tr>
                <td>${post.registerDateTime}</td>
                <td><a href="<c:url value='/post/${post.id}' />">${post.title}</a></td>
                <td>${post.user}</td>
            </tr>
        </c:forEach>
    </table>
    <a href="<c:url value='/post/regist' />">새로운 글쓰기</a>
</body>
</html>
