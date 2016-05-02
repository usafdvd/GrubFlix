<!-- Navigation -->
<nav class="navbar navbar-custom navbar-fixed-top" role="navigation">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target=".navbar-main-collapse">
				<i class="fa fa-bars"></i>
			</button>
			<a class="navbar-brand page-scroll" href="#page-top"> </a>
		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div
			class="collapse navbar-collapse navbar-right navbar-main-collapse">
			<ul class="nav navbar-nav">
				<!-- Hidden li included to remove active class from about link when scrolled up past about section -->
				<li class="hidden"><a href="#page-top"></a></li>
				<li>
					<form action="movies.jsp">
						<button type="submit" value="" class=" btn btn-nav ">Movies</button>
					</form>
				<li>
					<form action="grub.jsp">
						<button type="submit" value="" class=" btn btn-nav ">Grub</button>
					</form>
				</li>
				<li>
					<form action="checkout.jsp">
						<button type="submit" value="" class=" btn btn-nav ">Checkout</button>
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
								<form action="account.jsp">
									<button type="submit" value="" class=" btn btn-nav ">Account</button>
								</form>

							</li>
							<li>
							
								<form action="index.jsp">
									<button type="submit" value="" class=" btn btn-nav ">Logout</button>
								</form>

							</li>
						</ul>
					</div>
				</li>
			</ul>

		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container -->
</nav>
