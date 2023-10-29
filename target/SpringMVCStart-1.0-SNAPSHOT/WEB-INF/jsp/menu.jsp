<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Menu</title>
        <link href="<c:url value="/resources/css/main.css"/>" type="text/css" 
              rel="stylesheet" />
        <link href="<c:url value="/resources/css/header.css"/>" type="text/css" 
              rel="stylesheet" />
        <script
            src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"
        type="text/javascript"></script>
        <script
        src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
        <script src="<c:url value="/resources/js/global.js"/>"></script>
        <script type="text/javascript" >
            $(document).ready(
                    function() {
                        $.getJSON('<spring:url value="/itemtypes"/>', {
                            ajax: 'true'},
                        function(data) {
                            var len = data.length;
                            var sel = $("#type");
                            for (var i = 0; i < len; i++) {
                                var opt = $('<option>', {value: data[i], text: data[i]});
                                opt.appendTo(sel);
                            }
                        });
                    });

        </script>
    </head>
    <body>
        <jsp:include page="header.jsp"/>
        <h1>Menu</h1>


        <div id="sort" class="up">
            Sort to: 
            <a class="sort" href="<spring:url value="/menu?page=0&sort=name"/>"><img id="name1" src="<c:url value="/resources/image/name.png"/>"</a>
            <a class="sort" href="<spring:url value="/menu?page=0&sort=type"/>"><img id="type1" src="<c:url value="/resources/image/type.png"/>"</a>
            <a class="sort" href="<spring:url value="/menu?page=0&sort=cost,desc"/>"><img id="cost1" src="<c:url value="/resources/image/cost.png"/>"</a>  
        </div>
        <!--       <div id="filter" class="aaa">
                      <a class="sort" href="<springc:url value="/menu?page=0&filter=pizza"/>"> Pizza </a>
                     </div>-->

        <c:if test="${page.number<page.totalPages -1}">
            <div class="up">
                <a href="<spring:url value="/menu?page=${page.number+1}&sort=${sort}"/>"> 
                    <img id="next" src="<c:url value="/resources/image/next.png"/>" </a> </div>
            <br>
        </c:if>

        <c:if test="${!(page.number<page.totalPages -1)}">
            <div class="up">
                <a href="<spring:url value="/menu?page=${page.number-1}&sort=${sort}"/>"> 
                    <img id="next" src="<c:url value="/resources/image/back.png"/>" </a> </div>
            <br>
        </c:if>

        <c:forEach items="${page.content}" var="menuitem">

            <div id="tr1">
                <p id="td1"><a href="<spring:url value="/menu"/>/${menuitem.id}">
                        <img id="icons" src="<c:url value="/resources/image/${menuitem.id}.jpg"/>" 
                             alt="${menuitem.name}"></a></p>
                <p id="td2">
                    <a href="<spring:url value="/menu"/>/${menuitem.id}">${menuitem.name}</a>
                </p>
                <p id="td4">${menuitem.cost}</p>

            </div>

        </c:forEach>

            <c:if test="${(page.number>0)&&(page.number<page.totalPages-1)}">
            <a href="<spring:url value="/menu?page=${page.number-1}&sort=${sort}"/>">
                <img id="back" src="<c:url value="/resources/image/back.png"/>" </a>
            </c:if>
           
    </body>
</html>
