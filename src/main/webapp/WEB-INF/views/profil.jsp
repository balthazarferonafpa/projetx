<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<html>
<head>

    <title>Projet-X |Landing Page</title>
    <%@include file="includes.jsp" %>
</head>
<body>
<!-- Header -->
<%@include file="nav.jsp" %>
<!-- Container -->

<div class="card d-flex justify-content-start">
    <h4 class="card-header bg-primary text-white">Mon profil</h4>
    <div class="card-body" style="padding-top: 20px;">
        <div class="card-deck ">
        <div class="container col-lg-6">
            <div class="card" id="infoPerso">
                <div class="card-header  ">
                    <h5>Mes informations personelles</h5>
                </div>

                <div class="card-body">
                    <div class="container">
                        <form class="form-horizontal" role="form">
                            <div class="form-group">
                                <!--  -->
                                <div class="text-center" style="margin-bottom: 30px">
                                    <img src="http://via.placeholder.com/125" class="avatar rounded-circle" alt="avatar">
                                    <h6>Uploader une photo différente...</h6>
                                    <input type="file" class=".form-control-file" accept="image/*">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-md-3 control-label">Nom</label>
                                <div class="col-lg-8">
                                    <input class="form-control" type="text" value="Willis">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-lg-3 control-label">Prénom</label>
                                <div class="col-lg-8">
                                    <input class="form-control" type="text" value="Bruce">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-lg-3 control-label">Email:</label>
                                <div class="col-lg-8">
                                    <input class="form-control" type="text" value="bruce.w.584@gmail.com">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-md-3 control-label">Mot de passe:</label>
                                <div class="col-md-8">
                                    <input class="form-control" type="password" value="11111122333">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-md-3 control-label">Confirmer mot de passe:</label>
                                <div class="col-md-8">
                                    <input class="form-control" type="password" value="11111122333">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-md-3 control-label">Compétences</label>
                                <div class="col-md-8">
                                    <textarea class="form-control" rows="3">PHP, JS, Jquery, HTML, CSS</textarea>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-md-3 control-label"></label>
                                <div class="col-md-8">
                                    <input type="button" class="btn btn-success float-right" value="Sauvegarder">
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
            <%--<div class="card">--%>
                <%--<h5 class="card-header h-amis-coll">--%>
                    <%--Mes collaborateurs--%>
                    <%--<button type="button" class="btn btn-success btn-sm float-right">+</button></h5>--%>
                <%--<div class="">--%>
        <div class="container col-lg-6">
            <table class="table table-responsive table-striped" id="table-amis-coll">
                <thead>
                    <tr>
                        <th>Colaborateur</th>

                        <th>E-mail</th>
                    </tr>
                </thead>
            </table>
        </div>
                <%--</div>--%>
            <%--</div>--%>
        <%--</div>--%>
    </div>    <!-- Footer -->
    <%@include file="footer.jsp" %>
<script>
    $(document).ready(function() {

            //Permet de transformer le tableau de messagerie en datatable
            $('#table-amis-coll').DataTable({
                "dom": '<"#collabo.card " <"#headerTableau.card-header align-items-top"<<"#title2.float-left"><"float-right"f>>><"card-body" <"#tableCollabo.table" t>><" card-footerd-flex justify-content-end"<"p-2" l><"ml-auto p-2" p>>>',
                ajax: "<c:url value="/resources/json/users.json"/>",
                responsive: true,
                autoWidth: false,
                scrollCollapse: true,
                "bPaginate": false,
                columnDefs:[
                    {"targets": 0, "render": function (type, data, full) {
                        return '<div class="align-items-center"><img class="mr-auto" height="50px" width="50px" src="<c:url value="/resources/images/users/avatar1-2.png"/>"/><span class="ml-auto">'  +full[1] +' '+ full[2]+ '</span></div>';
                        }
                    },
                ],
                "columns": [
                    {"targets": 0},
                    {"targets": 1, data: 3}
                ]
            });

            $('#title2').append("<h5>Mes Collaborateurs</h5>")


    });

</script>
</body>

</html>


