<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<html>
<head>
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/landing.css"/> ">
        <%@include file="includes.jsp" %>
    <title>Projet-X |Landing Page</title>
</head>
<body>


    <div class="container text-center jumbotron" style="background: rgba(249,249,249, 0.5);" id="jumboD">
        <h1 class="jumbotron-heading">Projet-X</h1>
        <h3 class="jumbotron-heading">Un gestionnaire de projet adaptable a tout types de projet.</h3>
        <p class="lead text-muted"> Lorem ipsum dolor sit amet, consectetur adipisicing elit. A beatae cum deserunt ea eos et explicabo fuga id in ipsa iste, mollitia perferendis rerum saepe sed tenetur vel. Accusamus, quam.</p>
    </div>

    <div class="container text-center">
        <button type="button" class="btn btn-primary connexionB">Connexion</button>
        <button type="button" class="btn btn-primary inscriptionB">Inscription</button>
    </div>


<%--Login--%>
    <div class="container-fluid col-6 col-lg-6 cols-xs-6 col-sm-6 offset-3 inscription" id="connexionForm" style="display:none;">

        <div class="card ">
        <h3 class="card-header card-primary">Login :</h3>
            <c:url var="loginUrl" value="/login"/>
        <form:form method="POST" action="${loginUrl}"  modelAttribute="ul">
            <div class="card-block">

            <div class="form-group">
            <form:input path="email" class="form-control" placeholder="email" type="text"/>
            </div>
            <div class="form-group">
            <form:input path="password" class="form-control" placeholder="Mot de Passe" type="password"/>
            </div>
            <button class="btn btn-primary pull-left reset" type="button">Identifiants Oubliés</button>
            <button class="btn btn-primary pull-left inscriptionB" type="button">Inscription</button>
            <button class="btn btn-success  float-right connexionB" type="submit">Connexion</button>
            </div>
        </form:form>

        </div>

    </div>
    <%--Register--%>
    <div class="container-fluid col-6 col-lg-6 cols-xs-6 col-sm-6 offset-3 inscription" id="inscriptionForm" style="display:none;">

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
                    <form:input path="email" class="form-control " placeholder="Email" type="text" id="regPseudo" />
                    <form:errors path="email" cssClass="error" />
                </div>


                <div class="form-group">
                    <form:input path="password" class="form-control" placeholder="Mot de Passe" type="password"/>
                    <form:errors path="password" cssClass="error" />
                </div>
                <div class="form-group">
                    <form:input path="password" class="form-control" placeholder="Mot de Passe" type="password"/>
                    <form:errors path="password" cssClass="error" />
                </div>
                <button class="btn btn-primary pull-left reset" type="button">Identifiants Oubliés</button>
                <button class="btn btn-primary pull-left connexionB" type="button">Connexion</button>
                <button class="btn btn-success  float-right inscriptionB" type="submit">Inscription</button>
            </div>
        </form:form>


        </div>
    </div>


    <%--Rest Password --%>
    <div class="container-fluid col-6 col-lg-6 cols-xs-6 col-sm-6 offset-3 inscription" id="resetP" style="display:none;">
        <div class="card ">
            <h3 class="card-header card-primary">Identifiants Oubliés :</h3>
            <form:form method="POST" action="register">
            <fieldset class="card-block">
                <fieldset class="form-group">
                    <legend>Email ou pseudo</legend>
                    <div class="form-check">
                        <label class="form-check-label">
                            <input type="radio" class="form-check-input" name="optionsRadios" id="optionsRadios1" value="option1">
                            Pseudo
                        </label>
                    </div>
                    <div class="form-check">
                        <label class="form-check-label">
                            <input type="radio" class="form-check-input" name="optionsRadios" id="optionsRadios2" value="option2">
                            Mot de Passe
                        </label>
                    </div>
                </fieldset>
                <div class="form-group">
                    <input type="text" id="resetField" placeholder="E-mail" class="form-control">
                </div>
                <button class="btn btn-primary pull-left connexionB" type="button">Connexion</button>
                <button class="btn btn-primary pull-left inscriptionB" type="button">Inscription</button>
                <button class="btn btn-success  float-right" type="submit">Envoyer</button>

        </form:form>
        </div>
    </div>


    <div class="container-fluid col-6 col-lg-6 cols-xs-6 col-sm-6 offset-3 " id="successRegister" style="display:none;">
        <div class="card ">
            <h3 class="card-header card-primary">Inscription Réussie</h3>
            <div class="card-block align-items-center">
                <p>Félicitations, votre inscription à été validée.</p>
                <p>Pour valider vore inscription, merci de cliquer sur le lien dans le mail qui vient de vous etre envoyé.</p>
            </div>
        </div>
    </div>

    <div class="container col-10 col-lg-10 cols-xs-10 col-sm-10 offset-1 inscription" style="display:none;">

        <div class="card ">
            <h3 class="card-header card-primary">Contact :</h3>

            <%--<form:form method="POST" action="contact">--%>
            <%--<div class="card-block">--%>
                <%--<div class="form-group ">--%>
                    <%--<input type="text" placeholder="Nom" class="form-control">--%>
                <%--</div>--%>
                <%--<div class="form-group">--%>
                    <%--<input type="text" placeholder="Objet" class="form-control">--%>
                <%--</div>--%>
                <%--<div class="form-group">--%>
                    <%--<textarea name="message" class="form-control" placeholder="Message"></textarea>--%>
                <%--</div>--%>
                <%--<a href="/reset"><button class="btn btn-primary pull-left" type="button">Identifiants Oubliés</button></a>--%>
                <%--<a href="/login"><button class="btn btn-primary pull-left" type="button">Connexion</button></a>--%>
                <%--<button class="btn btn-success  float-right" type="submit">Inscription</button>--%>
            <%--</div>--%>
            <%--</form:form>--%>


        </div>
    </div>
    <%--Petit boolean cahcé pour rafficher directement formulaire d'inscription si erreur.--%>
    <p id="try" style="display:none;">${tryAgain}</p>


    <div>
        <c:out value="${context}"/>
    </div>
    <script>
        var checkPseudo = function (identifiant, champ) {
            var pseudo = $(identifiant).val();
            var url = '<c:url value="/check/" />';
            console.log(url+pseudo);
            if(pseudo.length >= 3) {
                $.ajax({
                    method: "GET",
                    url: url + pseudo,
                    success: function (data) {
                        console.log(data);

                        $('#taken').remove();
                        if (data != "true") {
                            $(identifiant).removeClass("form-control-danger form-control-success");
                            $(identifiant).addClass("form-control-danger");
                            $(identifiant).parent("div").addClass("has-danger").removeClass("has-success");
                            $(identifiant).after("<p id='taken'>'email deja pris</p>");
                        } else if(data == "true"){
                            $(identifiant).removeClass("form-control-danger form-control-success ");
                            $(identifiant).addClass("form-control-success");
                            $(identifiant).parent("div").addClass("has-success").removeClass("has-danger");
                            $(identifiant).after("<p id='taken'>'email disponible</p>");
                        }
                    }
                });
            }
        };

        $(document).ready(function(){

            /**
             * Variavble try set to 1 if register had errors, 2 if register : success and 3 if connexion errors.
             */
            if($("#try").html() == "1"){
                $('#jumboD').hide();
                $('#connexionForm').hide();
                $('#resetP').hide();
                $("#successRegister").hide();
                $('#inscriptionForm').show();
            }
            if($("#try").html() == "2"){
                $('#jumboD').hide();
                $('#connexionForm').hide();
                $('#resetP').hide();
                $('#inscriptionForm').hide();
                $("#successRegister").show();
            }

            if($("#login").html() == "3"){
                $('#jumboD').hide();
                $('#resetP').hide();
                $('#inscriptionForm').hide();
                $("#successRegister").hide();
                $('#connexionForm').show();
            }

            var compteur = true;
            var i = Math.floor((Math.random() * 3));
            val2= "<c:url value="/resources/images/landing/"/>";
            val2 += i+".jpg";
            $('html').css({"background": "url("+val2+")", "background-repeat": "no-repeat",
            "background-position": "center", "background-position": "fixed", "background-size": "cover",
            "-webkit-background-size": "cover"});

            $('.inscriptionB, .connexionB').on("click", function(){
               if(compteur){
                   $('#jumboD').slideUp("slow");
                   compteur = false;
               }
            });

            $('.inscriptionB').on('click', function(){

                if($("#inscriptionForm").css('display') == "block" && compteur == false && $("#connexionForm").css('display') == "none" ){
                    return;
                }
                $('#connexionForm').hide();
                $('#resetP').hide();
                $("#successRegister").hide();
                $('#inscriptionForm').slideToggle("slow");
            });

            $('.connexionB').on('click', function(){

                if($("#inscriptionForm").css('display') == "none" && compteur == false && $("#connexionForm").css('display') == "block" ){
                    return;
                }

                $('#inscriptionForm').hide();
                $("#successRegister").hide();
                $('#resetP').hide();
                $('#connexionForm').slideToggle("slow");
            });

            $(".reset").on("click", function(){
                $('#connexionForm').hide();
                $("#successRegister").hide();
                $('#inscriptionForm').hide();
                $('#resetP').slideToggle("slow");
            });
        });


        $('#regPseudo').on('keyup', function() {
            checkPseudo($(this), 0);
        });

        $('#regEmail').on('keyup', function() {
            checkPseudo($(this), 1);
        });

    </script>




</body>
</html>


