<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ tag pageEncoding="UTF-8" %>
<%@ attribute name="id" required="true" rtexprvalue="false" type="java.lang.String" %>
<%@ attribute name="name" required="true" rtexprvalue="false" type="java.lang.String"%>
<%@ attribute name="title" required="true" rtexprvalue="false" type="java.lang.String" %>
<%@ attribute name="modc" required="true" rtexprvalue="true" type="by.girafic.core.commonds.ModifyConfirmation" %>
<%@ attribute name="modification" required="true" rtexprvalue="true" type="java.lang.Boolean" %>
<%--@elvariable id="id" type="java.lang.String"--%>
<%--@elvariable id="name" type="java.lang.String"--%>
<%--@elvariable id="title" type="java.lang.String"--%>
<%--@elvariable id="Modification" type="bolean"--%>
<%--@elvariable id="style" type="java.lang.String"--%>
<%--@elvariable id="modc" type="by.girafic.core.commonds.ModifyConfirmation"--%>

    <c:choose>
        <c:when test="${modification && modc.success}">
            <c:set var="style" scope="page" value="color:green"/>
        </c:when>
        <c:when test="${modification && !modc.success}">
            <c:set var="style" scope="page" value="color:red"/>
        </c:when>
        <c:otherwise>
            <c:set var="style" scope="page" value="color:black"/>
        </c:otherwise>
    </c:choose>

<div class="info">
    <label for="${id}">${title}</label>
    <input id="${id}" class="red" name="${name}" style="${style}" value="${modc.value}">
</div>

    <c:if test="${modification && !modc.success}">
        <p>${modc.message}</p>
    </c:if>
