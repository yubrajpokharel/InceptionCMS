<style type="text/css">
  .caption{
    color: #009688;
    font-size: 12px;
  }
</style>

    <main class="mdl-layout__content">
        <div class="page-content">
            <!-- page contents starts from here -->
            <div class="container">
                <div class="mdl-grid">
                    <div class="mdl-cell mdl-cell--9-col mdl-cell--12-col-tablet mdl-cell--12-col-phone">
                        <div class="mdl-grid news-container">
                            
                            <div class="profile-page mdl-cell mdl-cell--12-col mdl-cell--12-col-tablet shop-bg mdl-shadow--4dp mdl-cell--12-col-phone">
                                <h1><a>भिडियो</a> <span></span></h1>
                                <br>
                                <div class="mdl-grid">

                                    <div class="profileContainer mdl-grid noborder">
                                    <?php 
                                      $galleries = json_decode(get_video_gallery_list());
                                      if(count($galleries) > 0){
                                        foreach ($galleries as $g) { 
                                        $image_list = json_decode(get_ind_video_gallery_videos_list_with_limit($g->gall_id, 1));
                                      ?>

                                          <div class="profilePiccard mdl-cell mdl-cell--4-col mdl-shadow--4dp">
                                            
                                            <a href="<?php echo base_url('videos/').'/'.$g->gall_id?>"><img src="<?php echo base_url('uploads/gallery/videos/'.$image_list->image)?>" class="mdl-card__media"></a>
                                            <p class="caption"><?php echo $g->gall_name;?></p>
                                          </div>  
                                      <?php } 
                                      }else{
                                        echo "भिडियोहरू छैन ";
                                      }
                                    ?>

                                    </div>
                                </div>    
                            </div>
                        </div>
                    </div>

            		<div class="profile-page top-lists mdl-cell mdl-cell--3-col mdl-cell--12-col-tablet mdl-shadow--4dp mdl-cell--12-col-phone">            
                        <!-- top 10 lists -->
                        <div class="mdl-grid">
                            <h1><a>मुख्य खबर</a> <span></span></h1>
                            <?php 
                              $headline = json_decode(get_top_headline());
                              foreach ($headline as $head) { ?>
                                <div class="mdl-cell mdl-cell--12-col profileContainer-list mdl-grid">
                                  <h4 class="profile-shopname-title"><a href ="<?php echo base_url('newsdetail/'.$head->news_id)?>"><i class="fa fa-bolt headline"></i>&nbsp; <?php echo $head->news_heading;?> </a></h4>
                              </div>
                            <?php } ?>
                        </div>  
                        <!-- top 10 lisst ends -->
                    </div>
                </div>
            </div>