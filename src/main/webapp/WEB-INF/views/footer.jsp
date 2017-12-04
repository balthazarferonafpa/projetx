<%--
  Created by IntelliJ IDEA.
  User: 34011-79-19
  Date: 22/08/2017
  Time: 16:18
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/navigation.css"/> ">

<%--change to navbar-toggleable-xl to never disappear--%>
<nav class="navbar navbar-toggleable-sm navbar-light bg-faded fixed-bottom ">

    <div class="collapse navbar-collapse">
        <ul class="navbar-nav mx-auto">
            <li class="nav-item active">
                <a class="nav-link" href="/mentions">Mentions Legales</a>
            </li>
            <li class="nav-item active">
                <a class="nav-link" href="/contact">Nous Contacter</a>
            </li>
            <li class="nav-item active">
                <a class="nav-link" href="/">A propos</a>
            </li>
            <li class="nav-item active">
                <a class="nav-link" href="/sitemap">Sitemap</a>
            </li>
        </ul>
    </div>
</nav>