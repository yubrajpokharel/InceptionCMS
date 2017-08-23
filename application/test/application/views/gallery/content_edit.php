
    <!------------------------------------------------ List Portion of the CMS ------------------------------------------------------------------>        
            <div class="span9">
                <div class="well">
                    <h3>Edit event</h3>
					 <?php $attributes = array('class' => 'form-horizontal');
                     echo form_open('gallery/update',$attributes); ?>

                    <?php if(isset($records)) : foreach($records as $row) : ?>
                    
                    <div class="control-group hidden">
                        <label class="control-label" for="gall_id">Gallery ID:</label>    
                        <div class="controls">
                          <input  class="span5" type="text" name="gall_id" id="gall_id" value="<?php echo $row -> gall_id; ?>" required/>
                        </div>
                    </div>
                    
                    <div class="control-group">
                        <label class="control-label" for="gall_name">Gallery Name:</label>    
                        <div class="controls">
                          <input class="span5" type="text" name="gall_name" id="gall_name" value="<?php echo $row -> gall_name; ?>" required/>
                        </div>
                    </div>
                    
                    
                    <div class="control-group">
                        <label class="control-label" for="gall_desc">Gallery Detail:</label>    
                        <div class="controls">
                          <textarea rows="8" class="span10"  name="gall_desc" id="gall_desc"><?php echo $row -> gall_desc; ?></textarea>
                        </div>
                    </div>

                    
                    <!-- <div class="control-group">
                        <label class="control-label" for="gall_type">Gallery Type:</label>    
                        <div class="controls">
                          <?php
                                $options = array(
                                    'Annual' => 'Annual',
                                    'Sports' => 'Sports',
									'Outdoor' => 'Outdoor',
									'Conference' => 'Conferences',
									'Extra' => 'Extra Activities'
                                );
                                $gall_type = $row -> gall_type;
                                echo form_dropdown('gall_type',  $options, $gall_type);
                            ?>
                        </div>
                    </div> -->
                    
                    <div class="control-group">
                        <label class="control-label" for="gall_status">Gallery Status</label>    
                        <div class="controls">
                          <?php
                                $options = array(
                                    '1' => 'Active',
                                    '0' => 'Unactive',
                                );
                                $so_type = $row -> gall_status;
                                echo form_dropdown('gall_status',  $options, $gall_type);
                            ?>
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