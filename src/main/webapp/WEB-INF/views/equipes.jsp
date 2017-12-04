
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Equipes</title>
    <%@include file="includes.jsp" %>
</head>

<body>

<!-- NAVBAR INCLUDE -->
<%@include file="nav.jsp" %>
<!-- INTERFACE CONTAINER -->
<div class="container-fluid">
    <!-- #CODE HERE -->
    <!-- PANNEAU EQUIPES -->
    <div class="card cartehauteur col-8 col-lg-10 padding2">
        <div class="card-header card-inverse card-primary text-white">
            <h3 class="headerequipes">EQUIPES</h3>
            <button class="btn btn-success btn-xs float-right" data-toggle="modal" data-target="#modalProjet"><b>+</b></button>
        </div>
        <div class="row rowmargin2 cadre">
            <!-- Premiere equipe -->
            <div class="card-block col-lg-6">
                <div class="card cadreequipe rowmargin2">
                    <div class="card-header">
                        <h5 class="float-left width70">Construction petit immeuble (5 participants)</h5>
                        <button class="btn btn-success btn-xs float-right" data-toggle="modal" data-target="#modalProjet"><b>modifier</b></button>
                    </div>
                    <div class="row rowmargin cadre height1">
                        <div class="col-lg-6 col-xl-4 height2">
                            <img src="<c:url value="/resources/images/icons/avatar6.png"/>"/>
                            <span class="fontsize1 position">Fahd Jaouad</span>
                        </div>
                        <div class="col-lg-6 col-xl-4 height2">
                            <img src="<c:url value="/resources/images/icons/avatar2.png"/>"/>
                            <span class="fontsize1 position">Gerard Aguerre</span>
                        </div>
                        <div class="col-lg-6 col-xl-4 height2">
                            <img src="<c:url value="/resources/images/icons/avatar7.png"/>"/>
                            <span class="fontsize1 position">Dominique Mas</span>
                        </div>
                        <div class="col-lg-6 col-xl-4 height2">
                            <img src="<c:url value="/resources/images/icons/avatar7.png"/>"/>
                            <span class="fontsize1 position">Eric Castel</span>
                        </div>
                        <div class="col-lg-6 col-xl-4 height2">
                            <img src="<c:url value="/resources/images/icons/avatar3.png"/>"/>
                            <span class="fontsize1 position">Francis Tessier</span>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Deuxieme equipe -->
            <div class="card-block col-lg-6">
                <div class="card cadreequipe rowmargin2">
                    <div class="card-header">
                        <h5 class="float-left width70">Construction petit immeuble (10 participants)</h5>
                        <button class="btn btn-success btn-xs float-right" data-toggle="modal" data-target="#modalProjet"><b>modifier</b></button>
                    </div>

                    <div class="row rowmargin cadre height1">
                        <div class="col-lg-4 height2">
                            <img src="<c:url value="/resources/images/icons/avatar4.png"/>"/>
                            <span class="fontsize1 position">Fahd Jaouad</span>
                        </div>
                        <div class="col-lg-4 height2">
                            <img src="<c:url value="/resources/images/icons/avatar3.png"/>"/>
                            <span class="fontsize1 position">Pierre Sabat</span>
                        </div>
                        <div class="col-lg-4 height2">
                            <img src="<c:url value="/resources/images/icons/avatar7.png"/>"/>
                            <span class="fontsize1 position">Gerard Aguerre</span>
                        </div>
                        <div class="col-lg-4 height2">
                            <img src="<c:url value="/resources/images/icons/avatar2.png"/>"/>
                            <span class="fontsize1 position">Dominique Mas</span>
                        </div>
                        <div class="col-lg-4 height2">
                            <img src="<c:url value="/resources/images/icons/avatar3.png"/>"/>
                            <span class="fontsize1 position">Eric Castel</span>
                        </div>
                        <div class="col-lg-4 height2">
                            <img src="<c:url value="/resources/images/icons/avatar6.png"/>"/>
                            <span class="fontsize1 position">Francis Tessier</span>
                        </div>
                        <div class="col-lg-4 height2">
                            <img src="<c:url value="/resources/images/icons/avatar5.png"/>"/>
                            <span class="fontsize1 position">Baltazard Feron</span>
                        </div>
                        <div class="col-lg-4 height2">
                            <img src="<c:url value="/resources/images/icons/avatar1-2.png"/>"/>
                            <span class="fontsize1 position">Franck Descombes</span>
                        </div>
                        <div class="col-lg-4 height2">
                            <img src="<c:url value="/resources/images/icons/avatar2.png"/>"/>
                            <span class="fontsize1 position">Lebihan Yannick</span>
                        </div>
                        <div class="col-lg-4 height2">
                            <img src="<c:url value="/resources/images/icons/avatar5.png"/>"/>
                            <span class="fontsize1 position">Castagnedoli Ludovic</span>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Troisieme equipe -->
            <div class="card-block col-lg-6">
                <div class="card cadreequipe rowmargin2">
                    <div class="card-header">
                        <h5 class="float-left width70">Demenagement (3 participants)</h5>
                        <button class="btn btn-success btn-xs float-right" data-toggle="modal" data-target="#modalProjet"><b>modifier</b></button>
                    </div>
                    <div class="row rowmargin cadre height1">
                        <div class="col-lg-4 height2">
                            <img src="<c:url value="/resources/images/icons/avatar7.png"/>"/>
                            <span class="fontsize1 position">Eric Castel</span>
                        </div>
                        <div class="col-lg-4 height2">
                            <img src="<c:url value="/resources/images/icons/avatar5.png"/>"/>
                            <span class="fontsize1 position">Francis Tessier</span>
                        </div>
                        <div class="col-lg-4 height2">
                            <img src="<c:url value="/resources/images/icons/avatar3.png"/>"/>
                            <span class="fontsize1 position">Baltazard Feron</span>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Quatrieme equipe -->
            <div class="card-block col-lg-6">
                <div class="card cadreequipe rowmargin2">
                    <div class="card-header">
                        <h5 class="float-left width70">Construction petit immeuble (12 participants)</h5>
                        <button class="btn btn-success btn-xs float-right" data-toggle="modal" data-target="#modalProjet"><b>modifier</b></button>
                    </div>
                    <div class="row rowmargin cadre height1">
                        <div class="col-lg-4 height2">
                            <img src="<c:url value="/resources/images/icons/avatar1-2.png"/>"/>
                            <span class="fontsize1 position">Gerard Aguerre</span>
                        </div>
                        <div class="col-lg-4 height2">
                            <img src="<c:url value="/resources/images/icons/avatar2.png"/>"/>
                            <span class="fontsize1 position">Dominique Mas</span>
                        </div>
                        <div class="col-lg-4 height2">
                            <img src="<c:url value="/resources/images/icons/avatar3.png"/>"/>
                            <span class="fontsize1 position">Eric Castel</span>
                        </div>
                        <div class="col-lg-4 height2">
                            <img src="<c:url value="/resources/images/icons/avatar4.png"/>"/>
                            <span class="fontsize1 position">Francis Tessier</span>
                        </div>
                        <div class="col-lg-4 height2">
                            <img src="<c:url value="/resources/images/icons/avatar5.png"/>"/>
                            <span class="fontsize1 position">Baltazard Feron</span>
                        </div>
                        <div class="col-lg-4 height2">
                            <img src="<c:url value="/resources/images/icons/avatar6.png"/>"/>
                            <span class="fontsize1 position">Franck Descombes</span>
                        </div>
                        <div class="col-lg-4 height2">
                            <img src="<c:url value="/resources/images/icons/avatar7.png"/>"/>
                            <span class="fontsize1 position">Lebihan Yannick</span>
                        </div>
                        <div class="col-lg-4 height2">
                            <img src="<c:url value="/resources/images/icons/avatar3.png"/>"/>
                            <span class="fontsize1 position">Castagnedoli Ludovic</span>
                        </div>
                        <div class="col-lg-4 height2">
                            <img src="<c:url value="/resources/images/icons/avatar1.png"/>"/>
                            <span class="fontsize1 position">Fahd Jaouad</span>
                        </div>
                        <div class="col-lg-4 height2">
                            <img src="<c:url value="/resources/images/icons/avatar6.png"/>"/>
                            <span class="fontsize1 position">Pierre Sabat</span>
                        </div>
                        <div class="col-lg-4 height2">
                            <img src="<c:url value="/resources/images/icons/avatar5.png"/>"/>
                            <span class="fontsize1 position">Sebastien Jesaispas</span>
                        </div>
                        <div class="col-lg-4 height2">
                            <img src="<c:url value="/resources/images/icons/avatar1-2.png"/>"/>
                            <span class="fontsize1 position">Leonard Connaispas</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="card col-4 col-lg-2 liste">
        <div class="col-lg-4 height2">
            <img src="<c:url value="/resources/images/icons/avatar1.png"/>"/>
            <span class="fontsize1 position">Fahd Jaouad</span>
        </div>
        <div class="col-lg-4 height2">
            <img src="<c:url value="/resources/images/icons/avatar6.png"/>"/>
            <span class="fontsize1 position">Pierre Sabat</span>
        </div>
    </div>
</div>
<!-- FOOTER INCLUDE -->
<%@include file="footer.jsp" %>
<!-- ======================**JS**===================== -->
<!-- CURRENT INTERFACE JS -->
<script src="<c:url value="/resources/js/equipes.js"/>"/>
</body>
</html>