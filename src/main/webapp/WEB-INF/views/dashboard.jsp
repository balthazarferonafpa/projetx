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


<!-- INTERFACE CONTAINER -->

<div class="card cartehauteur">
    <div class="card-header card-inverse card-primary text-white">
        <h3>Tableau de bord</h3>
    </div>
    <div class="card-block cadre">
        <div class="row">
            <div class="col-md-6 cadre2">
                <!-- Panel "Mes projets" de gauche -->
                <div class="card height">
                    <div class="card-header">
                        <h5 class="float-left ">Mes Projets</h5>
                        <button class="btn btn-success btn-xs float-right" data-toggle="modal" data-target="#modalProjet"><b>+</b></button>
                    </div>
                    <div class="card-block cadre">
                        <div class="row d-flex justify-content-around align-items-center">
                            <table id="tableprojets" class="table table-responsive table-striped ">
                                <thead>
                                <tr>
                                    <th class="logo">Logo</th>
                                    <th class="projet">Projet</th>
                                    <th class="datedebut">Date de début</th>
                                    <th class="datefin">Date de fin</th>
                                    <th class="etatavancement">Etat avancement</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td class="logo"><img src="<c:url value="/resources/images/icons/logopokemon.jpg"/>"></td>
                                    <td class="projet">Developpement appli Pokemon Friend go</td>
                                    <td class="datedebut">15/08/2017</td>
                                    <td class="datefin">01/09/2017</td>
                                    <td class="barre">
                                        <div id= "barreprogress" class="progress-bar progress-bar-striped progress-bar-animated" role="progressbar" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100" style="width: 75%"> 75 %</div>
                                    </td>
                                </tr>
                                <tr>

                                    <td class="logo"><img src="<c:url value="/resources/images/icons/maison.png"/>"></td>
                                    <td class="projet">Construction petit immeuble</td>
                                    <td class="datedebut">15/08/2017</td>
                                    <td class="datefin">01/09/2017</td>
                                    <td class="barre">
                                        <div id= "barreprogress" class="progress-bar progress-bar-striped progress-bar-animated" role="progressbar" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100" style="width: 20%"> 20 %</div>
                                    </td>
                                </tr>
                                <tr>

                                    <td class="logo"><img src="<c:url value="/resources/images/icons/cartons.png"/>"></td>
                                    <td class="projet">Demenagement</td>
                                    <td class="datedebut">15/08/2017</td>
                                    <td class="datefin">01/09/2017</td>
                                    <td class="barre">
                                        <div id= "barreprogress" class="progress-bar progress-bar-striped progress-bar-animated" role="progressbar" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100" style="width: 68%"> 68 %</div>
                                    </td>
                                </tr>
                                <tr>

                                    <td class="logo"><img src="<c:url value="/resources/images/icons/ordi.png"/>"></td>
                                    <td class="projet">Deploiement informatique</td>
                                    <td class="datedebut">15/08/2017</td>
                                    <td class="datefin">01/09/2017</td>
                                    <td class="barre">
                                        <div class="progress-bar progress-bar-striped bg-danger" role="progressbar" style="width: 100%" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100">0 %</div>
                                    </td>
                                </tr>
                                <tr>

                                    <td class="logo"><img src="<c:url value="/resources/images/icons/logopokemon.jpg"/>"></td>
                                    <td class="projet">Developpement appli Pokemon Friend go</td>
                                    <td class="datedebut">15/08/2017</td>
                                    <td class="datefin">01/09/2017</td>
                                    <td class="barre">
                                        <div id= "barreprogress" class="progress-bar progress-bar-striped progress-bar-animated" role="progressbar" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100" style="width: 75%"> 75 %</div>
                                    </td>
                                </tr>
                                <tr>

                                    <td class="logo"><img src="<c:url value="/resources/images/icons/maison.png"/>"></td>
                                    <td class="projet">Construction petit immeuble</td>
                                    <td class="datedebut">15/08/2017</td>
                                    <td class="datefin">01/09/2017</td>
                                    <td class="barre">
                                        <div id= "barreprogress" class="progress-bar cd /-bar-striped progress-bar-animated" role="progressbar" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100" style="width: 20%"> 20 %</div>
                                    </td>
                                </tr>
                                <tr>

                                    <td class="logo"><img src="<c:url value="/resources/images/icons/cartons.png"/>"></td>
                                    <td class="projet">Demenagement</td>
                                    <td class="datedebut">15/08/2017</td>
                                    <td class="datefin">01/09/2017</td>
                                    <td class="barre">
                                        <div id= "barreprogress" class="progress-bar progress-bar-striped progress-bar-animated" role="progressbar" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100" style="width: 68%"> 68 %</div>
                                    </td>
                                </tr>
                                <tr>

                                    <td class="logo"><img src="<c:url value="/resources/images/icons/ordi.png"/>"></td>
                                    <td class="projet">Deploiement informatique</td>
                                    <td class="datedebut">15/08/2017</td>
                                    <td class="datefin">01/09/2017</td>
                                    <td class="barre">
                                        <div class="progress-bar progress-bar-striped bg-danger" role="progressbar" style="width: 100%" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100">0 %</div>
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <!-- Panel "Mes taches" de droite -->
                <div class="card height">
                    <div class="card-header">
                        <h5 class="float-left">Mes Taches</h5>
                        <button class="btn btn-success btn-xs float-right" data-toggle="modal" data-target="#modalTache"><b>+</b></button>
                    </div>
                    <div class="card-block cadre">
                        <table id="tabletaches" class="table table-responsive table-striped">
                            <thead>
                            <tr>
                                <th class="tache">Tache</th>
                                <th class="projet2">Projet</th>
                                <th class="datedebut">Date de début</th>
                                <th class="datefin">Date de fin</th>
                                <th class="etatavancement">Etat avancement</th>
                                <th class="priorité">Priorité</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td class="tache">Maquettage application</td>
                                <td class="projet2">Pokemon friend go outtings</td>
                                <td class="datedebut">15/08/2017</td>
                                <td class="datefin">01/09/2017</td>
                                <td class="barre">
                                    <div id= "barreprogress" class="progress-bar progress-bar-striped progress-bar-animated" role="progressbar" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100" style="width: 75%"> 75 %</div>
                                </td>
                                <td class="priorité">Haute</td>
                            </tr>
                            <tr>
                                <td class="tache">Approvisionement materiel</td>
                                <td class="projet2">Petit immeuble</td>
                                <td class="datedebut">15/08/2017</td>
                                <td class="datefin">01/09/2017</td>
                                <td class="barre">
                                    <div id= "barreprogress" class="progress-bar progress-bar-striped progress-bar-animated" role="progressbar" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100" style="width: 20%"> 20 %</div>
                                </td>
                                <td class="priorité">Normale</td>
                            </tr>
                            <tr>
                                <td class="tache">Location fourgon</td>
                                <td class="projet2">Demenagement</td>
                                <td class="datedebut">15/08/2017</td>
                                <td class="datefin">01/09/2017</td>
                                <td class="barre">
                                    <div id= "barreprogress" class="progress-bar progress-bar-striped progress-bar-animated" role="progressbar" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100" style="width: 68%"> 68 %</div>
                                </td>
                                <td class="priorité">Haute</td>
                            </tr>
                            <tr>
                                <td class="tache">Edition planing</td>
                                <td class="projet2">Deploiement informatique</td>
                                <td class="datedebut">15/08/2017</td>
                                <td class="datefin">01/09/2017</td>
                                <td class="barre">
                                    <div class="progress-bar progress-bar-striped bg-danger" role="progressbar" style="width: 100%" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100">0 %</div>
                                </td>
                                <td class="priorité">Basse</td>
                            </tr>
                            <tr>
                                <td class="tache">Maquettage application</td>
                                <td class="projet2">Pokemon friend go outtings</td>
                                <td class="datedebut">15/08/2017</td>
                                <td class="datefin">01/09/2017</td>
                                <td class="barre">
                                    <div id= "barreprogress" class="progress-bar progress-bar-striped progress-bar-animated" role="progressbar" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100" style="width: 75%"> 75 %</div>
                                </td>
                                <td class="priorité">Haute</td>
                            </tr>
                            <tr>
                                <td class="tache">Approvisionement materiel</td>
                                <td class="projet2">Petit immeuble</td>
                                <td class="datedebut">15/08/2017</td>
                                <td class="datefin">01/09/2017</td>
                                <td class="barre">
                                    <div id= "barreprogress" class="progress-bar progress-bar-striped progress-bar-animated" role="progressbar" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100" style="width: 20%"> 20 %</div>
                                </td>
                                <td class="priorité">Normale</td>
                            </tr>
                            <tr>
                                <td class="tache">Location fourgon</td>
                                <td class="projet2">Demenagement</td>
                                <td class="datedebut">15/08/2017</td>
                                <td class="datefin">01/09/2017</td>
                                <td class="barre">
                                    <div id= "barreprogress" class="progress-bar progress-bar-striped progress-bar-animated" role="progressbar" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100" style="width: 68%"> 68 %</div>
                                </td>
                                <td class="priorité">Haute</td>
                            </tr>
                            <tr>
                                <td class="tache">Edition planing</td>
                                <td class="projet2">Deploiement informatique</td>
                                <td class="datedebut">15/08/2017</td>
                                <td class="datefin">01/09/2017</td>
                                <td class="barre">
                                    <div class="progress-bar progress-bar-striped bg-danger" role="progressbar" style="width: 100%" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100">0 %</div>
                                </td>
                                <td class="priorité">Basse</td>
                            </tr>
                            <tr>
                                <td class="tache">Maquettage application</td>
                                <td class="projet2">Pokemon friend go outtings</td>
                                <td class="datedebut">15/08/2017</td>
                                <td class="datefin">01/09/2017</td>
                                <td class="barre">
                                    <div id= "barreprogress" class="progress-bar progress-bar-striped progress-bar-animated" role="progressbar" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100" style="width: 75%"> 75 %</div>
                                </td>
                                <td class="priorité">Haute</td>
                            </tr>
                            <tr>
                                <td class="tache">Approvisionement materiel</td>
                                <td class="projet2">Petit immeuble</td>
                                <td class="datedebut">15/08/2017</td>
                                <td class="datefin">01/09/2017</td>
                                <td class="barre">
                                    <div id= "barreprogress" class="progress-bar progress-bar-striped progress-bar-animated" role="progressbar" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100" style="width: 20%"> 20 %</div>
                                </td>
                                <td class="priorité">Normale</td>
                            </tr>
                            <tr>
                                <td class="tache">Location fourgon</td>
                                <td class="projet2">Demenagement</td>
                                <td class="datedebut">15/08/2017</td>
                                <td class="datefin">01/09/2017</td>
                                <td class="barre">
                                    <div id= "barreprogress" class="progress-bar progress-bar-striped progress-bar-animated" role="progressbar" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100" style="width: 68%"> 68 %</div>
                                </td>
                                <td class="priorité">Haute</td>
                            </tr>
                            <tr>
                                <td class="tache">Edition planing</td>
                                <td class="projet2">Deploiement informatique</td>
                                <td class="datedebut">15/08/2017</td>
                                <td class="datefin">01/09/2017</td>
                                <td class="barre">
                                    <div class="progress-bar progress-bar-striped bg-danger" role="progressbar" style="width: 100%" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100">0 %</div>
                                </td>
                                <td class="priorité">Basse</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="cadregauchebas">
                <!-- Panel "dernieres alertes" de gauche bas -->
                <div class="card cadrebas">
                    <div class="card-header">
                        <h5 class="float-left">Dernières alertes</h5>
                    </div>
                    <div class="card-block cadre">
                        <div class="row d-flex justify-content-around align-items-center">
                            <table id="tablealertes" class="table table-responsive table-striped">
                                <tbody>
                                <tr>
                                    <td class="logoalerte"><img src="<c:url value="/resources/images/icons/imageflammerouge50-50.png"/>"></td>
                                    <td class="alerte">PROJET Pokemon Go : charte graphique est avancée au : 10/03/2018</td>
                                </tr>
                                <tr>
                                    <td class="logoalerte"><img src="<c:url value="/resources/images/icons/imagecaddyrouge50-50.png"/>"></td>
                                    <td class="alerte">PROJET Immeuble : Acheter en urgence Materiel Plomberie appartement 2</td>
                                </tr>
                                <tr>
                                    <td class="logoalerte"><img src="<c:url value="/resources/images/icons/fourgon2.png"/>"></td>
                                    <td class="alerte">PROJET Demmenagement : Louer en urgence Fourgon 23m3</td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <div class="cadremilieubas">
                <!-- Panel "Dernières activités" milieu bas -->
                <div class="card cadrebas">
                    <div class="card-header">
                        <h5 class="float-left">Dernières activités</h5>
                    </div>
                    <div class="card-block cadre">
                        <table id="tableactivites" class="table table-responsive table-striped">
                            <thead>
                            <tr>
                                <th class="projet3">Projet</th>
                                <th class="datedebut">Colaborateur</th>
                                <th class="datefin">Activité</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td class="projet3">Petit immeuble</td>
                                <td class="projet2">Francis Tessier</td>
                                <td class="datedebut">Plan de construction validé</td>
                            </tr>
                            <tr>
                                <td class="projet3">Petit immeuble</td>
                                <td class="projet2">Francis Tessier</td>
                                <td class="datedebut">25eme appartement prêt</td>
                            </tr>
                            <tr>
                                <td class="projet3">Demmenagement</td>
                                <td class="projet2">Gerard Aguerre</td>
                                <td class="datedebut">Formation bootstrap terminée</td>
                            </tr>
                            <tr>
                                <td class="projet3">Pokemon outings</td>
                                <td class="projet2">Feron Baltazard</td>
                                <td class="datedebut">transfert ftp 3 ok</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <div class="cadredroitebas cadre4">
                <!-- Panel "Derniers messages" droite bas -->
                <div class="card cadrebas">
                    <div class="card-header">
                        <h5 class="float-left">Derniers messages</h5>
                    </div>
                    <div class="card-block cadre">
                        <table id="tablemessages" class="table table-responsive table-striped">
                            <tbody>
                            <tr>
                                <td class="iconemessage"><img src="<c:url value="/resources/images/icons/avatar1-2.png"/>"></td>
                                <td class="nommessage">Gerard Aguerre</td>
                                <td class="message">OBJET : Projet Pokemon Go : Demande d'aide pour implementation ...</td>
                            </tr>
                            <tr>
                                <td class="iconemessage"><img src="<c:url value="/resources/images/icons/avatar2-2.png"/>"></td>
                                <td class="nommessage">Feron Baltazard</td>
                                <td class="message">OBJET : Projet Immeuble : Demande d'informations concernant ...</td>
                            </tr>
                            <tr>
                                <td class="iconemessage"><img src="<c:url value="/resources/images/icons/avatar3-2.png"/>"></td>
                                <td class="nommessage">Fahd Jaouad</td>
                                <td class="message">OBJET : Projet Demenagement : Confirmation trajet et metrage ...</td>
                            </tr>
                            <tr>
                                <td class="iconemessage"><img src="<c:url value="/resources/images/icons/avatar3-2.png"/>"></td>
                                <td class="nommessage">Fahd Jaouad</td>
                                <td class="message">OBJET : Projet Demenagement : Dois finir le metrage ?</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- MODAL CREATION PROJET -->
