<%--
  Created by IntelliJ IDEA.
  User: 34011-79-19
  Date: 22/08/2017
  Time: 16:45
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%--<script src="<c:url value="/resources/js/jquery3.2.1.js"/>"></script>--%>
    <%--<script src="<c:url value="/resources/bootstrap/js/bootstrap.js"/>"></script>--%>
    <%--<link rel="stylesheet" type="text/css" href="<c:url value="/resources/bootstrap/css/bootstrap.min.css"/> ">--%>
    <%--<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/main.css"/> ">--%>
    <%@include file="includes.jsp" %>
    <title>Projet-X | Contact </title>
</head>
<body>
<%@include file="nav.jsp" %>


<div class="container col-10 col-lg-10 cols-xs-10 col-sm-10 offset-1 inscription">

    <div class="card ">
        <h3 class="card-header card-primary">Contact :</h3>

        <form:form method="POST" action="contact">
        <div class="card-block">
            <div class="form-group ">
                <input type="text" placeholder="Nom">
            </div>
            <div class="form-group">
                <input type="text" placeholder="Objet">
            </div>
            <div class="form-group">
                <input type="textarea" placeholder="Message">
            </div>
            <a href="/reset"><button class="btn btn-primary pull-left" type="button">Identifiants Oubliés</button></a>
            <a href="/login"><button class="btn btn-primary pull-left" type="button">Connexion</button></a>
            <button class="btn btn-success  float-right" type="submit">Inscription</button>
        </div>


    </div>

</div>

</form:form>

<%@include file="footer.jsp" %>

</body>
</html>
