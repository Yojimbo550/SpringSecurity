<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>

<head>
    <title>luv2code Company Home Page</title>
</head>

<body>
<h2>luv2code Company Home Page</h2>
<hr>
<p>
    Welcome to the luv2code company home page!
</p>
<hr>
<p>
    User: <security:authentication property="principal.username" />
    <br><br>
    Role(s): <security:authentication property="principal.authorities" />
</p>
<security:authorize access="hasRole('MANAGER')">
<p>

    <a href="${pageContext.request.contextPath}/leaders">Leadership meeting</a>
    Only for managers
</p>
</security:authorize>
<security:authorize access="hasRole('ADMIN')">
<p>
    <a href="${pageContext.request.contextPath}/systems">IT meeting</a>
    Only for admins
</p>
</security:authorize>
<hr>




<form:form action="${pageContext.request.contextPath}/logout" method="POST">
    <input type="submit" value="logout">

</form:form>


</body>

</html>