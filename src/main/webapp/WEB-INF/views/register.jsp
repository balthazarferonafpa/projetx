<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Register page</title>
        <link rel="stylesheet" type="text/css" href="//cdnjs.cloudflare.com/ajax/libs/font-awesome/4.2.0/css/font-awesome.css" />
    </head>
    <body>


    <div class="container-fluid col-6 col-lg-6 cols-xs-6 col-sm-6 offset-3 inscription showhide" id="inscriptionForm" >

        <div class="card ">
            <h3 class="card-header card-primary">Inscription :</h3>
            <c:url var="registerUrl" value="/register"/>
            <form:form method='POST' action='${registerUrl}' modelAttribute='u'>
                <div class="card-block">
                    <div class="form-group ">
                        <form:input path="firstname" class="form-control" placeholder="Prenom" type="text"/>
                        <form:errors path="firstname" cssClass="error" />
                    </div>
                    <div class="form-group">
                        <form:input path="lastname" class="form-control" placeholder="Nom" type="text"/>
                        <form:errors path="lastname" cssClass="error" />
                    </div>
                    <div class="form-group">
                        <form:input path="email" class="form-control" placeholder="E-mail" type="text" id="regEmail"/>
                        <form:errors path="email" cssClass="error" />
                    </div>

                    <div class="form-group">
                        <form:input path="password" class="form-control" placeholder="Mot de Passe" type="password"/>
                        <form:errors path="password" cssClass="error" />
                    </div>

                    <button class="btn btn-primary pull-left reset" type="button">Identifiants Oubliés</button>
                    <button class="btn btn-primary pull-left connexionB" type="button">Connexion</button>
                    <button class="btn btn-success  float-right inscriptionB" type="submit" id="inscriptionFinal">Inscription</button>
                </div>
            </form:form>


        </div>
    </div>
    </body>
</html>