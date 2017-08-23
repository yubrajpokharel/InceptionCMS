<style type="text/css">
    .profile-shopname{
    margin-top: 0px !important;
    margin-bottom: 0px !important;
  }
</style>

  <!-- contents -->
    <main class="mdl-layout__content">
        <div class="page-content">

           

            <!-- page contents starts from here -->
            <div class="container">
                <div class="mdl-grid">
                    <div class="mdl-cell mdl-cell--9-col mdl-cell--12-col-tablet mdl-cell--12-col-phone">
                        <div class="mdl-grid news-container">
                            
                            <div class="profile-page mdl-cell mdl-cell--12-col mdl-cell--12-col-tablet shop-bg mdl-shadow--4dp mdl-cell--12-col-phone">
                                <h1><a href="#">PDF</a></h1>
                                <div class="mdl-grid">
                                    <div class="profileContainer mdl-grid">
                                        <?php $results = json_decode(get_notices());?>
                                        <?php foreach ($results as $row) { ?>  
                                          <div class="profilePiccard mdl-cell mdl-cell--12-col mdl-shadow--4dp">
                                            <div class="mdl-grid">
                                                
                                                <div class="profilePiccard mdl-cell mdl-cell--12-col mdl-cell--12-col-tablet">
                                                    <h3 class="profile-shopname"><a target="_blank" class="title-link" href="<?php echo base_url();?>uploads/attachments/<?php echo $row->latest_attach; ?>"><?php echo $row -> notice_name; ?></a></h3>
                                                </div>
                                            </div>
                                          </div>
                                        <?php }?>
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

            

            

           

