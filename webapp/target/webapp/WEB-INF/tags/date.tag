<%@ tag language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ attribute name="day" required="true" %>
<%@ attribute name="month" required="true" %>
<%@ attribute name="year" required="true" %>
<%@ attribute name="cssClass" required="false" %>

<c:set var="classes" value="date ${cssClass}" />

<c:choose>

    <c:when test="${day >= 1 && day <= 31 && month >= 1 && month <= 12 && year > 0 && !(month==2 && day > 29) }">
        <div class="<c:out value="${classes}" />">
            <c:if test="${day < 10}">0</c:if><c:out value="${day}" />/
            <c:if test="${month < 10}">0</c:if><c:out value="${month}" />/
            <c:out value="${year}" />
        </div>

    </c:when>

    <c:otherwise>
        <div class="<c:out value="${classes}" />">
            Fecha inválida
        </div>
    </c:otherwise>

</c:choose>