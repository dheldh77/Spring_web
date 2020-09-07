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
</head>
<body>
    <h2>홈 화면</h2>
    <a href="<c:url value='/post/list' />">글 목록</a>
</body>
</html>