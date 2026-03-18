<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="paw" tagdir="/WEB-INF/tags" %>



<html>
<head>
    <link rel="stylesheet" href="<c:url value="/css/button.css"/>">
    <link rel="stylesheet" href="<c:url value="/css/card.css"/>">
    <link rel="stylesheet" href="<c:url value="/css/date.css"/>">
    <link rel="stylesheet" href="<c:url value="/css/price.css"/>">
</head>

<body>
<h2>
    <c:out value="${message}" />
</h2>
<div style="display: flex; flex-direction: row; align-items: center; gap: 20px; padding: 20px;">
    <paw:button text="Primary" cssClass="btn-color1"/>
    <paw:button text="Hola" cssClass="btn-color2"/>
    <paw:card title="Obra de arte Renacimiento" footer="Puede encontrar obras de arte del periodo barroco" text="$5000"/>
    <paw:card title="Obra de arte Barroco" text="$40000" footer="Puede encontrar obras de arte del periodo barroco" />
    <h1><paw:date day="27" month="12" year="2004"/>
        <paw:price value="5000" currency="USD"/>
    </h1>

</div>
</body>
</html>
