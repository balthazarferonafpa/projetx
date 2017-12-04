<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%@include file="includes.jsp" %>
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/projetDetails.css"/>">
</head>

<body>

<!-- NAVBAR INCLUDE -->
<%@include file="nav.jsp" %>
<!-- INTERFACE CONTAINER -->
<div class="container-fluid">
    <!-- #CODE HERE -->
    <div class="card">
        <div class="card-header card-inverse card-primary text-white">
            <h3>Détails du projet</h3>
        </div>
        <div class="card-block">
            <div class="row">
                <div class="col-md-4">
                    <!-- Panel "infos" de gauche -->
                    <div class="card">
                        <div class="card-header">
                            <h5 class="float-left"><strong>Informations sur le projet</strong></h5>
                            <a href="/reset">
                                <button class="btn btn-primary float-right droit_chef" type="button"
                                        data-toggle="modal" data-target="#modal_info_general" id="info_general">Modifier</button>
                            </a>
                        </div>
                        <div class="card-block">
                            <p><strong>Nom du projet:</strong></p>
                            <p><strong>Identifiant du projet:</strong></p>
                            <p><strong>Date de début:</strong></p>
                            <p><strong>Date de fin:</strong></p>
                            <p><strong>Chef de projet:</strong></p>
                            <p><strong>Coût du projet:</strong></p>
                            <p><strong>Description:</strong></p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <!-- Panel "collaborateurs" du centre en haut-->
                    <div class="card">
                        <div class="card-header">
                            <h5 class="float-left"><strong>Collaborateurs</strong></h5>
                            <button class="btn btn-success btn-xs float-right droit_chef" data-toggle="modal" data-target="#modal_ajout_collaborateur" id="ajout_collaborateur"><b>+</b></button>
                        </div>
                        <!-- Panel "collaborateurs" du centre en haut-->
                        <div class="card-block block-amis-coll">
                            <div class="row d-flex justify-content-around align-items-center">
                                <img src="http://via.placeholder.com/50x50">
                                <span class="float-left">Jean</span>
                                <span>Dupont</span>
                                <button class="btn btn-danger btn-xs droit_chef" data-toggle="modal" data-target="#modal_suppression_collaborateur" id="suppression_collaborateur"><b>-</b></button>
                            </div>
                            <div class="row top-buffer d-flex justify-content-around align-items-center">
                                <img src="http://via.placeholder.com/50x50">
                                <span class="float-left">Jean</span>
                                <span>Dupont</span>

                                <button class="btn btn-danger btn-xs droit_chef" data-toggle="modal" data-target="#modal_suppression_collaborateur" id="suppression_collaborateur"><b>-</b></button>
                            </div>
                            <div class="row top-buffer d-flex justify-content-around align-items-center">
                                <img src="http://via.placeholder.com/50x50">
                                <span class="float-left">Jean</span>
                                <span>Dupont</span>

                                <button class="btn btn-danger btn-xs droit_chef" data-toggle="modal" data-target="#modal_suppression_collaborateur" id="suppression_collaborateur"><b>-</b></button>
                            </div>
                            <div class="row top-buffer d-flex justify-content-around align-items-center">
                                <img src="http://via.placeholder.com/50x50">
                                <span class="float-left">Jean</span>
                                <span>Dupont</span>

                                <button class="btn btn-danger btn-xs droit_chef" data-toggle="modal" data-target="#modal_suppression_collaborateur" id="suppression_collaborateur"><b>-</b></button>
                            </div>
                            <div class="row top-buffer d-flex justify-content-around align-items-center">
                                <img src="http://via.placeholder.com/50x50">
                                <span class="float-left">Jean</span>
                                <span>Dupont</span>

                                <button class="btn btn-danger btn-xs droit_chef" data-toggle="modal" data-target="#modal_suppression_collaborateur" id="suppression_collaborateur"><b>-</b></button>
                            </div>
                            <div class="row top-buffer d-flex justify-content-around align-items-center">
                                <img src="http://via.placeholder.com/50x50">
                                <span class="float-left">Jean</span>
                                <span>Dupont</span>

                                <button class="btn btn-danger btn-xs droit_chef" data-toggle="modal" data-target="#modal_suppression_collaborateur" id="suppression_collaborateur"><b>-</b></button>
                            </div>
                            <div class="row top-buffer d-flex justify-content-around align-items-center">
                                <img src="http://via.placeholder.com/50x50">
                                <span class="float-left">Jean</span>
                                <span>Dupont</span>

                                <button class="btn btn-danger btn-xs droit_chef" data-toggle="modal" data-target="#modal_suppression_collaborateur" id="suppression_collaborateur"><b>-</b></button>
                            </div>
                            <div class="row top-buffer d-flex justify-content-around align-items-center">
                                <img src="http://via.placeholder.com/50x50">
                                <span class="float-left">Jean</span>
                                <span>Dupont</span>

                                <button class="btn btn-danger btn-xs droit_chef" data-toggle="modal" data-target="#modal_suppression_collaborateur" id="suppression_collaborateur"><b>-</b></button>
                            </div>
                            <div class="row top-buffer d-flex justify-content-around align-items-center">
                                <img src="http://via.placeholder.com/50x50">
                                <span class="float-left">Jean</span>
                                <span>Dupont</span>

                                <button class="btn btn-danger btn-xs droit_chef" data-toggle="modal" data-target="#modal_suppression_collaborateur" id="suppression_collaborateur"><b>-</b></button>
                            </div>
                        </div>
                        <!-- Header du Panel "documents" du centre en bas-->
                        <div class="card-header">
                            <h5 class="float-left"><strong>Documents liés au projet</strong></h5>
                        </div>
                        <!-- Panel "documents" du centre en bas-->
                        <div class="card-block block-amis-coll">
                            <div class="row d-flex">
                                <span>Charte graphique</span>
                            </div>
                            <div class="row top-buffer d-flex">
                                <span class="float-left">Diagramme de classe</span>
                            </div>
                            <div class="row top-buffer d-flex">
                                <span class="float-left">Diagramme de séquence</span>
                            </div>
                            <div class="row top-buffer d-flex">
                                <span class="float-left">Diagramme de transition</span>
                            </div>
                            <div class="row top-buffer d-flex">
                                <span class="float-left">MCD</span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <!-- Panel avancement des tâches en haut à droite de l'écran-->
                    <div class="card">
                        <div class="card-header">
                            <h5 class="float-left"><strong>Avancement global du projet</strong></h5>
                        </div>
                        <div id="piechart">
                            <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
                            <script type="text/javascript" src="<c:url value="/resources/js/chart.js"/>"></script>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <div class="block-taches">
        <table class="table table-responsive table-striped" id="table_id">
            <thead>
            <tr>
                <th>Nom</th>
                <th>Date de début</th>
                <th>Date de fin</th>
                <th>Collaborateurs</th>
                <th>Niveau d'urgence</th>
                <th>Pourcentage d'avancement</th>
                <th>Modification</th>
                <th>Suppression</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>HTML</td>
                <td>14/04/2017</td>
                <td>30/04/2017</td>
                <td>Balthasar Ferron</td>
                <td>Moyen</td>
                <td>
                    <div class="progress">
                        <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%;">
                            60%
                        </div>
                    </div>
                </td>
                <td><button type="button" class="btn btn-primary btn-sm droit_chef" data-toggle="modal" data-target="#modal_modification_tache" id="modification_tache">Modifier</button></td>
                <td><button type="button" class="btn btn-danger btn-sm droit_chef" data-toggle="modal" data-target="#modal_suppression_tache" id="suppression_tache">-</button></td>
            </tr>
            <tr>
                <td>CSS</td>
                <td>15/04/2017</td>
                <td>30/04/2017</td>
                <td>Francis Tessier</td>
                <td>Moyen</td>
                <td>
                    <div class="progress">
                        <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%;">
                            60%
                        </div>
                    </div>
                </td>
                <td><button type="button" class="btn btn-primary btn-sm droit_chef" data-toggle="modal" data-target="#modal_modification_tache" id="modification_tache">Modifier</button></td>
                <td><button type="button" class="btn btn-danger btn-sm droit_chef" data-toggle="modal" data-target="#modal_suppression_tache" id="suppression_tache">-</button></td>
            </tr>
            <tr>
                <td>CSS</td>
                <td>15/04/2017</td>
                <td>30/04/2017</td>
                <td>Francis Tessier</td>
                <td>Moyen</td>
                <td>
                    <div class="progress">
                        <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%;">
                            60%
                        </div>
                    </div>
                </td>
                <td><button type="button" class="btn btn-primary btn-sm droit_chef" data-toggle="modal" data-target="#modal_modification_tache" id="modification_tache">Modifier</button></td>
                <td><button type="button" class="btn btn-danger btn-sm droit_chef" data-toggle="modal" data-target="#modal_suppression_tache" id="suppression_tache">-</button></td>
            </tr>
            <tr>
                <td>CSS</td>
                <td>15/04/2017</td>
                <td>30/04/2017</td>
                <td>Francis Tessier</td>
                <td>Moyen</td>
                <td>
                    <div class="progress">
                        <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%;">
                            60%
                        </div>
                    </div>
                </td>
                <td><button type="button" class="btn btn-primary btn-sm droit_chef" data-toggle="modal" data-target="#modal_modification_tache" id="modification_tache">Modifier</button></td>
                <td><button type="button" class="btn btn-danger btn-sm droit_chef" data-toggle="modal" data-target="#modal_suppression_tache" id="suppression_tache">-</button></td>
            </tr>
            </tbody>
        </table>
    </div>
