
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.example.tpchifoumi.play" %>

<%--
  Created by IntelliJ IDEA.
  User: warie
  Date: 12/04/2023
  Time: 16:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>résultat</title>
    <link rel="stylesheet" type="text/css" href="../../com.example.tpchifoumi.style.css">
</head>
<body style="background-color: rgb(51,51,51);">

<h1 style="text-align: center; margin: 10px"> résultat</h1>
<div style="display: flex; justify-content: space-between;">
    <div class="m-3">
        <h1> Voici ton choix : </h1>
        <h3> ${choix}</h3>
    </div>
    <div>
        <h1 class="lien"> ${gagnant} </h1>
       <h1><a style ="text-decoration: none; color: RGBA(148,108,212,0.28);"href="play">rejouer</a></h1>
    </div>
    <div class="m-3">
        <h1> Voici le choix de l'ordi: </h1>
        <h3>${choixOrdinateur}</h3>
    </div>

</div>
</body>
</html>
