
    <!------------------------------------------------ List Portion of the CMS ----------------------------------------------------------------------------- -->        
            <div class="span9">
                <div class="well">
                    <h3>Edit event</h3>
					 <?php $attributes = array('class' => 'form-horizontal');
                     echo form_open('seo/update',$attributes); ?>

                    <?php if(isset($records)) : foreach($records as $row) : ?>
                    
                    <div class="control-group hidden">
                        <label class="control-label" for="seo_id">Latest ID:</label>    
                        <div class="controls">
                          <input  class="span5" type="text" name="seo_id" id="seo_id" value="<?php echo $row -> seo_id; ?>" required/>
                        </div>
                    </div>
                    
                    <div class="control-group">
                        <label class="control-label" for="page_title">Page Title:</label>    
                        <div class="controls">
                          <input class="span5" type="text" name="page_title" id="page_title" value="<?php echo $row -> page_title; ?>" required/>
                        </div>
                    </div>
                    
            
                    <div class="control-group">
                        <label class="control-label" for="page_keywords">Page Keywords:</label>    
                        <div class="controls">
                          <input class="span5" type="text" name="page_keywords" id="page_keywords" value="<?php echo $row -> page_keywords; ?>" required/>
                        </div>
                    </div>
                    
                    <div class="control-group">
                        <label class="control-label" for="page_desc">Page Description:</label>    
                        <div class="controls">
                          <textarea rows="3" class="span10"  name="page_desc" id="page_desc" maxlength = "140" min="25"><?php echo $row -> page_desc; ?></textarea>
                        </div>
                    </div>
                    
                    <div class="control-group">
                        <label class="control-label" for="page_developer">Page Developer:</label>    
                        <div class="controls">
                          <textarea rows="3" class="span10"  name="page_developer" id="page_developer"><?php echo $row -> page_developer; ?></textarea>
                        </div>
                    </div>
                    
                    <div class="control-group">
                        <label class="control-label" for="page_map">Page Map:</label>    
                        <div class="controls">
                          <textarea rows="3" class="span10"  name="page_map" id="page_map"><?php echo $row -> page_map; ?></textarea>
                        </div>
                    </div>
					
				
                    
                    <p align="center">
                      <button type="submit" class="btn">Update</button>
                      
                    </p>
                    <?php echo form_close(); ?>
					<?php endforeach; ?>
                
                <?php else : ?>
                <?php endif; ?>
                </div>
			</div>