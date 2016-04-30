    

<div class="formWrapper row">



		<div class="row">
    <form action="updateEmp.do" modelAttribute="Employee">


			<div class="col-xs-12 col-md-6">

				<div class="input text-center">
					<input type="text" name="firstname" value="${employee.firstname}"
						placeholder="" class="form-control formNoBrdrSpacing" />

				</div>

			</div>





			<div class="col-xs-12 col-md-6">

				<div class="input text-center">

					<input type="text" name="lastname" value="${employee.lastname}"
						class="form-control formNoBrdrSpacing" />


				</div>

			</div>
			<div class="col-xs-12 col-md-6">

				<div class="input text-center">

					<input type="hidden" name="id" value="${employee.id}"
						class="form-control formNoBrdrSpacing" />


				</div>

			</div>









			<div class="form col-xs-12 col-md-6">

				<!--     <select name="departments" class="form-control formNoBrdrSpacing" id="">
                    <c:forEach var="item" items="${dept}">
                    <option value="${item.key}" ${item.key == selectedDept ? 'selected="selected"' : ''}>${item.value}</option>
                </c:forEach>
            </select> -->
			</div>







			<div class="col-xs-12">







				<button type="submit" value="update"
					class=" btn btn-default floatR smargBottom">Submit</button>

			</div>
	</form>


        <div class="col-xs-12">
        <form action="deleteEmp.do" modelAttribute="Employee">
              <input type="hidden" name="id" value="${employee.id}" class="form-control formNoBrdrSpacing"/>
         <button type="submit" value="delete"
            class=" btn btn-default floatR smargBottom">delete</button>
        </form>
    </div>
		</div>
        </div>



   



