
    <!------------------------------------------------ List Portion of the CMS ----------------------------------------------------------------------------- -->        
            <div class="span9">
                <div class="well">
                    <h3>Edit event</h3>
                    <hr>
					 <?php $attributes = array('class' => 'form-horizontal');
                     echo form_open('about/update',$attributes); ?>

                    <?php if(isset($records)) : foreach($records as $row) : ?>
                    
                    <div class="control-group hidden">
                        <label class="control-label" for="about_id">Latest ID:</label>    
                        <div class="controls">
                          <input  class="span5" type="text" name="about_id" id="about_id" value="<?php echo $row -> about_id; ?>" required/>
                        </div>
                    </div>
                    
                    <div class="control-group">
                        <label class="control-label" for="about_name">About Title:</label>    
                        <div class="controls">
                          <input class="span8" type="text" name="about_name"  maxlength="250" id="about_name" value="<?php echo $row -> about_name; ?>" required/>
                        </div>
                    </div>
                    
                    
                    <div class="control-group">
                        <label class="control-label" for="about_desc">About Detail:</label>    
                        <div class="controls">
                          <textarea rows="8" class="span10 ckeditor"  name="about_desc" id="about_desc"><?php echo $row -> about_desc; ?></textarea>
                        </div>
                    </div>
                    
                    
                    <div class="control-group">
                        <label class="control-label" for="about_status">About Status</label>    
                        <div class="controls">
                          <?php
                                $options = array(
                                    '1' => 'Active',
                                    '0' => 'Unactive',
                                );
                                $so_type = $row -> about_status;
                                echo form_dropdown('about_status',  $options, $so_type);
                            ?>
                        </div>
                    </div>
					
                    <!-- <hr />
                    <h3>在中國</h3>
                     <div class="control-group">
                        <label class="control-label" for="ch_about_name">關於標題:</label>    
                        <div class="controls">
                          <input type="text"  class="span5" name="ch_about_name" value="<?php echo $row->ch_about_name?>" id="ch_about_name" min="15">
                        </div>
                    </div>
                    
                    <div class="control-group">
                        <label class="control-label" for="ch_about_desc">關於說明:</label>    
                        <div class="controls">
                          <textarea type="text" class="span10" name="ch_about_desc" id="ch_about_desc" rows="8"  title="Are not this detail is too short"><?php echo $row->ch_about_desc?></textarea>
                        </div> -->
				
                    
                    <p align="center">
                      <button type="submit" class="btn">Update</button>
                      
                    </p>
                    <?php echo form_close(); ?>
					<?php endforeach; ?>
                
                <?php else : ?>
                <?php endif; ?>
                </div>
			</div>