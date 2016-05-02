







<div class="row" id="listings">
<div class="col-xs-12 col-lg-2 pull-right noSpace ">
	<div class="optionBoxContainer">
	<div class="optionBox">
		<b>Option Box</b> 
	</div>	
</div>
</div>

<div class="col-xs-12 col-lg-10 listGroup">

<form action="editEmp.do">

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

</form>
</div>




</div>



<!-- 

</div>

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


 -->







<!-- 
						<div class="col-xs-12">
				<c:choose>
					<c:when test="${!empty(response)}">
						<div class="jumbotron resultsGroup">
							<div class="row">
								<div id="advisory">
									<span>Scroll right if querying large table </span><i
										class="fa fa-arrow-right pulse" aria-hidden="true"></i>
								</div>
							</div>


							<div class="table-responsive">
								<table class="table-bordered table-hover text-center">
									<thead>
										<c:forEach items="${headers}" var="headerValue">
											<th>${headerValue}</th>
										</c:forEach>
									</thead>
									<c:forEach var="items" items="${response}">
										<tr>

											<c:forEach var="items2" items="${items}">
												<td>${items2}</td>


											</c:forEach>

										</tr>


									</c:forEach>


								</table>

							</div>

						</div>
					</c:when>
					<c:otherwise>
						<div></div>
					</c:otherwise>
				</c:choose> -->
<!-- 
			<div class="row">

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
			</div> -->