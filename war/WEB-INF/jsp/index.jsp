<%@ page session="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<head>
    <link rel="stylesheet" type="text/css" href="<c:url value="/static/css/home.css" /> "/>
</head>
<body>
<div class="heading">
    <h1>
        <form action="home/action" method="post">
            <input type="submit" value="Verify Age" name="req">
            <input type="submit" value="TV License" name="req">
            <input type="submit" value="Change" name="req">
            <input type="submit" value="Spillage" name="req">
            <input type="submit" value="Toilet Break" name="req">
        </form>
    </h1>
</div>
</body>