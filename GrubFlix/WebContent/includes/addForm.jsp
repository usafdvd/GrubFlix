    

<div class="formWrapper row">



    <form action="addEmp.do" modelAttribute="Employee">
    <div class="row">
        

                <div class="col-xs-12 col-md-6">

                    <div class="input text-center">
                        <input type="text" name="firstname" value="${employee.firstname}" placeholder="" class="form-control formNoBrdrSpacing"/>

                    </div>

                </div>






                <div class="col-xs-12 col-md-6">

                    <div class="input text-center">

                        <input type="text" name="lastname" value="${employee.lastname}" class="form-control formNoBrdrSpacing"/>


                    </div>

                </div>
                <div class="col-xs-12 col-md-6">

                    <div class="input text-center">

                        <input type="hidden" name="id" value="${employee.id}" class="form-control formNoBrdrSpacing"/>


                    </div>

                </div>









                <div class="form col-xs-12 col-md-6">

          
        </div>







        <div class="col-xs-12">




         
         

            <button type="submit" value="update"
            class=" btn btn-default floatR smargBottom">Submit</button>

           



        </div>
   
</div>
</div>






























<!--         firstname
lastname
gender
email
hiredate
salary
department_id
job_id -->


<!-- 
    <form action="updateDisc.do" method="POST">
        <div>
            MCN:<input type="text" name="mcn" value="${discrepancy.mcn}">
            <br> Work Center:<input type="text" name="workCenter"
                value="${discrepancy.workCenter}"> <br> System:<input
                type="text" name="system" value="${discrepancy.system}"> <br>
            Title:<input type="text" name="gripe" value="${discrepancy.gripe}">
            <br> Description:<input type="text" name="discrepancy"
                value="${discrepancy.discrepancy}"> <br> Resolution:<input
                type="text" name="resolution" value="${discrepancy.resolution}">
            <br> Status:<input type="text" name="status"
                value="${discrepancy.status}"> <br> Man Hours:<input
                type="text" name="hours" value="${discrepancy.hours}"> <br>
            Job Status:<input type="text" name="jobStat"
                value="${discrepancy.jobStat}"> <br> Start Date:<input
                type="text" name="startDate" value="${discrepancy.startDate}">
            <br> Completion Date:<input type="text" name="endDAte"
                value="${discrepancy.endDate}"> <br> <br>

            <button type="submit" value="updateDisc" class="btn text-center">submit</button>

        </div>
    </form>

    <form action="deleteDisc.do" method="POST">
        <div>
            
            
            <button type="submit" name="mcn" value="${discrepancy.mcn}">delete</button>
        </div>
    </form>


    </div> 

</div><!-- col-xs-12 -->

<!-- </div>
</form> 

</div>
 -->