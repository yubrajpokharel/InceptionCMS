   
    <!-------------------------------------------- List Portion of the CMS ---------------------------------------------------------------------->        
            <div class="span8 offset2"> 
                <div class="row-fluid">
                	<div class="well span6 text-center">
                    	<p>Staff's Controller</p>
                    	<a href="<?php echo base_url();?>staff" class="btn btn-large btn-block btn-primary" type="button" href="">Enter</a>
                    </div>
                    <div class="well span6 text-center">
                    	<p>Event's Controller</p>
                    	<a href="<?php echo base_url();?>events" class="btn btn-large btn-block btn-primary" type="button" href="">Enter</a>
                    </div>
                 </div>
                 
                 <div class="row-fluid">
                    <div class="well span6 text-center">
                    	<p>Gallery's Controller</p>
                    	<a href="<?php echo base_url();?>gallery" class="btn btn-large btn-block btn-primary" type="button" href="">Enter</a>
                    </div>
                    <div class="well span6 text-center">
                    	<p>Social's Controller</p>
                    	<a href="<?php echo base_url();?>social" class="btn btn-large btn-block btn-primary" type="button" href="">Enter</a>
                    </div>
                </div>
                
                <div class="row-fluid"  text-center" align="center">
                    <div class="well span6 offset3 text-center">
                    	<p>Latest News</p>
                    	<a href="<?php echo base_url();?>latest" class="btn btn-large btn-block btn-primary" type="button" href="">Enter</a>
                    </div>
                </div>    
                
                <div class="row-fluid text-center" align="center">
                	<div class="well span6 offset3 text-center">
                    <a href="<?php echo base_url();?>staff/logout" class="btn btn-large btn-block btn-danger" type="button" href="">Logout</a>
                    </div>
                </div>
            </div>
            <br />
            <div class="span8 offset2 hero-unit">
            	
            	<?php if(isset($records)) : foreach($records as $row) : ?>
                
                	<?php echo '<p style="font-size:14px; " class="text-info">
						Tracker_ID [ '.$row->id." ] -> ".$row -> record_desc.' 
						&nbsp;&nbsp;&nbsp; at &nbsp;&nbsp;[ '.$row->record_date.' ]</p>'; ?>
              
  
                    <?php endforeach; ?>
                <?php else : ?>
  
                <?php endif; ?>
                  
            </div>