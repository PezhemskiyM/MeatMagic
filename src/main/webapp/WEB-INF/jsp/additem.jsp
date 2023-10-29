<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add</title>
        <link href="<c:url value="/resources/css/header.css"/>" type="text/css" 
              rel="stylesheet" />
        <link href="<c:url value="/resources/css/form.css"/>" type="text/css" 
              rel="stylesheet" />
        <link href="<c:url value="/resources/css/main.css"/>" type="text/css" 
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
        <h1>New Item</h1>
        <div class="container">
        <spring:url value="/additem" var = "addPath"/>
        <form:form action="${addPath}" method="post" modelAttribute="item">

            <label for ="name">Name:</label>
            <form:input id="name" path="name" class="textbox"/>
            <form:errors path="name"/>

            <label for ="cost">Cost:</label>
            <form:input id="cost" path="cost" class="textbox"/>
            <form:errors path="cost"/>

            <label for ="type">Type:</label>
            <form:select path="type" id="type" class="textbox"/>

            <br>
            <label for ="weight">Weight:</label>
            <form:input id="weight" path="weight" class="textbox"/>
            <form:errors path="weight"/>
            

            <label for ="description">Description:</label>
            <form:input id="description" path="description" class="textbox"/>
            <form:errors path="description"/>

            <label for ="calories">Calories:</label>
            <form:input id="calories" path="calories" class="textbox"/>
            <form:errors path="calories"/>


            <label for="sub"/>
            <input id="sub" type="submit" class="button"/>
        </form:form>
        </div>
    </body>
</html>
