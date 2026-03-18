<%@ tag language="java" pageEncoding="UTF-8" %>
<%@ attribute name="title" required="true" %>
<%@ attribute name="text" required="true" %>
<%@ attribute name="footer" required="true" %>
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
            <jsp: doBody />
            <c:out value="${text}" />
        </div>
    </div>
    <div class="card-footer">
        <c:out value="${footer}" />
    </div>

</div>