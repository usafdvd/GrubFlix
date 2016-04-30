<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
	<!-- Brand and toggle get grouped for better mobile display -->
	<div class="navbar-header ">
		<button type="button" class="navbar-toggle" data-toggle="collapse"
		data-target=".navbar-ex1-collapse">
		<span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span>
		<span class="icon-bar"></span> <span class="icon-bar"></span>
	</button>

	<div id="searchBarGroup">

		<form>


			<input type="text" placeholder="" id="searchBar" class="form-control "/>

			



			<button id="goBtn" class="btn"><i class="fa fa-search" id="searchIcon" aria-hidden="true"></i>
			</button>

		</form> 





	</div>


</div>

<a id="brand" class="" href="index.jsp">
	3mpl<span>o</span>y
</a>


<div class="collapse navbar-collapse navbar-ex1-collapse">
	<ul class="nav navbar-nav side-nav">




		<li>
			<form action="listPage.do" method="POST">
				<a href="#">
					<button type="submit" class="navBtn"><span id="filter" class="glyphicon glyphicon-tasks navIcon" aria-hidden="true"></span></button></a>

				</form>
			</li>

			<li>
				<form action="newEmp.jsp">
				<a href="newEmp.jsp"><button type="" class="navBtn"><span id="addPerson" class="glyphicon glyphicon-user navIcon" aria-hidden="true"></span></button></a>
				</form>
			</li>



			<li>

				<form action="" method="POST">
					<a href="#"><button type="submit" class="navBtn"><span id="stats" class="glyphicon glyphicon-stats navIcon" aria-hidden="true"></span></button></a>

				</form>
			</li>





		</ul>


	</div>

</nav>


