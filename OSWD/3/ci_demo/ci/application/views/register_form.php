<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>CodeIgniter Register</title>
	<link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>bootstrap/css/bootstrap.min.css">
</head>
<body>
<div class="container">
	<h1 class="page-header text-center">CodeIgniter Register with Validation</h1>
	<div class="row">
		<div class="col-sm-4">
			<div class="login-panel panel panel-primary">
		        <div class="panel-heading">
		            <h3 class="panel-title"><span class="glyphicon glyphicon-user"></span> Register
		            </h3>
		        </div>
		    	<div class="panel-body">
		        	<form method="POST" action="<?php echo base_url(); ?>index.php/user/register">
		            	<fieldset>
		                	<div class="form-group">
		                    	<input class="form-control" placeholder="Email" type="text" value="<?php echo set_value('email'); ?>" name="email">
		                	</div>
		                	<div class="form-group">
		                    	<input class="form-control" placeholder="Password" type="password" value="<?php echo set_value('password'); ?>" name="password">
		                	</div>
		                	<div class="form-group">
		                    	<input class="form-control" placeholder="Full Name" type="text" value="<?php echo set_value('fname'); ?>" name="fname">
		                	</div>
		                	<button type="submit" class="btn btn-lg btn-primary btn-block"><span class="glyphicon glyphicon-check"></span> Sign Up</button>
		            	</fieldset>
		        	</form>
		    	</div>
		    </div>
		    <?php
		    	if(validation_errors()){
		    		?>
		    		<div class="alert alert-danger text-center" style="margin-top:20px;">
		    			<?php echo validation_errors(); ?>
		    		</div>
		    		<?php
		    	}
 
		    	if($this->session->flashdata('error')){
					?>
					<div class="alert alert-danger text-center" style="margin-top:20px;">
						<?php echo $this->session->flashdata('error'); ?>
					</div>
					<?php
				}
 
				if($this->session->flashdata('success')){
					?>
					<div class="alert alert-success text-center" style="margin-top:20px;">
						<?php echo $this->session->flashdata('success'); ?>
					</div>
					<?php
				}	
		    ?>
		</div>
		<div class="col-sm-8">
			<table class="table table-bordered table-striped">
				<thead>
					<tr>
						<th>ID</th>
						<th>FullName</th>
						<th>Email</th>
						<th>Password</th>
					</tr>
				</thead>
				<tbody>
				<?php
					foreach($users as $user){
						?>
						<tr>
							<td><?php echo $user->id; ?></td>
							<td><?php echo $user->fname; ?></td>
							<td><?php echo $user->email; ?></td>
							<td><?php echo $user->password; ?></td>
						</tr>
						<?php
					}
				?>
				</tbody>
			</table>
		</div>
	</div>
</div>
</body>
</html>