<!-- Add New -->
<div class="modal fade" id="addnew" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <center><h4 class="modal-title" id="myModalLabel">Add New</h4></center>
            </div>
            <div class="modal-body">
			<div class="container-fluid">
			<form method="POST" action="addtech.php" enctype="multipart/form-data">
				<center>
				<div class="row form-group">
					<div class="col-sm-2">
						<label class="control-label modal-label">Name:</label>
					</div>
					<div class="col-sm-10">
						<input type="text" class="form-control" placeholder="Full Name" name="fullname" required="required" autofocus>
					</div>
				</div>
				<div class="row form-group">
					<div class="col-sm-2">
						<label class="control-label modal-label">Email</label>
					</div>
					<div class="col-sm-10">
						<input type="email" class="form-control" placeholder="Email ID" id="email" onBlur="userAvailability()" name="email" required="required">
						<span id="user-availability-status1" style="font-size:12px;"></span>
					</div>
				</div>
				<div class="row form-group">
					<div class="col-sm-2">
						<label class="control-label modal-label">Password</label>
					</div>
					<div class="col-sm-10">
						<input type="password" class="form-control" placeholder="Password" required="required" name="password">
					</div>
				</div>
				<div class="row form-group">
					<div class="col-sm-2">
						<label class="control-label modal-label">Contact No:</label>
					</div>
					<div class="col-sm-10">
						<input type="text" class="form-control" maxlength="10" name="contactno" placeholder="Contact no" required="required" autofocus>
					</div>
				</div>
				

				
            </div> 
			</div>
		</center>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Cancel</button>
                <button type="submit" name="add" class="btn btn-primary"><span class="glyphicon glyphicon-floppy-disk"></span> Save</a></button>
			</form>
            </div>


        </div>
    </div>
</div>