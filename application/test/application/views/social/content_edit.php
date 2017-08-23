
    <!------------------------------------------------ List Portion of the CMS ------------------------------------------------------------------------------->        
            <div class="span9">
                <div class="well">
                    <h3>Create Social Contact Link</h3>
					 <?php $attributes = array('class' => 'form-horizontal');
                     echo form_open('social/update',$attributes); ?>

                    <?php if(isset($records)) : foreach($records as $row) : ?>
                    
                    <div class="control-group">
                        <label class="control-label" for="so_id">Social ID:</label>    
                        <div class="controls">
                          <input type="text" name="so_id" id="so_id" disabled="disabled" value="<?php echo $row -> c_id; ?>" required/>
                        </div>
                    </div>
                    
                    <div class="control-group">
                        <label class="control-label" for="so_name">Select Social Network:</label>    
                        <div class="controls">
                          <?php
                                $options = array(
                                    'Facebook' => 'Facebook',
                                    'Google+' => 'Google+',
									'Twitter' => 'Twitter',
									'LinkedIn' => 'LinkedIn',
									'Qoura' => 'Quora'
                                );
                                $so_name = $row -> name;
                                echo form_dropdown('so_name', $options, $so_name);
                            ?>
                        </div>
                    </div>
                    
                    <div class="control-group">
                        <label class="control-label" for="so_link">Enter the link:</label>    
                        <div class="controls">
                          <input type="url" name="so_link" id="so_link" value="<?php echo $row -> link; ?>" required/>
                        </div>
                    </div>
					
				
                    
                    <p align="center">
                      <button type="submit" class="btn btn-success">Update</button>
                      
                    </p>
                    <?php echo form_close(); ?>
					<?php endforeach; ?>
                
                <?php else : ?>
                <?php endif; ?>
                </div>
			</div>