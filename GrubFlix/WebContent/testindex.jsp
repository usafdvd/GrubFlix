<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Test Landing Page</title>
</head>
<body>

	<form action="searchByGenre.do" method="GET">
		<select name="genre">
			<option value="Action/Adventure">Action/Adventure</option>
			<option value="Action/Comedy">Action/Comedy</option>
			<option value="Comedy">Comedy</option>
			<option value="Drama">Drama</option>
			<option value="Horror">Horror</option>
			<option value="SciFi">SciFi</option>
			<option value="Suspense/Thriller">Suspense/Thriller</option>
			<option value="Thriller">Thriller</option>
			<option value="Western">Western</option>
			
		</select>
		<br>
		<p>Search limit:</p> 
		<select name="limit">
			<option value="5">5</option>
			<option value="10">10</option>
			<option value="15">15</option>
			<option value="20">20</option>
		</select>
		<button type = "submit">Submit</button>
	</form>
	
	
	<c:forEach var="dvds" items="${list}">
		<c:out value="${dvds.dvdTitle}"></c:out><br>
	</c:forEach>


</body>
</html>