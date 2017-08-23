
    <!------------------------------------------------ List Portion of the CMS ------------------------------------------------------------------------------>        
            <div class="span9">
                <div class="well">
                    <h3>Edit News</h3>
					 <?php $attributes = array('class' => 'form-horizontal');
                     echo form_open('services/update',$attributes); ?>

                    <?php if(isset($records)) : foreach($records as $row) : ?>
                    
                    <div class="control-group hidden">
                        <label class="control-label" for="service_id">Service ID:</label>    
                        <div class="controls">
                          <input  class="span5" type="text" name="service_id" id="service_id" value="<?php echo $row -> service_id; ?>" required/>
                        </div>
                    </div>
                    
                    <div class="control-group">
                        <label class="control-label" for="service_name">Newa Title:</label>    
                        <div class="controls">
                          <input class="span5" type="text" name="service_name" id="service_name" value="<?php echo $row -> service_name; ?>" required/>
                        </div>
                    </div>
                    
                    
                    <div class="control-group">
                        <label class="control-label" for="service_desc">News Detail:</label>    
                        <div class="controls">
                          <textarea rows="8" class="span10 ckeditor"  name="service_desc" id="service_desc"><?php echo $row -> service_desc; ?></textarea>
                        </div>
                    </div>
                    
                    
                    <div class="control-group">
                        <label class="control-label" for="service_status">Service Status</label>    
                        <div class="controls">
                          <?php
                                $options = array(
                                    '1' => 'Active',
                                    '0' => 'Unactive',
                                );
                                $so_type = $row -> service_status;
                                echo form_dropdown('service_status',  $options, $so_type);
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