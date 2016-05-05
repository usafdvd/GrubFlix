<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">



<!-- <div class="movieContent">
	<div class="row  text-center">

		<div class="row text-center">
		
			<h1>Admin</h1>
			<form action="new-movie.jsp">
				<button type="submit" value="" class=" btn btn-default">
					New Movie</button>
			</form>
			<br>
		</div>

		<div class="row">
			<div class="panel panel-default">
				<div class="panel-body">

					<div class="row">

						<div class="col-xs-12 col-sm-4 text-center">
							<img src="img/borat.jpg" class="checkOutThumbNail" />
						</div>

						<div class="col-xs-12 col-sm-3 text-center checkOutInfo">
							<div class="col-xs-12 col-sm-12">
								<h4 class="checkOutItemTitle">Borat</h4>
								<p>more info more info</p>
							</div>
						</div>



						<div
							class="amountContainer col-xs-12 col-sm-3 itemButtonsContainer">
							<div class="itemButton"></div>
							Total Amount:
							<form action="">
								<select class="form-control">
								<option>1</option>
								<option>2</option>
								<option>3</option>
								<option>4</option>
								<option>5</option>
								<option>6</option>
								<option>7</option>
								<option>8</option>
								<option>9</option>
								<option>10</option>
							</select>
							</form>
							<br>
							In Stock:
							<form action="">
								<select class="form-control">
								<option>1</option>
								<option>2</option>
								<option>3</option>
								<option>4</option>
								<option>5</option>
								<option>6</option>
								<option>7</option>
								<option>8</option>
								<option>9</option>
								<option>10</option>
							</select>
							</form>
							
							


														<div id="spinner_02" class="spinner ridged" value="0"></div>  


						</div>
						<div class="amountContainer col-xs-12 col-sm-2 itemButtons">


							<form action="edit-movie.jsp">
								<button type="submit" value="" class=" btn btn-default adminEditBtn">
									Edit</button>
							</form>


						</div>


					</div>
				</div>
			</div>


		</div>


		







	</div>
</div>

 -->


<div class="movieContent text-center">
	<div class="row itemContainer">

		<div class="row text-center ">
		
			<h1>Admin</h1>
			<form action="new-movie.jsp">
				<button type="submit" value="" class=" btn btn-default">
					New Movie</button>
			</form>
			<br>
		</div>
		text here
<c:forEach var="dvd" items="${dvds}">
		<form action="editDVD.do">
		<div class="row">
			<div class="panel panel-default ">
				<div class="panel-body">

					<div class="row">

						<div class="col-xs-12 col-sm-3 text-center">
							<h4 class="itemTitle">${dvd.dvdTitle}</h4>
							<input type="hidden" name="id" value="${dvd.id}">
							${dvd.id}

						</div>

						<div class="col-xs-12 col-sm-3 text-center checkOutInfo">
							<div class="col-xs-12 col-sm-12">
								
								<p>Rated: ${dvd.rating}</p>
								<p>Genre: ${dvd.genreName}</p>
							</div>
						</div>



						<div
							class="amountContainer col-xs-12 col-sm-3 itemButtonsContainer">
							<div class="itemButton"></div>



						</div>
					 <div class="amountContainer col-xs-12 col-sm-3 itemButtons">


							
								<button type="submit" class=" btn btn-default adminEditBtn">
									Edit</button>
							


						</div>


					</div>
				</div>
			</div>


		</div>
		
	</form>
	</c:forEach>


		







	</div>
</div>