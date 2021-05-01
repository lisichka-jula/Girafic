<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--@elvariable id="Admin" type="by.girafic.core.userdata.view.AdminViewData"--%>
<%--@elvariable id="login" type="String"--%>
<%--@elvariable id="password" type="String"--%>
<%--@elvariable id="LinkMaker" type="by.girafic.controllers.request.RequestWrapper.LinkMaker"--%>
<%--@elvariable id="Users" type="by.girafic.core.userdata.UserLinkData[]"--%>
<html>
<head>
    <title>Домашняя страницы</title>
</head>
<body>
<jsp:include page="../base/admin.jsp"/>
<ul>
    <c:forEach var="Element" items="${Users}">
        <li>
            <a href="${LinkMaker.user(Element.id)}">${Element.name}</a>
            <a href="${LinkMaker.userMod(Element.id)}">Редактировать</a>
        </li>
    </c:forEach>
</ul>
<a href="${LinkMaker.studentCreation()}">Зарегестрировать студента</a>
<a href="${LinkMaker.teacherCreation()}">Зарегестрировать преподавателя</a>
<a href="${LinkMaker.adminCreation()}">Зарегестрировать админа</a>
</body>
</html>
