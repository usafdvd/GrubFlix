
<div class="movieContent text-center">
	<div class="row itemContainer">

		<div class="row text-center ">
		
			<h1>Checkout</h1>
			
		</div>
		text here
<c:forEach var="dvd" items="${cart}">
		<form action="removeFromCart.do" method="POST">
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


							
								<button type="submit" name="dvdid" value="${dvd.id}" class=" btn btn-default adminEditBtn">
									Delete</button>
							


						</div>


					</div>
				</div>
			</div>


		</div>
		
	</form>
	</c:forEach>


		







	</div>
</div>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

