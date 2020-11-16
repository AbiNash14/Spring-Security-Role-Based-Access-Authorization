<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<body>
<a href="${pageContext.request.contextPath}/userPage">JD User</a> |
<a href="${pageContext.request.contextPath}/adminPage">JD Admin</a> | 
<a href="javascript:document.getElementById('logout').submit()">Logout</a>
<h3>Welcome to Centroxy</h3>
<ul>
	<li>Java</li>
	<li>Spring</li>
	<li>Jsp</li>
	<li>Servlet</li>
</ul>

<c:url value="/logout" var="logoutUrl" />
<form id="logout" action="${logoutUrl}" method="post" >
  <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
</form>
<%-- <c:if test="${pageContext.request.userPrincipal.name != null}">
	<a href="javascript:document.getElementById('logout').submit()">Logout</a>
</c:if> --%>
</body>
</html>