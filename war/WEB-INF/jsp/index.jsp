<%@ page session="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<head>
    <link rel="stylesheet" type="text/css" href="<c:url value="/static/css/home.css" /> "/>
    <link rel="stylesheet" type="text/css" href="<c:url value="/static/css/skeleton.css" /> "/>
    <%--<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>--%>
    <script type="text/javascript" src="<c:url value="/static/js/jquery-1.9.1.min.js" />"></script>

    <script type="text/javascript">
        $(document).ready(function () {
            $('#confirmation-msg').fadeOut(2500);
        });
    </script>
</head>
<body>
<div style="width: 100%; height:50px; background: white; text-align: center;">
    <img src="<c:url value="/static/images/morrisonsLogo.jpg" />" alt="" style="padding-top: 5px;"/>
</div>
<div class="confirmation-msg">
    <span>&nbsp;</span>
    <c:if test="${param.requestSent}">
        <span id="confirmation-msg">Your request has been sent.</span>
    </c:if>
</div>
<div class="padding-page">
<div class="background page-padding">
    <form action="<c:url value="/home/action"/>" method="post">
        <c:forEach var="request" items="${requests}">
            <div class="row sixteen columns">
                <input class="request" type="submit" value="${request.name}" name="req" onclick="">
            </div>
        </c:forEach>
    </form>
</div>
</div>
</body>