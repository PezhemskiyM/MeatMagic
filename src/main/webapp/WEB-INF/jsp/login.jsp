<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <link href="<c:url value="/resources/css/header.css"/>" type="text/css" 
              rel="stylesheet" />
       <link href="<c:url value="/resources/css/form.css"/>" type="text/css" 
              rel="stylesheet" />
        <script
            src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"
        type="text/javascript"></script>
        <script
        src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

    </head>
    <body>
        <jsp:include page="header.jsp" />
        <div class="container">
            <div class="row">
                <h1>Who is who?</h1>
            </div>
            <c:url value="/login" var="loginVar"/>
            <form id="register-form" action="${loginVar}" method="POST">
                <div class="form-group">
                    <label for="username">Username</label>
                    <input name="custom_username" class="textbox"/>
                </div>
                <div class="form-group">
                    <label for="password">Password</label>
                    <input type="password" name="custom_password" class="textbox" />
                </div>
                <sec:csrfInput/>

                <c:if test="${param.logout != null }">
                    <p>You have been logged out.</p>
                </c:if>

                <c:if test="${param.error != null }">
                    <p>Invalid Username or Password.</p>
                </c:if>

                <button type="submit" id="btn-save" class="button">Login</button>
            </form>
        </div>
    </body>
</html>