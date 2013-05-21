<%@ page session="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<head>
    <link rel="stylesheet" type="text/css" href="<c:url value="/static/css/home.css" /> "/>
    <link rel="stylesheet" type="text/css" href="<c:url value="/static/css/skeleton.css" /> "/>
    <%--<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>--%>
    <script type="text/javascript" src="<c:url value="/static/js/jquery-1.9.1.min.js" />"></script>
    <script type="text/javascript" src="<c:url value="/static/js/supervisor.list.js" />"></script>
</head>
<body style="background-color: white;">
<%--<table class="sixteen columns background-done">--%>
<%--<thead>--%>
<%--<tr>--%>
<%--<th class="three columns">Till Number</th>--%>
<%--<th class="four columns">Request</th>--%>
<%--<th class="four columns">Time</th>--%>
<%--<th class="three columns">Done</th>--%>
<%--</tr>--%>
<%--</thead>--%>
<%--<tbody>--%>
<%--<c:forEach var="request" items="${pending}">--%>
<%--<tr>--%>
<%--<td class="three columns item">${request.tillNumber}</td>--%>
<%--<td class="four columns">${request.tillRequest.name}</td>--%>
<%--<td class="four columns">${request.timeStamp}</td>--%>
<%--<td class="three columns">--%>
<%--<form action="<c:url value="/home/done"/>" method="post">--%>
<%--<input type="hidden" value="${request.id}" name="requestId"/>--%>
<%--<input type="submit" value="Done" name="done-button"/>--%>
<%--</form>--%>
<%--</td>--%>
<%--</tr>--%>
<%--</c:forEach>--%>
<%--</tbody>--%>
<%--</table>--%>
<div style="width: 100%; height:50px; background: white; text-align: center;">
    <img src="<c:url value="/static/images/morrisonsLogo.jpg" />" alt="" style="padding-top: 5px;"/>
</div>

<div class="refresh">
    <img id="refresh-button" src="<c:url value="/static/images/refresh.png" />" width="128px" height="128px" alt="">
</div>

<div class="refresh" style="padding: 20px;">
    <span style="font-family: sans-serif; font-size: 2em;">Filter By : </span>
    <span class="request sort-by" style="padding: 10px;">Request</span>
    <span class="request sort-by" style="padding: 10px;margin-left: 20px;">Till Number</span>
</div>

<div class="padding-page">
    <div class="title" style="clear: both; display: block;">
        Pending
    </div>
    <div class="background page-padding">
        <c:forEach var="request" items="${pending}">
            <div class="row sixteen columns" style="border-bottom: 1px solid;">
                <div class="" style="width: 70%; float: left;">
                    <div style="font-size: 3em;">${request.tillRequest.name}</div>
                    <div style="font-size: 1.5em;">Till Number : ${request.tillNumber}</div>
                    <div style="font-size: 1.5em;">${request.time}</div>
                </div>
                <div class="" style="width: 29%; float: left;">
                    <form action="<c:url value="/home/done"/>" method="post">
                        <input type="hidden" value="${request.id}" name="requestId"/>
                        <div class="request action-button" style="text-align: center">
                            <div style="padding-top: 25px;">
                                <span>Done</span>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
            </c:forEach>
    </div>
</div>

<div class="padding-page">
    <div class="title" style="clear: both; display: block;">
        Complete
    </div>
    <div class="background page-padding">
        <c:forEach var="request" items="${done}">
            <div class="row sixteen columns" style="border-bottom: 1px solid;">
                <div class="" style="width: 70%; float: left;">
                    <div style="font-size: 3em;">${request.tillRequest.name}</div>
                    <div style="font-size: 1.5em; ">Till Number : ${request.tillNumber}</div>
                    <div style="font-size: 1.5em; ">${request.time}</div>
                </div>
                <div class="" style="width: 29%; float: left;">
                    <form action="<c:url value="/home/undo"/>" method="post">
                        <input type="hidden" value="${request.id}" name="requestId"/>
                        <div class="request action-button" style="text-align: center">
                            <div style="padding-top: 25px;">
                                <span>Undo</span>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </c:forEach>
    </div>
</div>
<%--<div style="margin-left: 10%">--%>
    <%--<c:forEach var="request" items="${pending}">--%>
        <%--<div class="row sixteen columns">--%>
            <%--<div class="seven columns" style="font-size: 3em;">--%>
                    <%--<div>${request.tillRequest.name}</div>--%>
                    <%--<div>Till Number : ${request.tillNumber}</div>--%>
                    <%--<div>${request.timeStamp}</div>--%>
            <%--</div>--%>
            <%--<div class="seven columns">--%>
                <%--<form action="<c:url value="/home/done"/>" method="post">--%>
                    <%--<input type="hidden" value="${request.id}" name="requestId"/>--%>
                    <%--<div><span style="width: 100%; height: 100%; background-color: red;">Done</span></div>--%>
                <%--</form>--%>
            <%--</div>--%>
        <%--</div>--%>
    <%--</c:forEach>--%>
<%--</div>--%>
<%--<div class="row sixteen columns">--%>
<%--<form action="<c:url value="/home/done"/>" method="post">--%>
<%--<input type="hidden" value="${request.id}" name="requestId"/>--%>
<%--${request.tillNumber}--%>
<%--${request.tillRequest.name}--%>
<%--${request.timeStamp}--%>
<%--<input type="submit" value="Done" name="done-button"--%>
<%--class="action"/>--%>
<%--</form>--%>
<%--</div>--%>

<%--<div class="padding-20"></div>--%>
<%--<div class="background-undo">--%>
    <%--<c:forEach var="request" items="${done}">--%>
        <%--<div class="row sixteen columns">--%>
            <%--<form action="<c:url value="/home/undo"/>" method="post">--%>
                <%--<input type="hidden" value="${request.id}" name="requestId"/>--%>

                <%--<div>${request.tillNumber} : ${request.tillRequest.name} : ${request.timeStamp} : <input--%>
                        <%--type="submit" value="Undo" class="action"/>--%>
                <%--</div>--%>
            <%--</form>--%>
        <%--</div>--%>
    <%--</c:forEach>--%>
<%--</div>--%>
</body>