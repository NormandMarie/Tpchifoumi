
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
</head>
<body>

<h1> résultat</h1>

<h1> Voici ton choix : </h1>
<h1> ${choix}</h1>
<h1> Voici le choix de l'ordi: </h1>
<h1>${choixOrdinateur}</h1>
<h1> ${gagnant} </h1>
<h1>nombre de partie gagner par toi:${partiesGagneesUtilisateur}</h1>
<h1>nombre de partie gagner l'ordi:${partiesGagneesOrdinateur}</h1>
<a href="play">rejouer</a>
</body>
</html>
