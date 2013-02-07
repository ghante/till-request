<%@ page session="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<head>
    <link rel="stylesheet" type="text/css" href="<c:url value="/static/css/home.css" /> "/>
    <link rel="stylesheet" type="text/css" href="<c:url value="/static/css/skeleton.css" /> "/>
</head>
<body>
<div class="padding-page">
<div class="background page-padding">
    <form action="<c:url value="/home/action"/>" method="post">
        <c:forEach var="request" items="${requests}">
            <div class="row sixteen columns">
                <input class="request" type="submit" value="${request.name}" name="req">
            </div>
        </c:forEach>
    </form>
</div>
</div>
</body>