</div>
<!--Modale information sur le projet-->
<div class="modal fade" id="modal_info_general">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header text-white" style="background-color: #007bff">
                <h5 class="modal-title">Modification des informations générales du projet</h5>
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
                        <label for="identifiant" class="form-control-label col-md-3">Identifiant du projet</label>
                        <p id="identifiant">Identifiant du projet</p>
                    </div>
                    <div class="form-group row">
                        <label for="dateDebut" class="form-control-label col-md-3">Date de début du projet</label>
                        <input type="text" class="form-control col-md-8" id="dateDebut">
                    </div>
                    <div class="form-group row">
                        <label for="dateFin" class="form-control-label col-md-3">Date de fin du projet</label>
                        <input type="text" class="form-control col-md-8" id="dateFin">
                    </div>
                    <div class="form-group row">
                        <label for="chefProjet" class="form-control-label col-md-3">Chef de projet</label>
                        <input type="text" class="form-control col-md-8" id="chefProjet">
                    </div>
                    <div class="form-group row">
                        <label for="coutProjet" class="form-control-label col-md-3">Coût de projet</label>
                        <input type="text" class="form-control col-md-8" id="coutProjet">
                    </div>
                    <div class="form-group row">
                        <label for="description" class="form-control-label col-md-3">Description</label>
                        <textarea class="form-control col-md-8" id="description" rows="8"></textarea>
                    </div>
                    <div class="modal-footer col-md-12">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal" id="reset">Fermer</button>
                        <button type="reset" class="btn btn-danger">Reset</button>
                        <button type="button" class="btn btn-success">Modifier</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<!-- Modale ajout de collaborateur-->
