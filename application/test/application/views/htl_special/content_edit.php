
    <!------------------------------------------------ List Portion of the CMS ------------------------------------------------------------>        
            <div class="span9 hero-unit">
                <div class="well">
                    <h3>Edit Package</h3>
					 <?php $attributes = array('class' => 'form-horizontal');
                     echo form_open('htl_special/update',$attributes); ?>

                    <?php if(isset($records)) : foreach($records as $row) : ?>
                    
                    <div class="control-group hidden">
                        <label class="control-label" for="category_id">Category ID:</label>    
                        <div class="controls">
                          <input  class="span5" type="text" name="category_id" id="category_id" value="<?php echo $row -> id; ?>" required/>
                        </div>
                    </div>
                    
                    <div class="control-group">
                        <label class="control-label" for="category_name">Package Name:</label>    
                        <div class="controls">
                          <input class="span5" type="text" name="category_name" id="category_name" value="<?php echo $row -> name; ?>" required/>
                        </div>
                    </div>

                    
                    
                    <div class="control-group">
                        <label class="control-label" for="category_desc">Package Detail:</label>    
                        <div class="controls">
                          <textarea rows="8" class="span10"  name="category_desc" id="category_desc"><?php echo $row ->desc; ?></textarea>
                        </div>
                    </div>
            
                    
                    
                    <div class="control-group">
                        <label class="control-label" for="category_status">Package Status</label>    
                        <div class="controls">
                          <?php
                                $options = array(
                                    '1' => 'Active',
                                    '0' => 'Unactive',
                                );
                                $so_type = $row -> status;
                                echo form_dropdown('category_status',  $options, $so_type);
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