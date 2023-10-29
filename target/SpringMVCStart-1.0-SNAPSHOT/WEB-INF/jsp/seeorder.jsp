
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%--<%@page contentType="text/html" pageEncoding="UTF-8"%>--%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Orders</title>
        <link href="<c:url value="/resources/css/header.css"/>" type="text/css" 
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
        <h1>Orders</h1>

        <table>
            <tr>
                <th>
                    № MI
                </th>
                <th>
                    Count
                </th>
                <th>
                    № Order
                </th>
            </tr>
            <c:forEach items="${page.content}" var="all">

                <tr>
                   
                    <td>
                        ${all.miId}
                    </td>
                    <td>
                        ${all.count}
                    </td>
                    <td>
                        ${all.orderId}
                    </td>
                </tr>

            </c:forEach>

        </table>
    </body>
</html>
