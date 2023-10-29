<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>${item.name}</title>
        <link href="<c:url value="/resources/css/header.css"/>" type="text/css" 
              rel="stylesheet" />
        <link href="<c:url value="/resources/css/item.css"/>" type="text/css" 
              rel="stylesheet" />
    </head>
    <body>
        <jsp:include page="header.jsp"/>

        <h1 id="name">${item.name}</h1>

        <p id="cost">${item.cost}₽</p>
        <p id="weight">${item.weight} Гр.</p>
        <p id="description">${item.description}</p>
        <p id="calories">${item.calories} Ккал.</p>
        <img id="image" src="<c:url value="/resources/image/${item.id}.jpg"/>" alt="IT's WOOOORK!">
        <p id="ps"><br>* Данные по пищевой и энергетической ценности блюд, представленные в таблице, основаны на данных лабораторных исследований, технико-технологических карт и данных по пищевой ценности, полученных от поставщиков. Различия в размерах порций, так же как региональные и сезонные различия могут влиять на пищевую ценность каждого продукта меню.<br>Рецептура блюд периодически может меняться. Информация предоставлена на основе текущего меню и может изменяться без предварительного уведомления.
            <br> <br>** В некоторых ресторанах Meat Magic продукты и цены могут отличаться</p>


    </body>
</html>
