<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/navigation.css"/>">

<%--<nav class="navbar navbar-toggleable-md navbar-light bg-faded fixed-top" id="navigationBar">--%>
    <%--<button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">--%>
        <%--<span class="navbar-toggler-icon"></span>--%>
    <%--</button>--%>
    <%--<a class="navbar-brand" href="/"><img src="<c:url value="/resources/images/icons/logoprojetx.png"/> " width="30" height="30" class="d-inline-block align-top" alt="">--%>
        <%--Accueil</a>--%>
    <%--<div class="collapse navbar-collapse" id="navbarNav">--%>
        <%--<ul class="navbar-nav mr-auto">--%>
            <%--<li class="nav-item active">--%>
                <%--<a class="nav-link" href="/overview">Overview<span class="sr-only">(current)</span></a>--%>
            <%--</li>--%>
            <%--<li class="nav-item">--%>
                <%--<a class="nav-link" href="/taches">Taches</a>--%>
            <%--</li>--%>
        <%--</ul>--%>


    <%--<ul class="navbar-nav">--%>
        <%--<li class="nav-item active">--%>
            <%--<a class="nav-link" href="/profil">Ma Page<span class="sr-only">(current)</span></a>--%>
        <%--</li>--%>
        <%--<li class="nav-item">--%>
            <%--<a class="nav-link pull-right" href="/">Deconnexion</a>--%>
        <%--</li>--%>
    <%--</ul>--%>
    <%--</div>--%>
<%--</nav>--%>

<nav class="navbar navbar-toggleable-md navbar-light fixed-top bg-faded">
    <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <a class="navbar-brand" href="<c:url value="/dashboard"/>"><img src="<c:url value="/resources/images/icons/logo1.png"/>"></a>
    <div class="collapse navbar-collapse" id="navbarCollapse">
        <ul class="navbar-nav mr-auto  align-items-center">
            <!-- Lien de test -->
            <!-- <li class="nav-item"><a class="nav-link" href="/projetx/views/template.model.html">Template page</a></li> -->
            <!-- Tableau de bord -->
            <li class="nav-item">
                <a class="nav-link" href="<c:url value="/dashboard"/>"> Tableau de bord</a>
            </li>
            <!-- Projet -->
            <li class="nav-item">
                <a class="nav-link" href="<c:url value="/projets"/>">Projets</a>
            </li>
            <!-- Tâches -->
            <li class="nav-item">
                <a class="nav-link" href="<c:url value="/taches"/>">Tâches</a>
            </li>
            <!-- Equipes -->
            <li class="nav-item">
                <a class="nav-link" href="<c:url value="/equipes"/>">Equipes</a>
            </li>
            <!-- Documents -->
            <li class="nav-item">
                <a class="nav-link" href="<c:url value="/documents"/>">Documents</a>
            </li>
        </ul>
        <ul class="navbar-nav ml-auto align-items-center">
            <!-- Alert -->
            <li class="nav-item">
                <a class="nav-link" data-toggle="modal" data-target="#modalAnnoncesProjets" ><span class="badge badge-pill badge-danger">1</span>&nbsp;<i class="ion-ios-bell-outline em-2" aria-hidden="true"></i></a>
            </li>
            <!-- Mail alert -->
            <li class="nav-item">
                <a class="nav-link" href="<c:url value="/messagerie" /> "><span class="badge badge-pill badge-warning">5</span>&nbsp;<i class="ion-ios-email-outline em-2" aria-hidden="true"></i></a>
            </li>
            <!-- Profil -->
            <li class="nav-item">
                <div class="chip"><a class="chipLink" href="<c:url value="/profil"/>"><img src="<c:url value="/resources/images/icons/avatar1-2.png"/>" alt="Person" width="50" height="50"> <c:out value="${user.nom}${user.prenom}" default="Dominique Mas"/> </a></div>
                <!-- <a class="nav-link" ">Profil</a> -->
            </li>
            <!-- Log out -->
            <li class="nav-item">
                <a class="nav-link" href="#"><i class="ion-log-out em-2" aria-hidden="true"></i></a>
            </li>
            <!-- DROPDOWN EXAMPLE -->
            <!-- <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="" id="dropdown01" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Dropdown</a>
            <div class="dropdown-menu" aria-labelledby="dropdown01">
                <a class="dropdown-item" href="#">Action</a>
                <a class="dropdown-item" href="#">Another action</a>
                <a class="dropdown-item" href="#">Something else here</a>
            </div>
            </li> *fin DROPDOWN -->
        </ul>
    </div>
</nav>

<!-- Modal annonces projets honteusement cacher avec la nav pour rester global-->
<div class="modal fade modal-lg" id="modalAnnoncesProjets" tabindex="-1" role="dialog" aria-labelledby="modalAnnoncesProjets" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-header">
            <i class="fa fa-times fa3" data-dismiss="modal"></i>
        </div>
        <div class="alert-box">
            <div class="alert alert-danger alert-dismissable">
                <a href="#" class="close" data-dismiss="alert" aria-label="close">×</a>
                <strong>pokemonGo</strong> La date de livraison de la maquette est avancé au 28/03/15
            </div>
            <div class="alert alert-info alert-dismissable">
                <a href="#" class="close" data-dismiss="alert" aria-label="close">×</a>
                <strong>Démenagenemt</strong> félicitations a l'équipe ! tout les cartons sont emballés
            </div>
        </div>
    </div>
</div>
