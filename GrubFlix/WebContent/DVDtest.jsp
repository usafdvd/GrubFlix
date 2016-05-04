<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Testing insert dvd method</title>
</head>
<body>
DVD C.R.U.D. TESTING ONLY!!!!!!!!!!!!!!!!!!!!!!!<br><br>
<form action="createDVD.do">

 What da title iz:<input type="text" name="dvdTitle" value=""><br>
What da genre iz:<select name="genreName">
			<option value="Action/Adventure">Action/Adventure</option>
			<option value="Action/Comedy">Action/Comedy</option>
			<option value="Comedy">Comedy</option>
			<option value="Drama">Drama</option>
			<option value="Horror">Horror</option>
			<option value="SciFi">SciFi</option>
			<option value="Suspense/Thriller">Suspense/Thriller</option>
			<option value="Thriller">Thriller</option>
			<option value="Western">Western</option>
				</select><br>
What da rating iz:<select name="rating">

			<option value="PG">PG</option>
			<option value="PG-13">PG-13</option>
			<option value="R">R</option>
			<option value="UR">UR</option>
			<option value="MA15">MA15</option>
			
			</select><br>
			<button type="submit">Submit</button>




</form>

<form action="getDVD.do" method="GET">
	
	Enter DVD ID:<input type="text" name="id" value=""><br>
	
	<button type="submit" value="Get DVD">Get</button>
				
</form>




</body>
</html>