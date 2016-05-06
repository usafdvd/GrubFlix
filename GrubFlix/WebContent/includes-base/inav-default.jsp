<!-- Navigation -->
<nav class="navbar navbar-custom navbar-fixed-top" role="navigation">
	<div class="container">
		<div class="navbar-header">
			<div class="logoContainer">
			
			<form action="index.jsp">
				<button type="submit" value="" class=" btn btn-nav home">
					
				<span id="logo" class="pull-left">
					<h3>G</h3>
				</span>
				<span class="pull-left logo2">
					<h3>R</h3>
				</span>
				<span class="pull-left logo2">
					<h3>U</h3>
				</span>
				<span class="pull-left logo2">
					<h3>B</h3>
				</span>
				<span class="pull-left logo2">
					<h3>F</h3>
				</span>
				<span class="pull-left logo2">
					<h3>L</h3>
				</span>
				<span class="pull-left ilogo2">
					<h3>I</h3>
				</span>
				<span class="pull-left logo2">
					<h3>X</h3>
				</span>
				</button>
			</form>
			
			</div>
			
			
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target=".navbar-main-collapse">
				<i class="fa fa-bars"></i>
			</button>
			
		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div id="menu">
		<div
			class="collapse navbar-collapse navbar-right navbar-main-collapse">
			<ul class="nav navbar-nav">
				





	<li>
	<div class="input-group text-center searchGroup">
		<div class="row">
			<form>


				<input type="search" class=" col-xs-10" id="searchBar"
					placeholder="Search Movie"> <span class="input-group-btn">
					<button type="submit"
						class=" btn-secondary btnSearch form-group btn col-xs-1">
						<i class="fa fa-search" id="searchIcon" aria-hidden="true"> </i>
					</button>
				</span>
			</form>


		</div>


	</div>
	</li>

			















				<li class="hidden"><a href="#page-top"></a></li>
				<li>
					<form action="listGenreGroups.do">
						<button type="submit" value="" class=" btn btn-nav ">Movies</button>
					</form>
				<li>
					<form action="grub.jsp">
						<button type="submit" value="" class=" btn btn-nav ">Grub</button>
					</form>
				</li>
				<li>
					<form action="checkout.jsp">
						<button type="submit" value="" class=" btn btn-nav ">Checkout <b class="itemCount">( ${size} )</b></button>
					</form>
				</li>
				<li>
					<div class="btn-group">
						<button type="button" class="btn btn-nav dropdown-toggle"
							data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
							More <span class="caret"></span>
						</button>
						<ul class="dropdown-menu">
							<li>
								<form action="tracking.jsp">
									<button type="submit" value="" class=" btn btn-nav ">Tracking</button>
								</form>

							</li>
							<li>
								<form action="editCust.do" method="POST">
									<button type="submit" name="email" value="${cust.email}" class=" btn btn-nav ">Account</button>
								</form>

							</li>
							<li>
							
								<form action="logout.do" method="POST">
									<button type="submit" value="" class=" btn btn-nav ">Logout</button>
								</form>

							</li>
						</ul>
					</div>
				</li>
			</ul>

		</div>
		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container -->
</nav>
