<%--
  Created by IntelliJ IDEA.
  User: kimminseok
  Date: 2020/09/04
  Time: 10:08 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tf" tagdir="/WEB-INF/tags" %>
<html>
<head>
    <title>POST #${post.id}</title>
    <%@ include file="../cdn.jsp"%>
</head>
<body>
    <%@ include file="../header.jsp"%>
    <section style="max-width: 600px; margin: auto;">
        <div style="margin-top: 20px;">
            <h2>${post.title}</h2>
            <div style="display: flex; justify-content: space-between;">
                <h6><tf:formatDateTime value="${post.registerDateTime}" pattern="yyyy-MM-dd"/></h6>
                <p>${post.user}</p>
            </div>
        </div>
        <div style="height: 500px;">
            <p>${post.content}</p>
        </div>
        <div style="display: flex; justify-content: space-between;">
            <p><a href="<c:url value='/post/update/${post.id}' />">UPDATE</a></p>
            <p><a href="<c:url value='/post/list' />">LIST</a></p>
            <p><a href="<c:url value='/post/delete/${post.id}' />">DELETE</a></p>
        </div>
    </section>
</body>
</html>
