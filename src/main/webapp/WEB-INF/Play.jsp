<%@ page import="com.example.tpchifoumi.play" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: warie
  Date: 12/04/2023
  Time: 16:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Chifoumi</title>
</head>
<body>

<div class="container " style="text-align: center">
    <h1>Chifoumi</h1>
    <h1>Choix:</h1>
    <form method="POST" action="${pageContext.request.contextPath}/play">

            <input class="m-3" type="submit" name="choix" value="chi"> <br>
            <input class="m-3" type="submit" name="choix" value="fou"> <br>
            <input class="m-3" type="submit" name="choix" value="mi"> <br>
    </form>
    </div>

</body>
</html>
