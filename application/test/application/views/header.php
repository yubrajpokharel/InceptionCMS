<?php //insert_ip_details();?>
<!DOCTYPE html>
<head>
  <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Cloud CMS</title>
  
  <link href="<?php echo base_url(); ?>assets/css/bootstrap3.css" rel="stylesheet">
  <link href="<?=base_url('assets/css/bootstrap-responsive.css')?>" rel="stylesheet">
  
  <!-- DataTables CSS -->
  <link rel="stylesheet" type="text/css" href="//cdn.datatables.net/1.10.4/css/jquery.dataTables.css">
  <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
  
  <!-- DataTables -->
  <script src="<?=base_url('assets')?>/ckeditor/ckeditor.js"></script> 
  
  <!-- graphs plugins -->
  <link rel="stylesheet" type="text/css" href="<?php echo base_url('assets/js/graph')?>/jquery.jqplot.css" />

  <!-- animsition CSS -->
  <link rel="stylesheet" href="<?php echo base_url(); ?>assets/css/animsition.min.css">

  <!-- Jqrowl CSS -->
  <link rel="stylesheet" href="<?php echo base_url(); ?>assets/css/jquery.jgrowl.min.css">
  

  <style type="text/css">
  /*.well{background-color: #FFF;}*/
  body{padding-bottom: 40px;}
  .well {background-color: rgba(196, 215, 237, 0.1 );}
  .menu{background-color: rgba(196, 215, 237, 0.1 );}
  .nav-tabs.nav-stacked > li > a {background-color: #3DAAE8;color: #fff;}
  .label-info, .badge-info {background-color: #FFFDF6;color: #4AB0EA;}
  .progress {height: 10px;margin-top: 5px;margin-bottom: 5px;}
  .white{ background-color: #fff;}
  </style>
</head>
<body  data-spy="scroll" data-target=".bs-docs-sidebar">

<div class="navbar">
  <div class="navbar-inner">
    <div class="container">
      <a class="btn btn-navbar nav_a" data-toggle="collapse" data-target=".navbar-responsive-collapse">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </a>
      <a class="brand" href="<?php echo base_url('home');?>"><?php echo get_site_name();?><small>&nbsp; by Danfee Inc.</a>
      <div class="nav-collapse collapse navbar-responsive-collapse">
        

        <form class="navbar-search pull-left" action="">
          <input type="text" class="search-query span2" placeholder="Search">
        </form>

        <ul class="nav pull-right">
          <li><a href="<?=base_url('/home/')?>"> Home</a></li>
          <li><a href="<?=base_url('/details')?>"> Profile</a></li>
          <li><a href="<?=base_url('/seo')?>"> SEO</a></li>
          <li><a href="<?=base_url('/staff/logout')?>"> Logout</a></li>
        </ul>

        <ul class="nav pull-right hidden-desktop hidden-tablet">
          
          <li><a href="<?=base_url('/feedback')?>"><i class="fa fa-envelope-o"></i> Feedback    <span class="badge badge-info"><?php echo check_feedback();?></span></a></li>
          <li><a href="<?=base_url('/about')?>"><i class="fa fa-circle-o-notch fa-spin"></i> About us</a></li>
          
          
          <li><a href="<?=base_url('/category')?>"><i class="fa fa-dot-circle-o"></i> News Category</a></li>
          <li><a href="<?=base_url('/news')?>"><i class="fa fa-newspaper-o"></i> News</a></li>
          
          <li><a href="<?=base_url('/jadd')?>"><i class="fa fa-anchor"></i> Jacket Add</a></li>
          <li><a href="<?=base_url('/topadd')?>"><i class="fa fa-anchor"></i> Side Add</a></li>
          <li><a href="<?=base_url('/pageadd')?>"><i class="fa fa-anchor"></i> Page Add</a></li>
          <li><a href="<?=base_url('/add')?>"><i class="fa fa-anchor"></i> Top 2 Add</a></li>
          
          <li><a href="<?=base_url('/testimonial')?>"><i class="fa fa-user"></i> Blogs</a></li>
          <li><a href="<?=base_url('/gallery')?>"><i class="fa fa-picture-o"></i> Image Gallery</a></li>
          <li><a href="<?=base_url('/vgallery')?>"><i class="fa fa-video-camera"></i> Video Gallery</a></li>
          
          
          
        </ul>

      </div><!-- /.nav-collapse -->
    </div>
  </div><!-- /navbar-inner -->
</div>


    <div class="container">        
        

        <div class="row-fluid"> 
    <!----------------------------------------------- List Portion of the CMS ---------------------------------------------------------------------------->
           <div class="span3 hidden-phone">
                 <ul class="nav nav-tabs nav-list nav-stacked">
                      
                      <li><a href="<?=base_url('/home/')?>"><i class="fa fa-home"></i> Home</a></li>
                      <!-- <li><a href="<?=base_url('/staff')?>"><i class="fa fa-users"></i> Staffs</a></li> -->
                      <!-- <li><a href="<?=base_url('/vacancy')?>"><i class="icon-book"></i> Vacancies</a></li> -->
                      <li><a href="<?=base_url('/about')?>"><i class="fa fa-circle-o-notch fa-spin"></i> About us</a></li>
                      
                    <br>
                        <li><a href="<?=base_url('/jadd')?>"><i class="fa fa-anchor"></i> Jacket Add</a></li>
                        <li><a href="<?=base_url('/topadd')?>"><i class="fa fa-anchor"></i> Side Add</a></li>
                        <li><a href="<?=base_url('/pageadd')?>"><i class="fa fa-anchor"></i> Page Add</a></li>
                        <li><a href="<?=base_url('/add')?>"><i class="fa fa-anchor"></i> Top 2 Add</a></li>
                    <br>
                      
                      <li><a href="<?=base_url('/feedback')?>"><i class="fa fa-envelope-o"></i> Feedback    <span class="badge badge-info"><?php echo check_feedback();?></span></a></li>
                    <br>
                      
                      <li><a href="<?=base_url('/category')?>"><i class="fa fa-dot-circle-o"></i> News Category</a></li>
                      <li><a href="<?=base_url('/news')?>"><i class="fa fa-newspaper-o"></i> News</a></li>
                    <br>
                      
                      <li><a href="<?=base_url('/gallery')?>"><i class="fa fa-picture-o"></i> Image Gallery</a></li>
                      <li><a href="<?=base_url('/vgallery')?>"><i class="fa fa-video-camera"></i> Video Gallery</a></li>
                    
                    <br>
            
                      <li><a href="<?=base_url('/testimonial')?>"><i class="fa fa-quote-left"></i> Blogs</a></li>
                      <li><a href="<?=base_url('/social')?>"><i class="fa fa-binoculars"></i> Social</a></li>                      
                    <br>

                </ul><br><br>
                &nbsp;
            </div>

<!---------------------------------- List Portion of the CMS -------------------------------------------------->