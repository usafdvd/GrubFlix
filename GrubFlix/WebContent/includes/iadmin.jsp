<div class="movieContent">
	<div class="row  text-center">

		<div class="row text-center">
			<h1>Checkout</h1>
		</div>

		<div class="row">
			<div class="panel panel-default">
				<div class="panel-body">

					<div class="row">

						<div class="col-xs-12 col-sm-4 text-center">
							<img src="img/borat.jpg" class="checkOutThumbNail" />
						</div>

						<div class="col-xs-12 col-sm-3 text-center checkOutInfo">
							<div class="col-xs-12 col-sm-12">
								<h4 class="checkOutItemTitle">Borat</h4>
								<p>more info more info</p>
							</div>
						</div>



						<div
							class="amountContainer col-xs-6 col-sm-3 itemButtonsContainer">
							<div class="itemButton"></div>
							<form action="">
								Total Amount:
								<input type="number" name="points" min="0" max="10" step="1"
									value="0">
							</form>
							<br>
							
							<form action="">
								In Stock:
								<input type="number" name="points" min="0" max="10" step="1"
									value="0">
							</form>
							

							<!-- 							<div id="spinner_02" class="spinner ridged" value="0"></div>   -->


						</div>
						<div class="amountContainer col-xs-6 col-sm-2 itemButtons">


							<form action="checkout.jsp">
								<button type="submit" value="" class=" btn btn-default">
									Delete</button>
							</form>


						</div>


					</div>
				</div>
			</div>


		</div>


		<div class="row">
			<div class="panel panel-default">
				<div class="panel-body" id="finalCheckOutBox">

					<div class="row">
						<div id="checkOutTotal">
							<h3>Total: $15.00</h3>
						
						</div>
					
					</div>
					<div class="row" id="checkOutBottom">

						<div class="checkbox" id="checkOutCheckBox">
							<label> <input type="checkbox" id="blankCheckbox"
								value="option1" aria-label="...">
							</label>
							<span>Use card and address on file</span>
							
						</div>
						
						
						<form action="tracking.jsp">
								<button type="submit" value="" class=" btn btn-default placeOrderBtn pull-right">
								
									Place Order</button>
						</form>
						
						
						

					</div>
				</div>
			</div>
		</div>








	</div>
</div>