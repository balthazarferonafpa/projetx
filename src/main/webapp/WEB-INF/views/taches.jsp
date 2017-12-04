<%--
  Created by IntelliJ IDEA.
  User: 34011-79-19
  Date: 31/08/2017
  Time: 13:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Taches</title>
    <%@include file="includes.jsp" %>
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/taches.css"/>">
</head>
<body>
<%@include file="nav.jsp" %>

<div class="container-fluid">
    <div class="card">
        <h4 class="card-header bg-primary text-white">Mes taches
            <button type="button" class="btn btn-success btn-sm float-right" data-toggle="modal" data-target="#modalNewTache">
                <i class="fa fa-plus" aria-hidden="true"></i>
                <b> Ajouter une tache</b>
            </button>
        </h4>
        <div class="card-block">
            <table class="table table-hover" id="tableTaches">
                <thead>
                <tr>
                    <th>Nom</th>
                    <th>Projet lié</th>
                    <th>Date début</th>
                    <th>Date fin</th>
                    <th>Niveau de priorité</th>
                    <th>Avancement</th>
                    <th>Collaborateur(s)</th>
                    <th>Interaction</th>
                </tr>
                </thead>
                <tbody>

                </tbody>
            </table>
        </div>
    </div>
</div>
<!-- Modal ajouter tache -->
<div class="modal fade" id="modalNewTache">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header text-white" style="background-color: #007bff">
                <h5 class="modal-title">Ajouter une tache</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true" id="closeCross">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form>
                    <div class="form-group row">
                        <label for="nomTache" class="form-control-label sr-only">Nom de la tache</label>
                        <input type="text" placeholder="Nom de la tache" class="form-control col-md-11" id="nomTache">
                    </div>
                    <div class="form-group row">
                        <label for="descTache" class="form-control-label sr-only">Description de la tache</label>
                        <textarea class="form-control col-md-11" placeholder="Description de la tache" id="descTache" rows="4" ></textarea>
                    </div>
                    <div class="form-group row">
                        <label for="lierProjet" class="form-control-label sr-only"></label>
                        <select class="form-control col-md-11" id="lierProjet">
                            <option value="" selected disabled>Choisir un projet à lier</option>
                            <option>Anniversaire ABC</option>
                            <option>Application web	</option>
                            <option>Construction</option>
                        </select>
                    </div>
                    <div class="form-group row">
                        <label for="niveauUrgence" class="form-control-label sr-only"></label>
                        <select class="form-control col-md-11" id="niveauUrgence">
                            <option value="" selected disabled>Choisir un niveau de priorité</option>
                            <option>Elevé</option>
                            <option>Moyen</option>
                            <option>Bas</option>
                        </select>
                    </div>
                    <div class="form-group row">
                        <label for="dateD" class="form-control-label"></label>
                        <div class="date">
                            <div class="input-group input-append date datePicker">
                                <input type="text" placeholder="Date de début" class="form-control col-md-11" name="date" id="dateD"/>
                                <span class="input-group-addon add-on"><i class="fa fa-calendar" aria-hidden="true"></i></span>
                            </div>
                        </div>
                    </div>

                    <div class="form-group row">
                        <label for="dateF" class="form-control-label"></label>
                        <div class="date">
                            <div class="input-group input-append date datePicker">
                                <input type="text" placeholder="Date de fin" class="form-control col-md-11" name="date" id="dateF"/>
                                <span class="input-group-addon add-on"><i class="fa fa-calendar" aria-hidden="true"></i></span>
                            </div>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="collaborateurs" class="form-control-label sr-only">Collaborateurs</label>
                        <input type="text" placeholder="Collaborateurs" class="form-control col-md-11" id="collaborateurs">
                    </div>
                    <div class="form-group row" id="listCol"></div>

                    <div class="modal-footer col-md-12">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal" id="reset">Fermer</button>
                        <button type="reset" class="btn btn-danger">Reset</button>
                        <button type="button" class="btn btn-success">Ajouter</button>
                    </div>

                </form>
            </div>
        </div>
    </div>
</div>
<!-- Modal afficher tache-->
<div class="modal fade" id="modalDisplayTache">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header text-white" style="background-color: #007bff">
                <h5 class="modal-title" id="infoTache"></h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form>
                    <div class="form-group row">
                        <label for="afficheNomTache" class="form-control-label col-md-3"><b>Nom de la tache</b></label>
                        <span class="col-md-9" id="afficheNomTache"></span>
                    </div>
                    <div class="form-group row">
                        <label for="projetLie" class="form-control-label col-md-3"><b>Projet lié</b></label>
                        <span class="col-md-9" id="projetLie"></span>
                    </div>
                    <div class="form-group row">
                        <label for="dateDtache" class="form-control-label col-md-3" ><b>Date de début</b></label>
                        <span class="col-md-9" id="dateDtache"></span>
                    </div>
                    <div class="form-group row">
                        <label for="dateFtache" class="form-control-label col-md-3" ><b>Date de fin</b> <i class="fa fa-paperclip" aria-hidden="true"></i> </label>
                        <span class="col-md-9" id="dateFtache"></span>
                    </div>
                    <div class="modal-footer col-md-12">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Fermer</button>
                        <button type="button" class="btn btn-warning" id="editerTache">Editer</button>
                    </div>
                </form>
            </div>

        </div>
    </div>
