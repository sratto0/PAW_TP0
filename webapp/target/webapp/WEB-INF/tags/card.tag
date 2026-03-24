<%@ tag language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="paw" tagdir="/WEB-INF/tags" %>
<%@ attribute name="title" required="true" %>
<%@ attribute name="text" required="false" %>
<%@ attribute name="price" required="true" %>
<%@ attribute name="footer" required="true" %>
<%@ attribute name="day" required="true" %>
<%@attribute name="month" required="true" %>
<%@attribute name="year" required="true" %>
<%@ attribute name="size" required="false" %>
<%@ attribute name="cssClass" required="false" %>
<%@ attribute name="disabled" required="false" type="java.lang.Boolean" %>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="cardSize" value="${not empty size ? size : 'md'}" />
<c:set var="cardCssClass" value="${not empty cssClass ? cssClass : ''}" />
<c:set var="cardDisabled" value="${disabled ne null ? disabled : false}" />
<c:set var="classes" value="card card-${cardSize} ${cardCssClass}" />

<div class="${classes}">

    <div class="card-body">
        <h2 class="card-title">
            <c:out value="${title}" />
        </h2>
        <div class="card-text">
            <c:out value="${price}" />
            <paw:date day="${day}" month="${month}" year="${year}" />
        </div>
    </div>
    <div class="card-footer">
        <c:out value="${footer}" />
    </div>

</div>