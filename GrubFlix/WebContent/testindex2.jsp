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
	<form action="updateCust.do">
		First Name: <input name="firstName"/>${profile.firstName}<br> 
		Last Name: <input name="lastName"/>${profile.lastName}<br> 
		<%-- <input type="text" value="hidden" name="accessLevel"/>${profile.accessLevel} --%>
		Gender: <select name="gender">
			<option value="M">Male</option>
			<option value="F">Female</option>
			</select><br>
			Email: <input name="email"/>${profile.email}<br> 
			PW: <input name="password"/>${profile.password}<br> 
		Birthday: <input name="birthDate"/>${profile.birthDate} <br>
		Phone: <input name="phone"/>${profile.phone}<br>
		<%-- Address Nickname: <form:input name="name"><br>
		Street: <form:input type="text" name="streetAddress"> <br>
		City: <input type="text" name="city"> <br>
		State: <input type="text" name="state"> <br>
		Zip: <input type="text" size="5" name="zip"><br> --%>
		<input type="submit"> 

	</form>
</body>
</html>