<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="paw" tagdir="/WEB-INF/tags" %>



<html>
<head>
    <link rel="stylesheet" href="<c:url value="/css/button.css"/>">
    <link rel="stylesheet" href="<c:url value="/css/card.css"/>">
    <link rel="stylesheet" href="<c:url value="/css/date.css"/>">
    <link rel="stylesheet" href="<c:url value="/css/title.css"/>">
</head>

<body>
<paw:title text="Bienvenido a la Galeria de Arte" cssClass="title-primary"/>
<div style="display: flex; flex-direction: row; align-items: center; gap: 20px; padding: 20px;">
    <paw:button text="Boton 1" cssClass="btn-color1"/>
    <paw:button text="Boton 2" cssClass="btn-color2"/>
</div>
<div style="display: flex; flex-direction: row; align-items: center; gap: 20px; padding: 20px;">

    <paw:card title="Obra de arte Medieval"
              price="$5000"
              footer="Puede encontrar obras de arte del periodo barroco"
              day="15" month="5" year="1489"/>
    <paw:card title="Obra de arte Barroco"
              price="$40000"
              footer="Puede encontrar obras de arte del periodo barroco"
              day="20" month="10" year="1630"/>
    <paw:card title="Obra de Arte Moderno"
              price="$15000"
              footer="Puede encontrar obras de arte del periodo moderno"
              day="30" month="2" year="1900" />
</div>
<h2>
    <c:out value="${message}" />
</h2>
</body>
</html>
