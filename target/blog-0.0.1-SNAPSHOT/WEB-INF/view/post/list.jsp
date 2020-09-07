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
    <%@ include file="../cdn.jsp"%>
</head>
<body>
    <section style="max-width: 1000px; margin:auto;">
        <table class="table thead-dark table-hover">
            <thead>
            <tr>
                <th scope="col">#</th>
                <th scope="col">닐찌</th>
                <th scope="col">제목</th>
                <th scope="col">사용자</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="post" items="${posts}">
                <tr>
                    <th scope="row">${post.id}</th>
                    <td>${post.registerDateTime}</td>
                    <td><a href="<c:url value='/post/${post.id}' />">${post.title}</a></td>
                    <td>${post.user}</td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
        <a href="<c:url value='/post/regist' />">새로운 글쓰기</a>
    </section>
</body>
</html>
