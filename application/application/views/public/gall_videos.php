
    <main class="mdl-layout__content">
        <div class="page-content">
            <!-- page contents starts from here -->
            <div class="container">
                <div class="mdl-grid">
                    <div class="mdl-cell mdl-cell--9-col mdl-cell--12-col-tablet mdl-cell--12-col-phone">
                        <div class="mdl-grid news-container">
                            
                            <div class="profile-page mdl-cell mdl-cell--12-col mdl-cell--12-col-tablet shop-bg mdl-shadow--4dp mdl-cell--12-col-phone">
                                <h1><a><?php echo $gall_name->gall_name;?></a> <span></span></h1>
                                <br>
                                <div class="mdl-grid">

                                    <div class="profileContainer mdl-grid noborder">
                                    <?php 
                                      if(count($images) > 0){
                                        foreach ($images as $g) { 
                                      ?>
                                          <div class="profilePiccard mdl-cell mdl-cell--4-col mdl-shadow--4dp">
                                            
                                              
                                              <iframe class="embed-responsive-item" src="//www.youtube.com/embed/<?php echo $g->video;?>"></iframe>

                                            
                                          </div>  
                                      <?php } 
                                      }else{
                                        echo "तस्बिरहरू छैन ";
                                      }
                                    ?>
                                    <p><?php echo $gall_name->gall_desc;?></p>
                                    </div>

                                </div>   

                                    <h5 class="comments">Comments</h5>
                                    <hr>
                                    <div style="padding:10px;" id="disqus_thread"></div>
                                    <script type="text/javascript">
                                        /* * * CONFIGURATION VARIABLES * * */
                                        var disqus_shortname = 'greenpapernepal';
                                        
                                        /* * * DON'T EDIT BELOW THIS LINE * * */
                                        (function() {
                                            var dsq = document.createElement('script'); dsq.type = 'text/javascript'; dsq.async = true;
                                            dsq.src = '//' + disqus_shortname + '.disqus.com/embed.js';
                                            (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(dsq);
                                        })();
                                    </script>
                                    <noscript>Please enable JavaScript to view the <a href="https://disqus.com/?ref_noscript" rel="nofollow">comments powered by Disqus.</a></noscript>
 
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