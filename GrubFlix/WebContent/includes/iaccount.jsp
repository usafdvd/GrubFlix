<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
		<div class="col-lg-8 col-lg-offset-2">
			<h2>Your stuff</h2>
		</div>
		<div class="col-xs-12 col-sm-8 col-sm-offset-2">
			<form:form action="updateCust.do" modelAttribute="profile" method="POST">
				<div class="row">
					<div class="col-xs-12">
						<div class="col-xs-12 col-md-6">
							<div class="input text-center ">
								<form:input path="firstName" class="form-control formNoBrdrSpacing"/>
							</div>
						</div>
						<div class="col-xs-12 col-md-6">
							<div class="input text-center ">
								<form:input path="lastName" class="form-control formNoBrdrSpacing"/>
							</div>
						</div>

						<div class="form col-xs-12 col-md-6">
							<form:select path="gender" class="form-control formNoBrdrSpacing"
								id="">
								<option value="M">Male</option>
								<option value="F">Female</option>
							</form:select>
						</div>

						<div class="col-xs-12 col-md-6">
							<div class="input text-center ">
								<form:input path="email" class="form-control formNoBrdrSpacing"/>
							</div>
						</div>

						<div class="col-xs-12 col-md-6">
							<div class="input text-center ">
								<form:input path="password" class="form-control formNoBrdrSpacing"/> 
								<form:input type="hidden" path="accessLevel" value="1"/>
							</div>
						</div>
						
						<div class="col-xs-12 col-md-6">
							<div class="input text-center ">
								<form:input path="birthDate" class="form-control formNoBrdrSpacing"/>
							</div>
						</div>

						<div class="col-xs-12 col-md-6">

							<div class="input text-center ">
								<form:input path="phone" class="form-control formNoBrdrSpacing"/>
							</div>
						</div>

						<%-- <div class="col-xs-12 col-md-6">
							<div class="input text-center ">
								<form:input path="name" class="form-control formNoBrdrSpacing"/>
							</div>
						</div>

						<div class="col-xs-12 col-md-6">
							<div class="input text-center ">
								<form:input path="streetAddress" class="form-control formNoBrdrSpacing"/>
							</div>
						</div>

						<div class="col-xs-12 col-md-6">
							<div class="input text-center ">
								<form:input path="city" class="form-control formNoBrdrSpacing"/>
							</div>
						</div>

						<div class="col-xs-12 col-md-6">
							<div class="input text-center ">
								<form:input path="state" class="form-control formNoBrdrSpacing"/>
							</div>
						</div>

						<div class="col-xs-12 col-md-6">
							<div class="input text-center ">
								<form:input path="zip" class="form-control formNoBrdrSpacing"/>
							</div>
						</div> --%>
					</div>
				</div>
				<div>
				
				</div>
				
				<div class="col-xs-12 text-center">
					<button type="submit" class=" btn btn-default floatR smargBottom">
						Save
					</button>
				</div>
					<br>
					<br>
					<br>
					<br>

					<div>
				
				</div>
			</form:form>
		</div>
		<div class="movieRow row">
	<div class="row text-center">




		<form action="previously-watched.jsp">
			<button type="submit" value="" class=" btn btn-nav moreMovies ">
				<h4>
					Previously Watched<span class="seeMore"> See More</span>
				</h4>
			</button>
		</form>





	</div>



	<div class="row">
		<div class="col-xs-4 col-md-2 col-lg-2 movieImageThumbNailContainer">
			<form action="view-movie.jsp">
				<button type="submit" value="" class=" btn btn-nav moreMovies">
					<img src="img/borat.jpg" class="movieImageThumbNail" />
				</button>
			</form>

		</div>
		<div class="col-xs-4 col-md-2 col-lg-2 movieImageThumbNailContainer">
			<form action="view-movie.jsp">
				<button type="submit" value="" class=" btn btn-nav moreMovies">
					<img src="img/borat.jpg" class="movieImageThumbNail" />
				</button>
			</form>

		</div>
		<div class="col-xs-4 col-md-2 col-lg-2 movieImageThumbNailContainer">
			<form action="view-movie.jsp">
				<button type="submit" value="" class=" btn btn-nav moreMovies">
					<img src="img/borat.jpg" class="movieImageThumbNail" />
				</button>
			</form>

		</div>
		<div class="col-xs-4 col-md-2 col-lg-2 movieImageThumbNailContainer">
			<form action="view-movie.jsp">
				<button type="submit" value="" class=" btn btn-nav moreMovies">
					<img src="img/borat.jpg" class="movieImageThumbNail" />
				</button>
			</form>

		</div>
		<div class="col-xs-4 col-md-2 col-lg-2 movieImageThumbNailContainer">
			<form action="view-movie.jsp">
				<button type="submit" value="" class=" btn btn-nav moreMovies">
					<img src="img/borat.jpg" class="movieImageThumbNail" />
				</button>
			</form>

		</div>
		<div class="col-xs-4 col-md-2 col-lg-2 movieImageThumbNailContainer">
			<form action="view-movie.jsp">
				<button type="submit" value="" class=" btn btn-nav moreMovies">
					<img src="img/borat.jpg" class="movieImageThumbNail" />
				</button>
			</form>

		</div>


	</div>




</div>
		
		
		
		
		
		
		
		
		
		