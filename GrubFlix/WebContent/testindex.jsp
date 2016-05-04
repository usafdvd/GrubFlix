<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Test Landing Page</title>
</head>
<body>
	TEST CUSTOMER UPDATES HERE:
	<br>
	<%-- <form action="viewCust.do" method="GET">
		First Name: <input type="text" name="firstName"><br> 
		Last Name: <input type="text" name="lastName"><br> 
		Gender: <select name="gender">
			<option value="M">Male</option>
			<option value="F">Female</option>
			</select><br>
			Email: <input type="text" name="email"><br> 
			PW: <input type="password" name="password">
		<input type="hidden" name="accessLevel" value="1"><br> 
		Birthday: <input type="text" name="birthDate" placeholder="MM/DD/YYYY"> <br>
		Phone: <input type="text" name="phone"> <br>
		Address Nickname: <input type="text" name="name"><br>
		Street: <input type="text" name="streetAddress"> <br>
		City: <input type="text" name="city"> <br>
		State: <input type="text" name="state"> <br>
		Zip: <input type="text" size="5" name="zip"><br> 
		<input type="submit">

	</form>
 --%>
	<br>
	<br>
	<br>
	<form action="viewCust.do" method="GET">
	<input type="text" name="email">
	<input type="submit">
	</form>
	
	<br>
	
	
	
	
	
	
	
	
	
<%-- 	<form action="searchByGenre.do" method="GET">
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

		</select> <br>
		<p>Search limit:</p>
		<select name="limit">
			<option value="5">5</option>
			<option value="10">10</option>
			<option value="15">15</option>
			<option value="20">20</option>
		</select>
		<button type="submit">Submit</button>
	</form>
 --%>

	<c:forEach var="dvds" items="${list}">
		<c:out value="${dvds.dvdTitle}"></c:out>
		<br>
	</c:forEach>


</body>
</html>