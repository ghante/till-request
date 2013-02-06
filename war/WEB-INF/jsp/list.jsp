<%@ page session="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<head>
    <link rel="stylesheet" type="text/css" href="<c:url value="/static/css/home.css" /> "/>
    <script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
    <%--<script type="text/javascript" src="<c:url value="/static/js/supervisor.list.js" />"></script>--%>
</head>
<body>
<div class="heading">
    <c:forEach var="request" items="${pending}">
        <form action="<c:url value="/home/done"/>" method="post">
            <input type="hidden" value="${request.id}" name="requestId"/>

            <div>${request.tillNumber} : ${request.tillRequest.name} : ${request.tillRequest.priority} : <input
                    type="submit" value="Done" name="done-button"/></div>
        </form>
    </c:forEach>
    <div class="padding-20"></div>
    <c:forEach var="request" items="${done}">
        <form action="<c:url value="/home/undo"/>" method="post">
            <input type="hidden" value="${request.id}" name="requestId"/>
            <div>${request.tillNumber} : ${request.tillRequest.name} : ${request.tillRequest.priority} : <input
                    type="submit" value="Undo"/>
            </div>
        </form>
    </c:forEach>
</div>
</body>