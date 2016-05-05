<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<div class="movieContent">
	<div class="row  text-center">

<form:form action="updateDVD.do" modelAttribute="dvd" method="POST">
		<div class="col-xs-12 col-md-6">
			<input type="image" src="${dvd.posterURL}"/>
			<%-- <img src="${dvd.posterURL}" class="movieImage" /> --%>
		</div>
		<div class="col-xs-12 col-md-6 movieInfo">
			<div class="row">



				<%-- <form:form action="updateDVD.do" modelAttribute="dvd" method="POST"> --%>
					<div class="row">
						<div class="col-xs-12">
							<div class="col-xs-12 col-md-6">
								<div class="input text-center ">
									<form:input path="dvdTitle" class="form-control formNoBrdrSpacing"/>
								</div>
							</div>
							<div class="col-xs-12 col-md-6">
								<div class="input text-center ">
									<form:input path="genreName" class="form-control formNoBrdrSpacing"/>
								</div>
							</div>

							<div class="form col-xs-12 col-md-6"></div>

							<div class="col-xs-12 col-md-6">
								<div class="input text-center ">
									<form:input path="rating" class="form-control formNoBrdrSpacing"/>
								</div>
							</div>
							<form:input type="hidden" path="id"/>
							<form:input type="hidden" path="posterURL"/>

						</div>
					</div>
					<div>

							<div class="col-xs-6">							
							</div>

							<div class=" col-xs-6">
							</div>

							<br>
					</div>

					<div class="col-xs-12 text-center">
						<button type="submit" class=" btn btn-default floatR smargBottom">
							Save</button>
					</div>
					<br> <br> <br> <br>

					<div></div>
			</div>



		</div>
				</form:form>


	</div>
</div>

