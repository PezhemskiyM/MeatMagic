<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Main</title>
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
        <style>
            body{

            }
            h1{}
        </style>
    </head>
    <body>
        <jsp:include page="header.jsp"/>

        <h1>Welcome, dear customer!</h1>
        <h1>You can go</h1>

        <div id="ser">

            <div id="main" class="zayavka">
                

                <form>

                    <input type="button" value="Menu" class="span3" onClick="window.location = '<spring:url value="/menu"/>'" />
                    <sec:authorize access="hasRole('ROLE_USER')">
                        <input type="button" value="Make order" class="span3" onClick="window.location = '<spring:url value="/makeorder"/>'" />
                    </sec:authorize>
                    <sec:authorize access="hasRole('ROLE_COCKER')">
                        <input type="button" value="Orders" class="span3" onClick="window.location = '<spring:url value="/seeorder"/>'" />
                    </sec:authorize>
                    <sec:authorize access="hasRole('ROLE_ADMIN')">
                        <input type="button" value="Add item" class="span3" onClick="window.location = '<spring:url value="/additem"/>'" />

                    </sec:authorize>
                </form>


            </div>
        </div>
        <br/>
    </body>
</html>
