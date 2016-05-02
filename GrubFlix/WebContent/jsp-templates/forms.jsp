 
<!-- example1 -->
<!-- sing purpose action button --> 

<form action="deleteDisc.do" method="POST">
	<li>
		<button type="submit" name="mcn" value="${discrepancy.mcn}" class=" btn btn-default">delete</button>
	</li>
</form>





<!-- example2 -->
<!-- form with dropdown and input field -->

<form action="newDisc.do" method="POST">
	<div class="form col-xs-12 col-md-6 ">

		<select name="workCenter" class="form-control formNoBrdrSpacing" id="">
			<option>Work Center</option>
			<option value="13A">13A</option>
			<option value="13B">13B</option>
			<option value="110">110</option>
			<option value="120">120</option>
			<option value="210">210</option>
			<option value="220">220</option>

		</select>


	</div>
	<div class="col-xs-12 col-md-6">

		<div class="input text-center">
			<input type="text" name="system" placeholder="System" class="form-control formNoBrdrSpacing">


		</div>

	</div>


	<button type="submit" value="addDiscrepancy"
	class=" btn btn-default floatR smargBottom">Submit
</button>

</form>