<?php //insert_ip_details();?>
<!DOCTYPE html>
<html manifest="greenpaper.appcache">
  <head>
	  <title><?php if(isset($title)) echo $title; else echo "Inception Portal";?></title>
	  <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="<?php if(isset($desc)) echo $desc; else echo "Admin";?>">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Fallback to homescreen for Chrome <39 on Android -->
    <meta name="mobile-web-app-capable" content="yes">
    <meta name="application-name" content="Green Paper">

    <!-- Add to homescreen for Safari on iOS -->
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-title" content="Green Paper">

    <!-- Tile icon for Win8 (144x144 + tile color) -->
    <meta name="msapplication-TileColor" content="#3372DF">
    <meta name="theme-color" content="#3372DF">

    <!-- SEO syco Plugins -->
    <?php 
      if(isset($meta_tags)) echo $meta_tags;
      else get_MetaTags();
    ?>

    <link rel="stylesheet" href="<?php echo base_url();?>assets/bower_components/material-design-lite/material.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="<?php echo base_url();?>assets/css/material.teal-blue.min.css" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" type="text/css" href="<?php echo base_url();?>assets/css/style.css">
    <!--Flex SLider -->
    <link rel="stylesheet" href="<?php echo base_url();?>assets/css/flexslider.css" type="text/css">
    <!-- light box -->
    <link rel="stylesheet" href="<?php echo base_url();?>assets/bower_components/lightbox2/dist/css/lightbox.css"></script>

    <script src="<?php echo base_url();?>assets/bower_components/material-design-lite/material.min.js"></script>
    <link href="<?php echo base_url();?>assets/jquery_news_ticker/styles/ticker-style.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/en_GB/sdk.js#xfbml=1&version=v2.4&appId=1561497314080164";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>
<!-- Simple header with scrollable tabs. -->
<div class="mdl-layout mdl-js-layout mdl-layout--fixed-header">

  <header class="mdl-layout__header header-bg">
  
    <div class="mdl-layout__header-row">
      <!-- Title -->
      <span class="mdl-layout-title"><img src="<?php echo base_url();?>assets/images/logo.jpg" width="355"></span>
      <!-- <span class="date-and-time mdl-cell--hide-tablet mdl-cell--hide-phone">
        <ins style="width:300px;height:45px;" class="nepalipatro-wg" widget="daysmall"/><script src="//nepalipatro.com.np/widget/js"></script>
      </span>  -->
      <span class="social mdl-cell--12-col-phone" style="right:0px; padding-left: calc(50%);">
	<a target="_blank" href="<?php echo base_url('pdf');?>"><i class="fa fa-file-pdf-o social"> pdf</i></a><br><br>
	
        <a target="_blank" href="<?php echo social_link('Facebook');?>"><i class="fa fa-facebook-official social"></i></a>
        <a target="_blank" href="<?php echo social_link('Google+');?>"><i class="fa fa-google-plus-square social"></i></a>
        <a target="_blank" href="<?php echo social_link('twitter');?>"><i class="fa fa-twitter-square social"></i></a>
        <a target="_blank" href="<?php echo social_link('YouTube');?>"><i class="fa fa-youtube-square social"></i></a>
        <!-- <br>
        <span><ins style="width:300px;height:45px;" class="nepalipatro-wg" widget="daysmall"/><script src="//nepalipatro.com.np/widget/js"></script></span> -->
      </span>

      
    </div>
    <!-- Tabs -->
    <div class="mdl-layout__tab-bar mdl-js-ripple-effect mdl-cell--hide-tablet">
      <a href="<?php echo base_url();?>" class="mdl-navigation__link is-active"><i class="fa fa-home nav-icon-fa nav-icon-fa-icon nav-icon-fa-home-icon"></i></a>
      <?php
        $news_categories  = json_decode(get_categories());
        foreach ($news_categories as $nc) { ?>
          <a href="<?php echo base_url("category/".$nc->cat_id)?>" class="mdl-navigation__link"><?php echo $nc->cat_name;?></a>    
        <?php }?>
      <a class="mdl-navigation__link" href="<?php echo base_url('blogs/')?>" class="mdl-navigation__link">बिचार/ब्लग</a>
      <a class="mdl-navigation__link" href="<?php echo base_url('images/')?>" class="mdl-navigation__link">तस्वीर</a>
      <a class="mdl-navigation__link"href="<?php echo base_url('videos/')?>" class="mdl-navigation__link">भिडियो</a>
      
      
    </div>
    
      <ul id="js-news" class="js-hidden mdl-cell--hide-tablet">
      <?php 
        $headline = json_decode(get_top_headline());
        foreach ($headline as $head) { ?>
          <li class="news-item"><a href="<?php echo base_url('newsdetail/'.$head->news_id)?>"><?php echo $head->news_heading;?></a></li>  
      <?php } ?>
      </ul>
  </header>
  <div class="mdl-layout__drawer mdl-cell--hide-desktop">
    <span class="mdl-layout-title">Menu</span>
      <nav class="mdl-navigation">
      <?php
      foreach ($news_categories as $nc2) { ?>
          <a class="mdl-navigation__link" href="<?php echo base_url("category/".$nc2->cat_id)?>"><?php echo $nc2->cat_name;?></a>
      <?php } ?>
      <a class="mdl-navigation__link" href="<?php echo base_url('blogs/')?>" class="mdl-navigation__link">बिचार/ब्लग</a>
      <a href="<?php echo base_url('images/')?>" class="mdl-navigation__link">तस्वीर</a>
      <a href="<?php echo base_url('videos/')?>" class="mdl-navigation__link">भिडियो</a>
      <a href="<?php echo base_url('about-green-paper');?>" class="mdl-navigation__link" class="mdl-navigation__link" class="mdl-navigation__link">हाम्रो बारे</a>
      <a href="<?php echo base_url('contact-us');?>" class="mdl-navigation__link" class="mdl-navigation__link">सम्पर्क</a>
      <a href="<?php echo base_url('advertisement');?>" class="mdl-navigation__link">विज्ञापन</a>
      
    </nav>

  </div>
  <!-- contents -->
    <?= $contents ?>
    
            <div class="container2 mdl-cell--hide-phone">
                <div class="mdl-grid">
                    <div class="mdl-cell mdl-cell--12-col">
                        <footer class="mdl-mini-footer">
                          <div class="mdl-mini-footer--left-section">
                            <div class="mdl-logo">yubrajpokharel.com</div>
                            <ul class="mdl-mini-footer--link-list">
                              <li><a href="<?php echo base_url('about-green-paper');?>">हाम्रो बारे</a></li>
                              <li><a href="<?php echo base_url('contact-us');?>">सम्पर्क</a></li>
                              <li><a href="<?php echo base_url('advertisement');?>">विज्ञापन</a></li>
                            </ul>
                          </div>
                        </footer>
                    </div>
                </div>
            </div>
        </div>
    </main>     
