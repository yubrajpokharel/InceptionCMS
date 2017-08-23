<!DOCTYPE html>

<head>
  <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
  <title>Cloud CMS</title>
    <link href="<?php echo base_url(); ?>assets/css/bootstrap3.css" rel="stylesheet">
  <link href="<?=base_url('assets/css/bootstrap-responsive.css')?>" rel="stylesheet">
  <!-- DataTables CSS -->
  <link rel="stylesheet" type="text/css" href="//cdn.datatables.net/1.10.4/css/jquery.dataTables.css">
  <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
  <!-- DataTables -->
  <script src="//cdn.ckeditor.com/4.4.5.1/standard/ckeditor.js"></script>
  <style type="text/css">
  .well{background-color: #FFF;}
  </style>
</head>

<body  data-spy="scroll" data-target=".bs-docs-sidebar">
    <div class="container">
        
            <div class="page-header span12">
              <h1><?php echo get_site_name();?><small>&nbsp; by Daanfe Inc.</small></h1>
            </div>
            
          	<div style="margin-top:100px" class="row" align="center">
              <div class="span12">
              	 <div class="well">
                      <br>
                      <?php echo validation_errors(); ?>

  				            <?php echo form_open('verifylogin'); ?>
                     		  <div class="input-prepend input-append">
                            <span class="add-on">Username</span>
                            <input class="span2" id="username" type="email" name="username" required placeholder="youremail@xyz.com" >
                          </div>
                          
                          <br>
                          <div class="input-prepend input-append">
                            <span class="add-on">Password</span>
                            <input class="span2" id="password" type="password" name="password" required placeholder="password" >
                          </div>
                       	  <br/>
                       	<input class="btn btn-success" type="submit" value="Login"/>
                     	</form>
                 </div>
              </div>
			      </div>
        <div class="navbar navbar-fixed-bottom" align="center" style="background-color:#09F"><!--Start of footer-->
        	<p align="center"><br />cloudcms &copy; yubraj-pokharel<br /></p>
      	</div>
    </div> <!--end of container fluid-->
</body>
<script src="<?php echo base_url(); ?>assets/js/jquery.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="<?php echo base_url(); ?>assets/js/bootstrap.min.js"></script>
</html>