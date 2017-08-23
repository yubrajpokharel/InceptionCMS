
    <main class="mdl-layout__content">
        <div class="page-content">

            <?php get_top_bottom_add($add_up);?>

            

            <!-- page contents starts from here -->
            <div class="container">
                <div class="mdl-grid">
                    <div class="mdl-cell mdl-cell--9-col mdl-cell--12-col-tablet mdl-cell--12-col-phone">
                        <div class="mdl-grid news-container">
                            
                            <div class="profile-page mdl-cell mdl-cell--12-col mdl-cell--12-col-tablet shop-bg mdl-shadow--4dp mdl-cell--12-col-phone">
                                <h1 itemprop="name"><?php echo $news->detail;?></h1>
                                <div class="mdl-grid">
                                    <div class="profileContainer mdl-grid noborder">
                                      <div class="profilePiccard mdl-cell mdl-cell--12-col mdl-shadow--4dp">
                                              <?php 
                                                if($news->pic != ''){ ?>    
                                                  <img itemprop="image" src="<?php echo base_url();?>uploads/testimonial/<?php echo $news->pic;?>" class="mdl-card__media img-responsive" title="<?php echo $news->detail;?>" alt="<?php echo $news->detail;?>">
                                              <?php  } ?>
                                                <p itemprop="description"><?php echo $news->text;?></p>
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
                            </div>
                        </div>
                    </div>

            		<div class="profile-page top-lists mdl-cell mdl-cell--3-col mdl-cell--12-col-tablet mdl-shadow--4dp mdl-cell--12-col-phone">            
                        <!-- top 10 lists -->
                        <div class="mdl-grid">
                            
                            <h2>सम्बन्धित समाचार</h2>
                            <?php foreach ($similar_news as $sn) { ?>
                            <div class="mdl-cell mdl-cell--12-col profileContainer-list mdl-grid">
                                <h4 class="profile-shopname-title"><a href ="<?php echo base_url('newsdetail/'.$sn->news_id)?>"><i class="fa fa-quote-left"></i>&nbsp;  <?php echo $sn->news_heading;?> </a></h4>
                            </div>
                            <?php } ?>

                        </div>  
                        <!-- top 10 lisst ends -->
                    </div>
                </div>
            </div>

            <?php get_top_bottom_add($add_down);?>