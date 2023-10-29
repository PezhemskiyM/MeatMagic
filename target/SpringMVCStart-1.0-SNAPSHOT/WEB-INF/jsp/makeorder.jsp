<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Make order</title>
        <link href="<c:url value="/resources/css/header.css"/>" type="text/css" 
              rel="stylesheet" />
        <link href="<c:url value="/resources/css/main.css"/>" type="text/css" 
              rel="stylesheet" />
        <script
            src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"
        type="text/javascript"></script>
        <script
        src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
        <script src="<c:url value="/resources/js/global.js"/>"></script>
    </head>
    <body>
        <jsp:include page="header.jsp"/>

       
<!--
            <label for ="name">Name:</label>
            <form0:input id="name" path="name"/>
            <form0:errors path="name"/>

            <label for ="type">Type:</label>
            <form0:select path="type" id="type"/>


            <label for="sub"/>
            <input id="sub" type="submit"/>-->
<img id="coming" width="100%" height="550px" src="<c:url value="/resources/image/comingSoon.png"/>"



    </body>
</html>