<div class="modal fade" id="modalProjet">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header text-white" style="background-color: #007bff">
                <h5 class="modal-title">Création d'un nouveau projet</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true" id="closeCross">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form>
                    <div class="form-group row">
                        <label for="nomProjet" class="form-control-label col-md-3">Nom du projet</label>
                        <input type="text" class="form-control col-md-8" id="nomProjet">
                    </div>
                    <div class="form-group row">
                        <label for="identifiant" class="form-control-label col-md-3">Identifiant</label>
                        <input type="text" class="form-control col-md-8" id="identifiant">
                    </div>
                    <div class="form-group row">
                        <label for="dateDebut" class="form-control-label col-md-3" >Date de début</label>
                        <input type= "text" class="form-control col-md-8" id="dateDebut">
                    </div>

                    <div class="form-group row">
                        <label for="dateFin" class="form-control-label col-md-3" >Date de fin</label>
                        <input type="text" class="form-control col-md-8" id="dateFin">
                    </div>

                    <div class="form-group row">
                        <label for="coutProjet" class="form-control-label col-md-3">Coût</label>
                        <input type="text" class="form-control col-md-8" id="coutProjet">
                    </div>

                    <div class="form-group row">
                        <label for="description" class="form-control-label col-md-3">Description</label>
                        <textarea class="form-control col-md-8" id="description" rows="8"></textarea>
                    </div>

                    <div class="modal-footer col-md-12">
                        <button type="reset" class="btn btn-danger">Effacer</button>
                        <button type="button" class="btn btn-success">Enregistrer</button>
                    </div>
                </form>
            </div>

        </div>
    </div>
