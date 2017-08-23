
    <!------------------------------------------------ List Portion of the CMS ------------------------------------------------------------------------------->        
            <div class="span9">
                <div class="well">
                    <h3>Edit event</h3>
					 <?php $attributes = array('class' => 'form-horizontal');
                     echo form_open('notice/update',$attributes); ?>

                    <?php if(isset($records)) : foreach($records as $row) : ?>
                    
                    <div class="control-group hidden">
                        <label class="control-label" for="latest_id">Notice ID:</label>    
                        <div class="controls">
                          <input  class="span5" type="text" name="latest_id" id="latest_id" value="<?php echo $row -> notice_id; ?>" required/>
                        </div>
                    </div>
                    
                    <div class="control-group">
                        <label class="control-label" for="latest_name">Notice Name:</label>    
                        <div class="controls">
                          <input class="span5" type="text" name="latest_name" id="latest_name" value="<?php echo $row -> notice_name; ?>" required/>
                        </div>
                    </div>
                    
                    
                    <div class="control-group">
                        <label class="control-label" for="latest_news">Notice Detail:</label>    
                        <div class="controls">
                          <textarea rows="8" class="span10"  name="latest_news" id="latest_news"><?php echo $row -> notice_detail; ?></textarea>
                        </div>
                    </div>
                    
                    <div class="control-group">
                        <label class="control-label" for="latest_date">Notice Date</label>    
                        <div class="controls">
                          <input  class="span5" type="date" name="latest_date" id="latest_date" value="<?php echo $row -> notice_date; ?>" required/>
                        </div>
                    </div>
                    
                    
                    
                    <div class="control-group">
                        <label class="control-label" for="event_status">Notice Status</label>    
                        <div class="controls">
                          <?php
                                $options = array(
                                    '1' => 'Active',
                                    '0' => 'Unactive',
                                );
                                $so_type = $row -> latest_status;
                                echo form_dropdown('latest_status',  $options, $so_type);
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