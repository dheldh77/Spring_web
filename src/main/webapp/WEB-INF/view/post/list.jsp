<%--
  Created by IntelliJ IDEA.
  User: kimminseok
  Date: 2020/09/04
  Time: 9:58 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tf" tagdir="/WEB-INF/tags" %>
<html>
<head>
    <title>BLOG</title>
    <%@ include file="../cdn.jsp"%>
</head>
<body>
    <%@ include file="../header.jsp"%>
    <section style="max-width: 1000px; margin:auto;">
        <div style="display: flex; align-items: end; justify-content: space-between; margin-top:20px; margin-left:20px; margin-right: 20px;">
            <h4>BOARD</h4>
            <p><a class="btn btn-link" href="<c:url value='/post/regist' />" role="button">new</a></p>
        </div>
        <table class="table thead-dark table-hover">
            <thead>
            <tr>
                <th scope="col">#</th>
                <th scope="col">DATE</th>
                <th scope="col">TITLE</th>
                <th scope="col">USER</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="post" items="${posts}">
                <tr>
                    <th scope="row">${post.id}</th>
                    <td><tf:formatDateTime value="${post.registerDateTime}" pattern="yyyy-MM-dd"/></td>
                    <td><a href="<c:url value='/post/${post.id}' />">${post.title}</a></td>
                    <td>${post.user}</td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </section>
</body>
</html>
