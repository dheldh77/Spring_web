<%--
  Created by IntelliJ IDEA.
  User: kimminseok
  Date: 2020/09/06
  Time: 9:27 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>홈</title>
    <%@ include file="cdn.jsp"%>
    <link href="https://fonts.googleapis.com/css2?family=Tangerine:wght@700&display=swap" rel="stylesheet">
</head>
<body>
    <section style="display: flex; height: 100vh; width: 100%; justify-content: center; align-items: center;">
        <div style="text-align: center;">
            <h2 style="font-family: 'Tangerine', cursive; font-size: 6em; letter-spacing: 10px">Blog</h2>
            <a href="<c:url value='/post/list' />">시작하기 >></a>
        </div>
    </section>
</body>
</html>