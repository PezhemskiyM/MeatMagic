<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<nav class="navbar"> 
    <div class="hcontainer">
        <ul class="nav navbar-nav">
            
            <li><a class="ah" href="<spring:url value="/menu"/>">Menu</a></li>

            <!--Anon,User-->
           <sec:authorize access="hasRole('ROLE_USER')">
                <li><a class="ah" href="<spring:url value="/makeorder"/>">make order</a></li>
            </sec:authorize>

            <!--Cock-->
              <sec:authorize access="hasRole('ROLE_COCKER')">
                 <li><a class="ah" href="<spring:url value="/seeorder"/>">Orders</a></li>-->
            </sec:authorize>
<!--           

            <!--Admn-->
              <sec:authorize access="hasRole('ROLE_ADMIN')">
                  <li><a class="ah" href="<spring:url value="/additem"/>">Add item</a></li>
            </sec:authorize>
           

            <sec:authorize access="authenticated" var="authenticated"/>
            <c:choose>
                <c:when test="${authenticated}">
                    <li>
                            <a class="ah" id="logout" href="#"> <sec:authentication property="name"/> Logout</a>
                        <form id="logout-form" action="<c:url value="/logout"/>" method="post">
                            <sec:csrfInput/>
                        </form>
                    </li>	
                </c:when>
                <c:otherwise>
                    <li><a class="ah" href="<spring:url value="/login/"/>">Sign In</a></li>
                    <li><a class="ah" href="<spring:url value="/register/"/>">Register</a></li>
                    </c:otherwise>
                </c:choose>
        </ul>
    </div>
    <div> 
        <a class="ah" href="<spring:url value="/"/>"><img id="imghead" src="<c:url value="/resources/image/logo.png"/>" alt="logo"></a>
    </div> 
</nav>
    
            
          