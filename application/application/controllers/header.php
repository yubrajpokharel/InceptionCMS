<?php 
		$query_to_get_page_seo_info = "SELECT * FROM seo";
			$result_seo_info = mysql_query($query_to_get_page_seo_info);
			confirm_query($result_seo_info);	
			$row = mysql_fetch_assoc($result_seo_info);
			$page_title =  $row['page_title'];
			$page_keywords =  $row['page_keywords'];
			$page_description =  $row['page_desc'];
			$page_developer = $row['page_developer'];
			$page_map =  $row['page_map'];
		
?>

<?php 
		$query_to_get_page_info = "SELECT * FROM intial_setup";
			$result_page_info = mysql_query($query_to_get_page_info);
			confirm_query($result_page_info);
			while($result = mysql_fetch_array($result_page_info))
			{
			$site_name =  $result['site_name'];
			}
?>


<!DOCTYPE html>
    <head>
	<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
		<title><?php echo $title?></title>
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"> 
        <meta name="description" content="<?php echo $page_description?>">
        <meta name="keywords" content="<?php echo $page_keywords?>">
        <meta name="developer" content="<?php echo $page_developer?>">
        <!--[if lt IE 9]>
          <script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
		<!-- Bootstrap core CSS -->
        <link href="<?php echo BASE_URL;?>css/bootstrap.min.css" rel="stylesheet"> 
        <!-- Add fancyBox -->
        <link rel="stylesheet" href="<?php echo BASE_URL;?>source/jquery.fancybox.css?v=2.1.5" type="text/css" media="screen" />
	<script type="text/javascript" src="<?php echo BASE_URL;?>js/booking.js"></script>
        <script type="text/javascript" src="<?php echo BASE_URL;?>source/jquery.fancybox.pack.js?v=2.1.5"></script>
         <script type="text/javascript" src="<?php echo BASE_URL;?>js/floating-1.12.js"></script>
         <script type="text/javascript" src="<?php echo BASE_URL;?>js/modernizr.js"></script>
         <script type="text/javascript">  
    floatingMenu.add('floatdiv',  
        {  
            // Represents distance from left or right browser window  
            // border depending upon property used. Only one should be  
            // specified.  
            targetLeft: 10,  
           // targetRight: 10,  
  
            // Represents distance from top or bottom browser window  
            // border depending upon property used. Only one should be  
            // specified.  
            targetTop: 150,  
            // targetBottom: 0,  
  
            // Uncomment one of those if you need centering on  
            // X- or Y- axis.  
            // centerX: true,  
            // centerY: true,  
  
            // Remove this one if you don't want snap effect  
            snap: true  
        });  
