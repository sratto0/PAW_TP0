<%@ tag language="java" pageEncoding="UTF-8" %>
<%@ attribute name="value" required="true" type="java.lang.Number" %>
<%@ attribute name="currency" required="false" %>
<%@ attribute name="size" required="false" %>
<%@ attribute name="cssClass" required="false" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%-- Validate that the value is not negative --%>
<c:if test="${value.doubleValue() < 0}">
    <c:set var="errorMsg" value="Price value cannot be negative."/>
    <jsp:scriptlet>
        throw new IllegalArgumentException((String)jspContext.getAttribute("errorMsg"));
    </jsp:scriptlet>
</c:if>

<%-- Set default values for optional attributes --%>
<c:set var="priceCurrency" value="${not empty currency ? currency : '$'}" />
<c:set var="priceSize" value="${not empty size ? size : 'md'}" />
<c:set var="priceCssClass" value="${not empty cssClass ? cssClass : ''}" />
<c:set var="classes" value="price price-${priceSize} ${priceCssClass}" />

<%-- Render the price component --%>
<div class="${classes}">
    <span class="currency"><c:out value="${priceCurrency}"/></span><span class="value"><c:out value="${value}"/></span>
</div>