<div class="modal fade" id="modal_ajout_collaborateur">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header text-white" style="background-color: #007bff">
                <h5 class="modal-title">Ajout de collaborateurs</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true" id="closeCross">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form method="post" action="traitement.php">
                    <p>
                        <label for="nom">Quel collaborateur voulez-vous ajouter?</label><br />
                        <select name="nom" id="nom">
                            <option value="Dupont">Dupont</option>
                            <option value="Tessier">Tessier</option>
                            <option value="Castel">Castel</option>
                            <option value="Aguerre">Aguerre</option>
                            <option value="Ferron">Ferron</option>
                            <option value="Sabat">Sabat</option>
                            <option value="Dupont">Dupont</option>
                            <option value="Dupont">Dupont</option>
                        </select>
                    </p>
                    <div class="modal-footer col-md-12">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal" id="reset">Fermer</button>
                        <button type="button" class="btn btn-success">Ajouter</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<!-- Modale suppression de collaborateur-->
<div class="modal fade" id="modal_suppression_collaborateur">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header text-white" style="background-color: #007bff">
                <h5 class="modal-title">Suppression de collaborateurs</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true" id="closeCross">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form method="post" action="traitement.php">
                    <p>
                        Etes-vous sur de vouloir supprimer le collaborateur X?
                    </p>
                </form>
                <div class="modal-footer col-md-12">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal" id="reset">Fermer sans supprimer</button>
                    <button type="button" class="btn btn-danger">Suppression</button>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Modale ajout tache-->