</script>  
        <!-- Just for debugging purposes. Don't actually copy this line! -->
        <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    
        <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
          <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->
		<style>
			body {font-size:13px;
			background-color:#CCC}
			.bg-main{background-color:#e4eff9}
			.bg-alterheading{background-color:#f95b5c}
			.bg-alter{background-color:#f9e4e4}
			
			.bg-redbtn{background-color:#f95b5c; color:#FFF;}
			.bg-bluebtn{background-color:#5e9fd6; color:#FFF;}
			
		
  #floatdiv{
    position:absolute;
    width:80px;
    background:#FFFFFF;
    border:5px double #DE5E60;
    top:25;
    z-index:100;
    opacity:0.3;
    transition: opacity .45s ease-in-out;
	   -moz-transition: opacity .45s ease-in-out;
	   -webkit-transition: opacity .45s ease-in-out;
    }
    
    #floatdiv:hover {
	   opacity:1; 
	   transition: opacity .45s ease-in-out;
	   -moz-transition: opacity .45s ease-in-out;
	   -webkit-transition: opacity .45s ease-in-out;
	    }
  .buttons_api{
	  padding-top:5px;
	  padding-bottom:5px;
	  padding-left:2px;
	  padding-right:2px;
	  text-align:center;
	  }
 </style>
        <script>
	   $(".toggle").on("click", function () {
    		$(".marquee").toggleClass("microsoft");
		});
</script> 
    </head>
    <!-- HTML code from hello-pokhara.com-->
<body>  

 <div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/en_GB/sdk.js#xfbml=1&version=v2.0";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>


<div id="floatdiv">

    <div class="buttons_api">
        <div class="g-plusone" data-size="tall" data-href="https://plus.google.com/114413120409805829752"></div>
	  <!-- Place this tag after the last +1 button tag. -->
		<script type="text/javascript">
		  (function() {
		    var po = document.createElement('script'); po.type = 'text/javascript'; po.async = true;
		    po.src = 'https://apis.google.com/js/plusone.js';
		    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(po, s);
		  })();
		</script>
    </div>
    
     <div class="buttons_api">
            <a href="https://twitter.com/share" class="twitter-share-button" data-url="http://www.twitter.com/hellopkr" data-via="hellopkr" data-related="hellopkr.com" data-count="none" data-hashtags="hellopkr">Tweet</a>
<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+'://platform.twitter.com/widgets.js';fjs.parentNode.insertBefore(js,fjs);}}(document, 'script', 'twitter-wjs');</script>
    </div>
    
     <div class="buttons_api">
        <div class="fb-like" data-href="https://www.facebook.com/pages/hellopkr.com" data-width="55" data-height="The pixel height of the plugin" data-colorscheme="light" data-layout="box_count" data-action="like" data-show-faces="true" data-send="false"></div>
    </div>
    
    <div class="buttons_api">
              <a  class="btn btn-primary" href="<?php echo BASE_URL?>advertisement">Add</a><br>
             
    </div>
    <div class="buttons_api">
           
              <a class="btn btn-primary" href="<?php echo BASE_URL?>aboutus">About</a>
    </div>
    
</div>
<div class="container center-block table-bordered bg_white" style="margin-top:5px;">   
    <div class="row syco_margin_basic">
    	<div class="col-lg-4 col-md-4">
        	<img src="<?php echo BASE_URL;?>images/logo.gif" width="100%" height="150">
        </div>
        <div class="col-lg-5 col-md-5">
       <?php 
		$query_to_get_topadd = "SELECT * FROM topadd WHERE add_page = 'big'";
			$result_topadd_info = mysql_query($query_to_get_topadd);
			confirm_query($result_topadd_info);
			while($resultadd = mysql_fetch_array($result_topadd_info))
			{?>
			<a href="<?php echo $resultadd['add_link']?>"><img src="<?php echo BASE_CMS;?>uploads/add/<?php echo $resultadd['add_doc']?>" alt="<?php echo $resultadd['add_name']?>" title="<?php echo $resultadd['add_name']?>" width="100%" height="150"></a>
			<?php }?>
        </div>
        <div class="col-lg-3 col-md-3">
        	<?php 
		$query_to_get_topadd = "SELECT * FROM topadd WHERE add_page = 'small'";
			$result_topadd_info = mysql_query($query_to_get_topadd);
			confirm_query($result_topadd_info);
			while($resultadd = mysql_fetch_array($result_topadd_info))
			{?>
			<a href="<?php echo $resultadd['add_link']?>"><img src="<?php echo BASE_CMS;?>uploads/add/<?php echo $resultadd['add_doc']?>" alt="<?php echo $resultadd['add_name']?>" title="<?php echo $resultadd['add_name']?>" width="100%" height="150"></a>
			<?php }?>
        </div>
    </div>
    
    <div class="navbar navbar-default bg-primary " role="navigation">
    
    <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand glyphicon glyphicon-home" rel="home" href="<?php echo BASE_URL?>"></a>
    </div>
    
    <div class="collapse navbar-collapse">
        
        <ul class="nav navbar-nav"><li><a href="<?php echo BASE_URL?>tourism/">Tourism</a></li>
            <li><a href="<?php echo BASE_URL?>hnr/">Hotels/Resturants</a></li>
            <li><a href="<?php echo BASE_URL?>tours/">Tours/Travelling</a></li>
            <li><a href="<?php echo BASE_URL?>business/">Business</a></li>
            <li><a href="<?php echo BASE_URL?>culture/">Culture</a></li>
            <li><a href="<?php echo BASE_URL?>paragliding/">Paragliding</a></li>
            <li><a href="<?php echo BASE_URL?>trekking/">Trekking</a></li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Adventure <b class="caret"></b></a>
              <ul class="dropdown-menu">
                
                <li><a href="<?php echo BASE_URL?>rafting/">Rafting & Kayaking</a></li>
                <li><a href="<?php echo BASE_URL?>ultralight/">Ultralight & Mountain Flights</a></li>
                <li><a href="<?php echo BASE_URL?>zipliner/">Zip Line Flyer</a></li>
                <li><a href="<?php echo BASE_URL?>mountainbiking/">Mountain Biking</a></li>
                <li><a href="<?php echo BASE_URL?>honeyhunting/">Honey Hunting</a></li>
                <li><a href="<?php echo BASE_URL?>rockclimbing/">Rock Climbing</a></li>
                <li><a href="<?php echo BASE_URL?>boating/">Boating & FIshing</a></li>
                <li><a href="<?php echo BASE_URL?>birdwatching/">Research & Bird Watching</a></li>
                
              </ul>
            </li>

		<li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Spots <b class="caret"></b></a>
              <ul class="dropdown-menu">
                <?php 
						$query_to_get_sugg_info = "SELECT * FROM latest_categories WHERE status = 1";
						$result_sugg_info = mysql_query($query_to_get_sugg_info);
						confirm_query($result_sugg_info);
						while($resultsugg = mysql_fetch_array($result_sugg_info))
						{?>
						 <li><a href="<?php echo BASE_URL?>spots/?spotid=<?php echo $resultsugg['lcat_id'] ?>"><?php echo $resultsugg['lcat_name'] ?></a></li>
						<?php }
				?>
              </ul>
            </li>
            
            
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Gallery <b class="caret"></b></a>
             <ul class="dropdown-menu">   
             	<li><a href="<?php echo BASE_URL?>gallery/">Image Gallery</a></li>
				<li><a href="<?php echo BASE_URL?>videos/">Video Gallery</a></li>
              </ul>
            </li>
            
            <li><a href="<?php echo BASE_URL?>events/">Events</a></li>
            <li><a href="<?php echo BASE_URL?>ne/">नेपाली मा</a></li>
        </ul>
        
        
        
    </div>

</div>

<?php include('marquee.php')?>