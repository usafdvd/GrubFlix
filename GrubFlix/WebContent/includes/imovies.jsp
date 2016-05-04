



<div class="movieRow row">
	<div class="row">




		<form action="see-all.jsp">
			<button type="submit" value="" class=" btn btn-nav moreMovies">
				<h3>
					Comedy<span class="seeMore"> See More</span>
				</h3>
			</button>
		</form>


	</div>



	<div class="row">
		<div class="col-xs-4 col-md-2 col-lg-2 movieImageThumbNailContainer">
			<form action="view-movie.jsp">
				<button type="submit" value="" class=" btn btn-nav moreMovies">
					<img src="img/borat.jpg" class="movieImageThumbNail" />
				</button>
					<input type="hidden" name="dvdtitle" value="dvdtitle"></input>
			</form>

		</div>
	</div>




</div>



		<div class="col-xs-4 col-md-2 col-lg-2 movieImageThumbNailContainer">
				<form action="showDVDs.do" method="POST">			
			<ul>
				<!-- <ul> -->
					<c:forEach var="test" items="${dvdGenre}">
						<li>
							
									
										${test.dvdTitle}
										<!--  <input type="hidden" name="firstName" value="${test.firstName}"></input>-->
										<!--  <button type="submit" name="delete" value="remove">Delete</button>-->
								
							
						</
					</c:forEach>
			</ul>
				</form>
		
		</div>
	
	
	
	</div>




</div>

<c:forEach var="empRow" items="${listing}">


		<c:forEach var="employee" items="${empRow}">
		<div class=" col-xs-12 col-sm-4 col-md-3 empBoxContainer">
	<div class="empBox">

	<div class="btnRow row">
		<button type="submit" name="id" value="${employee.id}" class="editBtn text-center">
			<i class="fa fa-pencil-square-o editBtnIcon" aria-hidden="true"></i>
		</button>
	</div>


	<div class="nameRow row text-center">

		
		<b>${employee.firstname}</b> <b>${employee.lastname}</b>

	</div>
	</div>
	</div>
	</c:forEach>

</c:forEach>










