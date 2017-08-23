

    
    <!------------------------------- List Portion of the CMS ------------------------------------------------------>        
            <div class="span9">
                <div class="well <?php if(!isset($error)) echo "hidden";?>"><?php if(isset($error)) echo $error;?></div>
              <div class="well">
                    <h3>Add Video's to the gallery</h3>  
                <?php $onclick = array('onclick'=>"return confirm('Are you sure to delete this Image?')");?>                  
                <?php $attributes = array('class' => 'form-horizontal');
                     echo form_open_multipart('vgallery/uploadpic',$attributes); ?>
 
                        <div class="control-group hidden">
                                <label class="control-label" for="gall_id">Select the Picture:</label>    
                                <div class="controls">
                                  <input type="text" name="gall_id" id="gall_id" value="<?php echo $this->uri->segment(3);?>" required/>
                                </div>
                        </div>

                        <div class="control-group">
                                <label class="control-label" for="pic">Video Title:</label>    
                                <div class="controls">
                                  <input class="span8" type="text" name="title" id="title" required/>
                                </div>
                        </div>

                        <div class="control-group">
                                <label class="control-label" for="pic">Cover Image:</label>    
                                <div class="controls">
                                  <input class="span8" type="file" name="cover" id="cover" required/>
                                </div>
                        </div>
                        
                        <div class="control-group">
                                <label class="control-label" for="pic">Enter the link for youtube:</label>    
                                <div class="controls">
                                  <input class="span8" type="url" name="url" id="url" required/>
                                </div>
                        </div>
       
                        <p align="center">
                          <button type="submit" class="btn">Upload</button>  
                        </p>
					
                    <?php echo form_close(); ?>
                </div>
                <div class="well">
                <div class="row">
                  <div class="span12">
                
                <?php if(isset($records)) : foreach($records as $row) : ?>
                  <div class="embed-responsive embed-responsive-4by3" style="padding:10px;">
                    <p><?php echo $row->title;?></p>
                    <iframe class="embed-responsive-item" src="//www.youtube.com/embed/<?php echo $row->video; ?>"></iframe>
                    <p><a href="<?php echo base_url('vgallery/delete_individual_image').'/'.$row->gall_vid_id.'/'.$row->gall_id;?>">Delete</a></p>
                    <hr>
                  </div>
                  <?php endforeach; ?>

                  <?php else: ?>
      				  	  <div class="span2">No videos uploaded yet!</div>
                  <?php endif;?> 
                  </div>
                </div>
                </div>