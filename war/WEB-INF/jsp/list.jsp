<%@ page session="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<head>
    <link rel="stylesheet" type="text/css" href="<c:url value="/static/css/home.css" /> "/>
</head>
<body>
<div class="heading">
    <form action="home/action" method="post">
        <c:forEach var="request" items="${pending}">
            <div>${request.tillNumber} : ${request.tillRequest.name} : ${request.tillRequest.priority} : <input type="checkbox" value="${request.id}"/>Done</div>
        </c:forEach>
        <div class="padding-20"></div>
        <c:forEach var="request" items="${done}">
            <div>${request.tillNumber} : ${request.tillRequest.name} : ${request.tillRequest.priority} : <input type="checkbox" value="${request.id}"/>Undo</div>
        </c:forEach>
    </form>
</div>
</body>