</div>

<?php if(base_url(uri_string()) == base_url()){ ?>

<div id="boxes">
  <div style="top: 140px; left: 551.5px; display: none;" id="dialog" class="window"> Advertisement
    <div id="lorem">
      <?php 
          $side_adds = json_decode(get_jacket_adds());
          foreach ($side_adds as $sa) { ?>
              <div class="mdl-cell mdl-cell--12-col mdl-cell--12-col-tablet profileContainer-list mdl-grid">
                  <a href="<?php echo $sa->add_link;?>"><img src="<?php echo base_url();?>/uploads/add/<?php echo $sa->add_doc?>" class="sideadd"></a>
              </div>        
      <?php } ?>
    </div>
    <div id="popupfoot"> <a href="#" class="close agree">Close</a>  </div>
  </div>
  <div style="width: 1478px; font-size: 32pt; color:white; height: 602px; display: none; opacity: 0.8;" id="mask"></div>
</div>
<?php } ?>

    <style type="text/css">
        /*flex slider*/
        .flex-caption {
          width: 96%;
          padding: 2%;
          left: 0;
          bottom: 0;
          background: rgba(0, 150, 136, 1);
          color: #fff;
          text-shadow: 0 -1px 0 rgba(0,0,0,.3);
          font-size: 14px;
          line-height: 18px;
        }
    </style>
    <!-- IE Compatibility shims -->
      <!--[if lt IE 9]>
        <script src="//cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.2/html5shiv.min.js""></script>
      <![endif]-->

      <!--[if IE]>
        <script src="//cdnjs.cloudflare.com/ajax/libs/es5-shim/4.1.7/es5-shim.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/classlist/2014.01.31/classList.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/selectivizr/1.0.2/selectivizr-min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/flexie/1.0.3/flexie.min.js"></script>
        <link href="./assets/ie.css" rel="stylesheet">
      <![endif]-->
    <!-- end shims -->
    <script src="<?php echo base_url();?>assets/js/jquery.min.js"></script>
    <script src="<?php echo base_url();?>assets/js/main.js"></script>
    <script type="text/javascript" src="<?php echo base_url();?>assets/js/material.min.js"></script>
    <script src="<?php echo base_url();?>assets/jquery_news_ticker/includes/jquery.ticker.js" type="text/javascript"></script>
    <script src="<?php echo base_url();?>assets/jquery_news_ticker/includes/site.js" type="text/javascript"></script>

    <!-- FlexSlider -->
    <script defer src="assets/js/jquery.flexslider.js"></script>
    <!-- Place in the <head>, after the three links -->
    <script type="text/javascript" charset="utf-8">
        $(window).load(function() {
            $('.flexslider').flexslider();
        });
    </script>

    
   <script>
        $(function(){
            $('.sticky').smartSticky({destinationTop:100});
        })
    </script>
   

<script type="text/javascript">
    $(function () {
        $('#js-news').ticker({
            speed: 0.10,
            htmlFeed: false,
            fadeInSpeed: 600,
            controls: false,
            titleText: 'Latest News'
        });
    });
</script>
</body>
</html>