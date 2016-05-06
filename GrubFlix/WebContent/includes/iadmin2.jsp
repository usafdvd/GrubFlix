<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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


<c:forEach var="dvd" items="${dvds}">
	<c:choose>
	<c:when test="${dvds == null }">
	NOTHING TO DISPLAY
	</c:when>
	<c:otherwise>
		<form action="editDVD.do">
		<div class="row">
			<div class="panel panel-default ">
				<div class="panel-body">

					<div class="row">

						<div class="col-xs-12 col-sm-3 text-center">
							<h4 class="itemTitle">${dvd.dvdTitle}</h4>
							<input type="hidden" name="posterURL" value="${dvd.posterURL}">
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
		</c:otherwise>
		</c:choose>
	</c:forEach>


		







	</div>
</div>