</div>

<script>
    $(document).ready(function() {


        var url = 'http://www.json-generator.com/api/json/get/bVnLjPNVCG?indent=2';
        var table = $('#tableTaches').DataTable({
            responsive: true,
            ajax: url,
            columns: [
                { 'data': 'Nom'},
                { 'data': 'Projet'},
                { 'data': 'DateD'},
                { 'data': 'DateF'},
                {
                    'data': 'Niveau',
                    'width' : '139'
                },
                { 'data': ''},
                {
                    'data': 'Collaborateurs',
                    render: function ( data, type, full ) {
                        return $.map( data, function ( d, i ) {
                            var str = "<div class="+'detailsCol'+"><img src="+'http://placehold.it/50'+"><br>"+d.age+" ans<br><a href="+'#'+" >"+d.email+"</a></div>";
                            return '<a href="#" data-placement="top" data-trigger="hover" title="Infos" data-content="'+str+'">'+ d.name +'</a>';
                        } ).join( ' , ' );
                    }

                },
                { 'data': ''}
            ],

            columnDefs: [
                {
                    'targets': 5,
                    'width' : '200',
                    'render': function (){
                        var random = Math.floor(Math.random() * 101);
                        var statut = 'bg-success';
                        if(random >= 0 && random < 26) statut = 'bg-danger';
                        else if(random >=25 && random <61) statut = 'bg-warning';
                        else if(random == 100) statut = '';
                        return '<div class="progress"><div class="progress-bar progress-bar-striped progress-bar-animated '+statut+' role="progressbar" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100" style="width:'+random+'%">'+random+'%</div></div>';
                    }
                },
                {
                    'targets': 7,
                    'width' : '50',
                    'searchable':false,
                    'orderable':false,
                    'className': '',
                    'render': function (){
                        return 	'<div class="btn-group" role="group" aria-label="Basic example">'+
                            '<button type="button" class="btn btn-secondary btn-sm editT" data-placement="top" data-trigger="hover" data-content="Editer cette tache"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></button>'+
                            '<button type="button" class="btn btn-success btn-sm ajoutCol" data-placement="top" data-trigger="hover" data-content="Ajouter un collaborateur"><i class="fa fa-plus" aria-hidden="true"></i></button>'+
                            '<button type="button" class="btn btn-danger btn-sm suppT" data-placement="top" data-trigger="hover" data-content="Supprimer cette tache"><i class="fa fa-minus" aria-hidden="true"></i></button>'+

                            '</div>';
                    }
                }
            ],
            'order': [1, 'asc'],

            //Explication stackOverflow: You need to reinitialize the popovers each time the dataTable is redrawn.  $(".ajoutCol").popover({ trigger: "hover" }); will only initialize those popovers visible at the time the code is executed
            drawCallback: function() {
                $(".ajoutCol").popover({ trigger: "hover" });
                $(".editT").popover({ trigger: "hover" });
                $(".suppT").popover({ trigger: "hover" });
                $("a").popover({ trigger: "click", html: true });
            }

        });

        //ferme la popover en cliquant n'importe où sur la page
        $(document).on('click', function (e) {
            $('a').each(function () {

                if (!$(this).is(e.target) && $(this).has(e.target).length === 0 && $('.popover').has(e.target).length === 0) {
                    (($(this).popover('hide').data('bs.popover')||{}).inState||{}).click = false
                }
            });
        });

        //suppression tache avec alerte
        $(document).on("click", '.suppT' , function () {
            var dataLigne = table.row((this).closest('tr')).data();
            var alert = confirm("Etes vous sûr de vouloir supprimer la tache ("+dataLigne.Nom+") ?");
            (alert ? $(this).closest('tr').remove() : false);

        });

        //options champs date
        $('.datePicker').datepicker({
            autoclose: true,
            format: 'dd/mm/yyyy'
        })

        var liste = [
            "Mercado Lowe",
            "Michael Merritt",
            "Martina Patterson",
            "Gibbs Blackwell",
            "Amalia Vinson",
            "Garrett Horn",
            "Livingston Mayo",
            "Mccullough Robbins",
            "Sykes Winters",
            "Cecelia Roberts",
            "Traci Acosta",
            "Christian Montgomery",
            "Caitlin Sargent",
            "Johnson Rosario"
        ];

        $('#collaborateurs').autocomplete({
            source : liste,
            select: function(event, ui) {
                //$('#listCol').append('<span>'+value[0]+'</span>');
                console.log($('#collaborateurs').val());
            }
        });

        $('#collaborateurs').on('autocompleteselect', function (e, ui) {
            $('#listCol').css('display', 'block').show('slow');
            $('#listCol').append('<div class="spacingCol"><span class="col-md-10 float-left">'+ ui.item.value+'</span><button type="button" class="btn btn-danger btn-sm col-md-1 float-right delCol"><i class="fa fa-minus" aria-hidden="true"></i></button></br></div>');

            $("#listCol").on("click", "button.delCol", function(){
                $(this).hide('slow', function(){
                    $(this).closest('div').remove();
                    if($('#listCol').is(':empty'))
                        $('#listCol').css('display', 'none').hide('slow');
                });


                console.log($('#listCol').is(':empty'));
            });

            $(this).val("");
            return false;
        });

    });

</script>
<%@include file="footer.jsp" %>

