<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<c:choose>
		<c:when test="${empty param.num}">
        Gib eine Zahl ein!
    </c:when>
		<c:otherwise>
			<c:set var="fibb" value="1" />
			<c:set var="fiba" value="1" />
			<c:forEach begin="1" end="${param.num }">
				<c:set var="fibb" value="${fiba}" />
				<c:set var="fiba" value="${fib}" />
				<c:set var="fib" value="${fibb + fiba}" />
				<c:out value="${fib}" />; 
				</c:forEach>
        Die <c:out value="${param.num}" />. Fiboonacci Zahl ist <c:out
				value="${fib}"></c:out>
		</c:otherwise>
	</c:choose>
	<form action='/HelloWorld/Fibonacci.jsp' method='post'>
		<input type='text' name='num'> <input type='submit'
			value='POST'>
	</form>
</body>
</html>