<div class="modal fade" id="modal_ajout_tache">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header text-white" style="background-color: #007bff">
                <h5 class="modal-title">Ajout d'une tâche</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true" id="closeCross">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form>
                    <div class="form-group row">
                        <label for="nom" class="form-control-label col-md-3">Nom</label>
                        <input type="text" class="form-control col-md-8" id="nom">
                    </div>
                    <div class="form-group row">
                        <label for="dateDebut" class="form-control-label col-md-3">Date de début de la tâche</label>
                        <input type="text" class="form-control col-md-8" id="dateDebut">
                    </div>
                    <div class="form-group row">
                        <label for="dateFin" class="form-control-label col-md-3">Date de fin de la tâche</label>
                        <input type="text" class="form-control col-md-8" id="dateFin">
                    </div>
                    <form method="post" action="traitement.php">
                        <p>
                            <label for="nom">Quels collaborateurs voulez-vous ajouter?</label><br />
                            <select name="collaborateurs" id="collaborateurs" multiple>
                                <option value="dupont">Dupont</option>
                                <option value="tessier">Tessier</option>
                                <option value="ferron">Ferron</option>
                            </select>
                        </p>
                    </form>
                    <form method="post" action="traitement.php">
                        <p>
                            <label for="nom">Quel est le niveau d'urgence de la tâche?</label><br />
                            <select name="urgence" id="urgence">
                                <option value="faible">Faible</option>
                                <option value="moyen">Moyen</option>
                                <option value="eleve">Elevé</option>
                            </select>
                        </p>
                    </form>
                    <div class="form-group row">
                        <label for="niveauAvancement" class="form-control-label col-md-3">Niveau d'avancement</label>
                        <input type="text" class="form-control col-md-8" id="niveauAvancement">
                    </div>
                    <div class="modal-footer col-md-12">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal" id="reset">Fermer</button>
                        <button type="button" class="btn btn-success">Ajouter</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<!-- Modal modification d'une tâche-->
<div class="modal fade" id="modal_modification_tache">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header text-white" style="background-color: #007bff">
                <h5 class="modal-title">Modification des tâches du projet</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true" id="closeCross">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form>
                    <div class="form-group row">
                        <label for="nomTache" class="form-control-label col-md-3">Nom de la tâche</label>
                        <input type="text" class="form-control col-md-8" id="nomTache">
                    </div>
                    <div class="form-group row">
                        <label for="dateDebut" class="form-control-label col-md-3">Date de début de la tâche</label>
                        <input type="text" class="form-control col-md-8" id="dateDebut">
                    </div>
                    <div class="form-group row">
                        <label for="dateFin" class="form-control-label col-md-3">Date de fin de la tâche</label>
                        <input type="text" class="form-control col-md-8" id="dateFin">
                    </div>
                    <form method="post" action="traitement.php">
                        <p>
                            <label for="nom">Quels collaborateurs voulez-vous ajouter?</label><br />
                            <select name="collaborateurs" id="collaborateurs" multiple>
                                <option value="dupont">Dupont</option>
                                <option value="tessier">Tessier</option>
                                <option value="ferron">Ferron</option>
                                <option value="sabat">Sabat</option>
                            </select>
                        </p>
                    </form>
                    <form method="post" action="traitement.php">
                        <p>
                            <label for="nom">Quel est le niveau d'urgence de la tâche?</label><br />
                            <select name="urgence" id="urgence">
                                <option value="faible">Faible</option>
                                <option value="moyen">Moyen</option>
                                <option value="eleve">Elevé</option>
                            </select>
                        </p>
                    </form>
                    <div class="form-group row">
                        <label for="pourcentageAvancement" class="form-control-label col-md-3">Pourcentage d'avancement</label>
                        <input type="text" class="form-control col-md-8" id="pourcentageAvancement">
                    </div>
                    <div class="modal-footer col-md-12">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal" id="reset">Fermer</button>
                        <button type="reset" class="btn btn-danger">Reset</button>
                        <button type="button" class="btn btn-success">Modifier</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<!--Modale suppression de tâche-->
<div class="modal fade" id="modal_suppression_tache">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header text-white" style="background-color: #007bff">
                <h5 class="modal-title">Suppression de tâches du projet</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true" id="closeCross">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form>
                    <p>Etes vous sur de vouloir supprimer cette tâche?</p>
                    <div class="modal-footer col-md-12">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal" id="reset">Fermer sans supprimer</button>
                        <button type="button" class="btn btn-danger">Supprimer</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
    <script src="<c:url value="/resources/js/projetDetails.js"/>">

        <!-- FOOTER INCLUDE -->



    </script>
<%@include file="footer.jsp" %>
</body>
</html>