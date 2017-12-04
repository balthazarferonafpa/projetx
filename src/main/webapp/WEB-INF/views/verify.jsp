<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <%--<title>TABLEAU DE BORD</title>--%>
    <%@include file="includes.jsp" %>

    <!-- ======================**CSS**===================== -->
    <!-- CORE CSS -->
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/core.css"/>">
    <!-- CURRENT INTERFACE CSS -->
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/tableauDeBord.css"/>">

</head>

<body>
<!-- NAVBAR INCLUDE -->
<%@include file="nav.jsp" %>


${error}

<h3>Binvenue ${user.prenom}. </h3>
<p>Merci de votre inscription.</p>
</body>
</html>
