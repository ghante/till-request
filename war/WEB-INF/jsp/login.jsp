<%@ page session="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<head>
    <link rel="stylesheet" type="text/css" href="<c:url value="/static/css/home.css" /> "/>
    <link rel="stylesheet" type="text/css" href="<c:url value="/static/css/skeleton.css" /> "/>
    <%--<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>--%>
    <script type="text/javascript" src="<c:url value="/static/js/jquery-1.9.1.min.js" />"></script>


</head>
<body>
<div style="width: 100%; height:50px; background: white; text-align: center;">
    <img src="<c:url value="/static/images/morrisonsLogo.jpg" />" alt="" style="padding-top: 5px;"/>
</div>
<%--<div id="confirmation-msg" class="confirmation-msg">--%>
  <%--Your request has been sent.--%>
<%--</div>--%>
<div class="padding-page">
<div class="background page-padding">
    <form action="<c:url value="/home/login"/>" method="post">
            <div class="row sixteen columns">
                <label>
                    <span style="font-size: 2.5em;">Till Number :</span> <input type="text" name="tillNumber" style="font-size: 2.5em;"/>
                </label>
            </div>
        <div>
            <input type="submit" value="Log In" class="request">
        </div>
    </form>
</div>
</div>
</body>