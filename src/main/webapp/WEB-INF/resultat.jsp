
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
<body>

<h1> résultat</h1>
<div style="display: flex; justify-content: space-around;">
    <div>
        <h1> Voici ton choix : </h1>
        <h3> ${choix}</h3>
    </div>
    <div>
        <h1 class="lien"> ${gagnant} </h1>
       <h1><a href="play">rejouer</a></h1>
    </div>
    <div>
        <h1> Voici le choix de l'ordi: </h1>
        <h3>${choixOrdinateur}</h3>
    </div>

</div>
</body>
</html>
