<%@ page session="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<head>
    <link rel="stylesheet" type="text/css" href="<c:url value="/static/css/home.css" /> "/>
    <link rel="stylesheet" type="text/css" href="<c:url value="/static/css/skeleton.css" /> "/>
    <script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>

</head>
<body>
<div style="width: 100%; height:50px; background: white; text-align: center;">
    <img src="http://www.morrisons.co.uk/graphics/morrisonsLogo.jpg" alt="" style="padding-top: 5px;"/>
</div>
<%--<div id="confirmation-msg" class="confirmation-msg">--%>
  <%--Your request has been sent.--%>
<%--</div>--%>
<div class="padding-page">
<div class="background page-padding">
    <form action="<c:url value="/home/login"/>" method="post">
            <div class="row sixteen columns">
                <label style="font-size: 2.5em;">
                    Till Number : <input type="text" name="tillNumber"/>
                </label>
            </div>
        <div>
            <input type="submit" value="Log In" class="request">
        </div>
    </form>
</div>
</div>
</body>