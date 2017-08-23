<main class="mdl-layout__content">
        <div class="page-content">

            <?php get_top_bottom_add('home_up');?>

            <div class="container2">
                <div class="mdl-grid">
                    <div class="mdl-cell mdl-cell--12-col mdl-cell--12-col-tablet mdl-cell--12-col-phone">
                        <div class="profile-page mdl-cell mdl-cell--12-col">
                            <h1>दीगो अर्थतन्त्र र सकारात्मक परिवर्तनको शुरुवात...</h1>
                        </div>
                    </div>
                </div>
            </div>            

            <div class="container2">
                <div class="mdl-grid">
                    <div class="mdl-cell mdl-cell--12-col mdl-cell--12-col-tablet mdl-cell--12-col-phone">
                        <div class="mdl-grid news-container">
                            <!-- slider -->
                            <div class="profile-page mdl-cell mdl-cell--3-col mdl-cell--12-col-tablet shop-bg mdl-shadow--4dp mdl-cell--12-col-phone" style="min-height:453px">
                                <!-- Place somewhere in the <body> of your page -->
                                <div class="flexslider">
                                  <ul class="slides">
                                   <?php 
                                        $headline1 = json_decode(get_top_headline());
                                        foreach ($headline1 as $head1) { ?>
                                        <li>
                                          <img alt="<?php echo $head1->news_heading;?>" title="<?php echo $head1->news_heading;?>" style="height:300px;" src="uploads/news/thumb/<?php echo $head1->news_image;?>" />
                                          <p class="flex-caption"><a href="<?php echo base_url('newsdetail/'.$head1->news_id)?>" style="color:#fff;"><?php echo $head1->news_heading;?></a></p>
                                        </li>    
                                    <?php } ?>
                                  </ul>
                                </div>
                            </div>

                            <div class="profile-page mdl-cell mdl-cell--3-col mdl-cell--12-col-tablet shop-bg mdl-shadow--4dp mdl-cell--12-col-phone"  style="min-height:453px">
                                <div class="mdl-tabs mdl-js-tabs mdl-js-ripple-effect">
                                      <div class="mdl-tabs__tab-bar">
                                          <a href="#starks-panel" class="mdl-tabs__tab is-active tab-links">मुख्य खबर</a>
                                          <a href="#lannisters-panel" class="mdl-tabs__tab tab-links">लोकप्रिय</a>
                                      </div>

                                      <div class="mdl-tabs__panel is-active" id="starks-panel">
                                        <!-- tab content 1 -->
                                        <?php 
                                            $headline = json_decode(get_3_top_headline());
                                            foreach ($headline as $head) { ?>
                                              <div class="mdl-cell mdl-cell--12-col profileContainer-list mdl-grid">
                                                <h4 class="profile-shopname-title"><a href ="<?php echo base_url('newsdetail/'.$head->news_id)?>"><i class="fa fa-bolt headline"></i>&nbsp; <?php echo $head->news_heading;?> </a></h4>
                                                <div style="padding-left: 10px;padding-right: 10px;margin-bottom: -10px;"><?php echo word_limiter($head->news_description,12)?></div>
                                            </div>
                                          <?php } ?>
                                        <!-- tab content finished -->
                                      </div>
                                      <div class="mdl-tabs__panel" id="lannisters-panel">
                                        <?php 
                                            $headline2 = json_decode(get_famous_news());
                                            foreach ($headline2 as $head2) { ?>
                                              <div class="mdl-cell mdl-cell--12-col profileContainer-list mdl-grid">
                                                <h4 class="profile-shopname-title"><a href ="<?php echo base_url('newsdetail/'.$head2->news_id)?>"><i class="fa fa-bolt headline"></i>&nbsp; <?php echo $head2->news_heading;?> </a></h4>
                                                <div style="padding-left: 10px;padding-right: 10px;margin-bottom: -10px;"><?php echo word_limiter($head2->news_description,12)?></div>
                                            </div>
                                          <?php } ?>
                                      </div>
                                    </div>
                            </div>

                            <!-- blogs -->
                            <div class="profile-page top-lists mdl-cell mdl-cell--3-col mdl-cell--12-col-tablet mdl-shadow--4dp mdl-cell--hide-phone" style="min-height:446px">            
                                <!-- top 10 lists -->
                                <div class="mdl-grid">
                                    <h2>बिचार/ब्लग</h2>
                                    <?php $testi = json_decode(get_testimonial_with_limit());
                                        foreach ($testi as $t) { ?>
                                        <div class="profilePiccard mdl-cell mdl-cell--12-col">
                                            <div class="mdl-grid" style="margin-bottom: -40px;">
                                                <div class="profilePiccard mdl-cell mdl-cell--12-col mdl-cell--12-col-tablet" style="margin-top: 0px;margin-bottom: 0px;">
                                                    <div class="mdl-grid">
                                                        <div class="mdl-cell mdl-cell--2-col mdl-cell--2-col-tablet">
                                                            <img src="<?php echo base_url();?>uploads/testimonial/thumb/<?php echo $t->pic;?>" align="left" width="50px" height="50px">
                                                        </div>
                                                        <div class="mdl-cell mdl-cell--10-col mdl-cell--10-col-tablet" style="padding:0px; margin:0px">
                                                            <div style="font-size:12px"> - <a class="title-link" href="<?php echo base_url('newsdetail/'.$t->id)?>"><?php echo $t->detail;?></a></div>
                                                        </div>
                                                    </div>
                                                </div>
                                                
                                            </div>
                                        </div>
                                            
                                    <?php }
                                    ?>
                                    

                                </div>  
                                <!-- top 10 lisst ends -->
                            </div>

                            <div class="profile-page top-lists mdl-cell mdl-cell--3-col mdl-cell--12-col-tablet mdl-shadow--4dp mdl-cell--hide-phone"  style="min-height:453px">            
                                <!-- top 10 lists -->
                                <div class="mdl-grid">
                                    <?php 
                                        $side_adds = json_decode(get_top_side_adds());
                                        foreach ($side_adds as $sa) { ?>
                                            <div class="mdl-cell mdl-cell--12-col mdl-cell--12-col-tablet profileContainer-list mdl-grid"  style="margin: auto;padding: 0 15px 0 15px;">
                                                <a href="<?php echo $sa->add_link;?>"><img src="uploads/add/<?php echo $sa->add_doc?>" class="sideadd"></a>
                                            </div>        
                                    <?php } ?>
                                </div>  
                                <!-- top 10 lisst ends -->
                            </div>


                        </div>
                    </div>
                </div>
            </div>

            <?php get_top_bottom_add('home_middle');?>
            
            <!-- page contents starts from here -->
            <div class="container2">
                <div class="mdl-grid">
                    <div class="mdl-cell mdl-cell--9-col mdl-cell--12-col-tablet mdl-cell--12-col-phone">
                        <div class="mdl-cell mdl-cell--12-col mdl-cell--12-col-tablet mdl-cell--12-col-phone">
                            <div class="mdl-grid news-container">
                            <?php $categories = json_decode(get_categories());
                                foreach ($categories as $cat) { ?>
                                <!-- loop start -->
                                <?php $check_news = json_decode(get_top_news_by_category($cat->cat_id));
                                    if(count($check_news) > 0){
                                ?>
                                <div class="profile-page mdl-cell mdl-cell--6-col mdl-cell--12-col-tablet shop-bg mdl-shadow--4dp mdl-cell--12-col-phone">
                                    <h1><a href="<?php echo base_url("category/".$cat->cat_id)?>"><?php get_category_name($cat->cat_id)?></a> <span></span></h1>
                                    <div class="mdl-grid">
                                    <?php 
                                        $top_news = json_decode(get_top_news_by_category($cat->cat_id));
                                        if($top_news != NULL){ ?>
                                        <div class="profileContainer mdl-grid">
                                          <div class="profilePiccard mdl-cell mdl-cell--12-col">
                                            <h3 class="profile-shopname"><a href="<?php echo base_url('newsdetail/'.$top_news->news_id)?>"><?php echo $top_news->news_heading;?></a></h3>
                                            <img src="uploads/news/thumb/<?php echo $top_news->news_image;?>">
                                            <p>
                                                <?php echo word_limiter($top_news->news_description, 20);?>
                                            </p>
                                          </div>
                                        </div>
                                        <?php } ?>

                                        <?php 
                                            if($top_news != NULL){
                                                $top_five =  json_decode(get_limited_news_by_category_except_id($cat->cat_id, $top_news->news_id, 5));
                                            }else{
                                                $top_five =  json_decode(get_limited_news_by_category($cat->cat_id, 5));
                                            }
                                        ?>
                                        <?php 
                                            foreach ($top_five as $tf) { ?>
                                            <div class="profileContainer-list mdl-grid">
                                                <h4 class="profile-shopname-title"><a href ="<?php echo base_url('newsdetail/'.$tf->news_id)?>"><i class="fa fa-quote-left"></i>&nbsp; <?php echo $tf->news_heading;?> </a></h4>
                                            </div>        
                                        <?php }?>
                                    </div>  
                                    <p class="readmore">
                                        <a href="<?php echo base_url("category/".$cat->cat_id)?>" class="mdl-button mdl-js-button mdl-button--accent">
                                          Read More
                                        </a>
                                    </p>
                                </div>
                                <!-- loop ends -->
                                <?php } ?>
                            <?php } ?>

                            <!-- images  -->
                            <div class="profile-page mdl-cell mdl-cell--12-col mdl-cell--12-col-tablet shop-bg mdl-shadow--4dp mdl-cell--12-col-phone">
                                    <h1><a href="<?php echo base_url("images/")?>">नवीनतम तस्बिरहरू</a> <span></span></h1><br>
                                    <div class="mdl-grid">
                                        <?php $latest_images = json_decode(get_latest_images());
                                            foreach ($latest_images as $li) { ?>
                                            
                                            <div class="profilePiccard mdl-cell mdl-cell--3-col mdl-shadow--4dp">
                                                <a href="<?php echo base_url('images/').'/'.$li->gall_id?>"><img data-title="<?php echo $li->caption;?>" alt="<?php echo $li->caption;?>" title="<?php echo $li->caption;?>" src="<?php echo base_url('uploads/gallery/thumb/'.$li->image_name)?>" class="mdl-card__media"></a>
                                                <p class="caption"><a class="video_link" href="<?php echo base_url('images/').'/'.$li->gall_id?>"><?php echo $li->caption;?></a></p>
                                              </div>  

                                        <?php }
                                        ?>

                                    </div>  
                                    <p class="readmore">
                                        <a href="<?php echo base_url("images/")?>" class="mdl-button mdl-js-button mdl-button--accent">
                                          View All
                                        </a>
                                    </p>
                                </div>
                            <!-- images ends -->

                            <!-- videos  -->
                            <div class="profile-page mdl-cell mdl-cell--12-col mdl-cell--12-col-tablet shop-bg mdl-shadow--4dp mdl-cell--12-col-phone">
                                    <h1><a href="<?php echo base_url("videos/")?>">नवीनतम भिडियो</a> <span></span></h1><br>
                                    <div class="mdl-grid">
                                        <?php $latest_vidoes = json_decode(get_latest_videos());
                                            foreach ($latest_vidoes as $lv) { ?>
                                            
                                            <div class="profilePiccard mdl-cell mdl-cell--3-col mdl-shadow--4dp">
                                                <a href="<?php echo base_url('videos/').'/'.$lv->gall_id?>">
                                                <iframe class="embed-responsive-item" src="//www.youtube.com/embed/<?php echo $lv->video;?>"></iframe>
                                                </a>
                                                <p class="caption"><a class="video_link" href="<?php echo base_url('videos/').'/'.$lv->gall_id?>"><?php echo $lv->title;?></a></p>
                                              </div>  

                                        <?php }
                                        ?>

                                    </div>  
                                    <p class="readmore">
                                        <a href="<?php echo base_url("videos/")?>" class="mdl-button mdl-js-button mdl-button--accent">
                                          View All
                                        </a>
                                    </p>
                                </div>
                            <!-- videos ends -->

                                

                                
                            </div>
                        </div>
                    </div>
                    <!-- advertisement -->
                    <div class="mdl-cell mdl-cell--3-col mdl-cell--12-col-tablet mdl-cell--12-col-phone">
                        <div class="profile-page top-lists mdl-cell mdl-cell--12-col mdl-cell--12-col-tablet mdl-shadow--4dp mdl-cell--12-col-phone">            
                        <h1><a href="#">Advertisement</a> <span></span></h1>
                            <div class="mdl-grid">
                                <?php 
                                    $side_adds = json_decode(get_side_adds());
                                    foreach ($side_adds as $sa) { ?>
                                        <div class="mdl-cell mdl-cell--12-col mdl-cell--12-col-tablet profileContainer-list mdl-grid">
                                            <a href="<?php echo $sa->add_link;?>"><img src="uploads/add/<?php echo $sa->add_doc?>" class="sideadd"></a>
                                        </div>        
                                <?php } ?>
                            </div>  
                            <br>
                            <!-- <div class="fb-page" data-href="https://www.facebook.com/facebook" data-small-header="true" data-adapt-container-width="true" data-hide-cover="true" data-show-facepile="true" data-show-posts="true"><div class="fb-xfbml-parse-ignore"><blockquote cite="https://www.facebook.com/facebook"><a href="https://www.facebook.com/facebook">Facebook</a></blockquote></div></div> -->
                        <!-- top 10 lisst ends -->
                    </div>
                    </div>
                </div>
            </div>
            <!-- page contents ends from here -->

            <?php get_top_bottom_add('home_down');?>




            