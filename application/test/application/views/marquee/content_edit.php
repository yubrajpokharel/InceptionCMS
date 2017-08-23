
    <!------------------------------------------------ List Portion of the CMS ------------------------------------------------------------------------------->        
            <div class="span9 hero-unit">
                <div class="well">
                    <h3>Edit Marquee</h3>
					 <?php $attributes = array('class' => 'form-horizontal');
                     echo form_open('marquee/update',$attributes); ?>

                    <?php if(isset($records)) : foreach($records as $row) : ?>
                    
                    <div class="control-group hidden">
                        <label class="control-label" for="marquee_id">ID:</label>    
                        <div class="controls">
                          <input type="text"  class="span5" name="marquee_id" id="marquee_id" value="<?php echo $row->marquee_id?>" required min="15">
                        </div>
                    </div>
                    
                    <div class="control-group">
                        <label class="control-label" for="marquee_name">Enter Name:</label>    
                        <div class="controls">
                          <input type="text"  class="span5" name="marquee_name" id="marquee_name" value="<?php echo $row->contact_name?>" required min="15">
                        </div>
                    </div>
                    
                    <!-- <div class="control-group">
                        <label class="control-label" for="contact_number">Contact Number:</label>    
                        <div class="controls">
                          <input type="tel" pattern="[0-9]{3}-[0-9]{10}" title="Telephone Format: 977-9804552309" name="contact_number" id="contact_number" maxlength="15"  value="<?php echo $row->contact_number?>"/>
                        </div>
                    </div> -->
                    
                    <div class="control-group">
                        <label class="control-label" for="marquee_desc">Enter Text:</label>    
                        <div class="controls">
                          <textarea type="text" class="span8" name="marquee_desc" id="marquee_desc" rows="5"  title="Are not this detail is too short" required> <?php echo $row->marquee_text?></textarea>
                        </div>
                    </div>
                    
                    
                    <div class="control-group">
                        <label class="control-label" for="service_status">Marquee Status</label>    
                        <div class="controls">
                          <?php
                                $options = array(
                                    '1' => 'Active',
                                    '0' => 'Unactive',
                                );
                                $so_type = $row -> marquee_status;
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