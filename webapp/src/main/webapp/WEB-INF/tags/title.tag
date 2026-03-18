<%@ tag language="java" pageEncoding="UTF-8" %>
<%@ attribute name="text" required="true" %>
<%@ attribute name="cssClass" required="false" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="titleCssClass" value="${not empty cssClass ? cssClass : ''}" />
<c:set var="classes" value="title ${titleCssClass}" />

<h1 class="${classes}">
    <c:out value="${text}" />
</h1>