</div>

<!-- MODAL CREATION PROJET -->
<div class="modal fade" id="modalTache">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header text-white" style="background-color: #007bff">
                <h5 class="modal-title">Création d'une nouvelle tâche</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true" id="closeCross">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form>
                    <div class="form-group row">
                        <label for="nomProjet" class="form-control-label col-md-3">Nom de la tâche</label>
                        <input type="text" class="form-control col-md-8" id="nomProjet">
                    </div>

                    <div class="form-group row">
                        <label for="identifiant" class="form-control-label col-md-3">Identifiant</label>
                        <input type="text" class="form-control col-md-8" id="identifiant">
                    </div>

                    <div class="form-group row">
                        <label for="nomProjet" class="form-control-label col-md-3">Projet Parent</label>
                        <input type="text" class="form-control col-md-8" id="nomProjet">
                    </div>

                    <div class="form-group row">
                        <label for="dateDebut" class="form-control-label col-md-3" >Date de début</label>
                        <input type= "text" class="form-control col-md-8" id="dateDebut">
                    </div>

                    <div class="form-group row">
                        <label for="dateFin" class="form-control-label col-md-3" >Date de fin</label>
                        <input type="text" class="form-control col-md-8" id="dateFin">
                    </div>

                    <div class="form-group row">
                        <label for="coutProjet" class="form-control-label col-md-3">Coût</label>
                        <input type="text" class="form-control col-md-8" id="coutProjet">
                    </div>

                    <div class="form-group row">
                        <label for="coutProjet" class="form-control-label col-md-3">Priorité</label>
                        <input type="text" class="form-control col-md-8" id="coutProjet">
                    </div>

                    <div class="form-group row">
                        <label for="description" class="form-control-label col-md-3">Description</label>
                        <textarea class="form-control col-md-8" id="description" rows="8"></textarea>
                    </div>

                    <div class="modal-footer col-md-12">
                        <button type="reset" class="btn btn-danger">Effacer</button>
                        <button type="button" class="btn btn-success">Enregistrer</button>
                    </div>
                </form>
            </div>

        </div>
    </div>
</div>

<!-- FOOTER INCLUDE -->

<%@include file="footer.jsp" %>


<!-- CURRENT INTERFACE JS -->
<script src="<c:url value="/resources/js/tableauDeBord.js"/>"></script>

</body>
</html>
