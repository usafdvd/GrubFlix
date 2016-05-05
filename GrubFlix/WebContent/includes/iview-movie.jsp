<div class="movieContent">
<div class="row  text-center">


	<div class="col-xs-12 col-md-6">
		<img src="${dvd.posterURL}" class="movieImage" />
	</div>
	<div class="col-xs-12 col-md-6 movieInfo">
		<div class="row">
			<h2>${dvd.dvdTitle}</h2>
		</div>
		<div class="row">
			<h5>Category: ${dvd.genreName} </h5>
		</div>
		<div class="row">
			<h6>Rated: ${dvd.rating}</h6>
		</div>
		<div class="row">
			<form action="addMovieToCart.do" method="POST">
				<button type="submit" name="dvdid" value="${dvd.id}" class=" btn btn-default">
					Add to Cart
				</button>
			</form>

		</div>
	</div>
</div>
</div>


<%-- 
<div class="movieRow row">
	<c:forEach var="genre" items="${genreGroups}">

		<form action="listAllOfGenre.do">
			<button type="submit" name="genre" value="${genre.key}" class=" btn btn-nav moreMovies">
				<h3>
					${genre.key}<span class="seeMore"> See More</span>
				</h3>
			</button>
		</form>
		<div class="row">
			<c:forEach var="dvd" items="${genre.value}">


				<div class="col-xs-4 col-md-2 col-lg-2 movieImageThumbNailContainer">
					<form action="viewMovie.do">
						<button type="submit" name="id" value="${dvd.id}"
							class=" btn btn-nav moreMovies">
							<img src="${dvd.posterURL}" class="movieImageThumbNail"/>
						</button>
						<div class="dvdTitle">
							${dvd.dvdTitle}
						</div>

					</form>

				</div>


			</c:forEach>
		</div>
			<br><br><br>
	</c:forEach>
 --%>
</div>
