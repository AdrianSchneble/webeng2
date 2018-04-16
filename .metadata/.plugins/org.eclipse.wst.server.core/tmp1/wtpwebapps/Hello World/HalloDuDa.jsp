<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>



	<h1>
		${param["name"] }
	</h1>
	Wie ist dein Name?
	<input name="name">
	<!--<c:set var="x" value="${1000 }"></c:set>-->
	</input>
	<button type="submit">Klick</button>


	<c:set var="salary" value="${2000*2}" />
	<c:out value="${salary}" />

</body>
</html>