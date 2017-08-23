<style type="text/css">
    .profile-shopname{
    margin-top: 0px !important;
    margin-bottom: 0px !important;
  }
</style>

  <!-- contents -->
    <main class="mdl-layout__content">
        <div class="page-content">

           <?php get_top_bottom_add($add_up);?>

            <!-- page contents starts from here -->
            <div class="container">
                <div class="mdl-grid">
                    <div class="mdl-cell mdl-cell--9-col mdl-cell--12-col-tablet mdl-cell--12-col-phone">
                        <div class="mdl-grid news-container">
                            
                            <div class="profile-page mdl-cell mdl-cell--12-col mdl-cell--12-col-tablet shop-bg mdl-shadow--4dp mdl-cell--12-col-phone">
                                <h1><a href="#">बिचार/ब्लग</a> <span></span></h1>
                                <div class="mdl-grid">
                                    <div class="profileContainer mdl-grid">
                                        <?php foreach ($results as $r) { ?>  
                                          <div class="profilePiccard mdl-cell mdl-cell--12-col mdl-shadow--4dp">
                                            <div class="mdl-grid">
                                                <div class="profilePiccard mdl-cell mdl-cell--2-col mdl-cell--2-col-tablet">
                                                    <img src="<?php echo base_url();?>uploads/testimonial/thumb/<?php echo $r->pic;?>" class="indi-image">
                                                </div>
                                                <div class="profilePiccard mdl-cell mdl-cell--10-col mdl-cell--10-col-tablet">
                                                    <h3 class="profile-shopname"><a class="title-link" href="<?php echo base_url('blogdetail/'.$r->id)?>"><?php echo $r->detail;?></a></h3>
                                                    <?php echo word_limiter($r->text, 25);?>
                                                </div>
                                            </div>
                                          </div>
                                        <?php }?>
                                    </div> 
                                    <div align="center"><?php echo $pagination;?></div>
                                </div>
                            </div>
                        </div>
                    </div>

            		<div class="profile-page top-lists mdl-cell mdl-cell--3-col mdl-cell--12-col-tablet mdl-shadow--4dp mdl-cell--12-col-phone">            
                        <!-- top 10 lists -->
                        <div class="mdl-grid">
                            <h1><a href="#">Advertisement</a> <span></span></h1>
                            <div class="mdl-grid">
                                <?php 
                                    $side_adds = json_decode(get_side_adds());
                                    foreach ($side_adds as $sa) { ?>
                                        <div class="mdl-cell mdl-cell--12-col mdl-cell--12-col-tablet profileContainer-list mdl-grid">
                                            <a href="<?php echo $sa->add_link;?>"><img src="<?php echo base_url();?>uploads/add/<?php echo $sa->add_doc?>" class="sideadd"></a>
                                        </div>        
                                <?php } ?>
                            </div>  
                        </div>  
                        
                        <!-- top 10 lisst ends -->
                    </div>

                </div>
            </div>

            <?php get_top_bottom_add($add_down);?>

            

           

