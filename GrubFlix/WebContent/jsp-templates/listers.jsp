
<!-- example1 -->

	<c:forEach var="discrepancy" items="${discrepancyList}">
					<form action="editDiscrep.do">
						<div class="panel panel-default">

							<div class="panel-body">
								<div class="col-xs-10">
									<span class="line">Work Center: <b>${discrepancy.workCenter}</b>
										System: <b>${discrepancy.system}</b>
									</span> <span class="line">Job Status: <b>${discrepancy.jobStat}</b></span><span
										class="line"> A/C Status: <b>${discrepancy.status}</b></span>
								</div>
								<div class="col-xs-1"></div>
								<button type="submit" name="mcn" value="${discrepancy.mcn}"
									class="btn btn-default editButton col-xs-1 ">Edit</button>
							</div>

						</div>
					</form>

				</c:forEach>





<!-- example 2 -->



<c:forEach var="president" items="${presList}" end="0">
	<h2>
		<span class="glyphicon glyphicon-star" aria-hidden="true"></span>

	
		<c:out value="${president.party}" />
		Party <span class="glyphicon glyphicon-star"
			aria-hidden="true"></span>
	</h2>
</c:forEach>





<!-- nested -->




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