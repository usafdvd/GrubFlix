<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action="deleteDVD.do" method="POST">
Title: ${dvd.dvdTitle}

<input type="hidden" name="dvd" value="${dvd}"></input>
<button type="submit" name="delete" value="remove">Remove</button>

</form>
</body>
</html>