
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>





<div class="movieRow row">
	
		<i>Logged in as:</i> <i>${cust.firstName}</i>

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

</div>
