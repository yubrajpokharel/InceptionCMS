
    <!------------------------------------------------ List Portion of the CMS ------------------------------------------------------------------>        
            <div class="span9">
                <div class="well">
                    <h3>Edit Blog</h3>
					 <?php $attributes = array('class' => 'form-horizontal');
                     echo form_open('testimonial/update',$attributes); ?>

                    <?php if(isset($records)) : foreach($records as $row) : ?>
                    
                    <div class="control-group hidden">
                        <label class="control-label" for="id">ID:</label>    
                        <div class="controls">
                          <input type="text"  class="span5" name="id" id="id" value="<?php echo $row->id?>" required min="15">
                        </div>
                    </div>

                    
                    <div class="control-group">
                        <label class="control-label" for="marquee_name">Enter Name:</label>    
                        <div class="controls">
                          <input type="text"  class="span8" name="name" id="name" value="<?php echo $row->contact_name?>" required min="5">
                        </div>
                    </div>
                    
                    <div class="control-group">
                        <label class="control-label" for="detail">Enter Post:</label>    
                        <div class="controls">
                          <input type="text"  class="span8" name="detail" id="detail" value="<?php echo $row->detail?>" required>
                        </div>
                    </div>
                    
                    <div class="control-group">
                        <label class="control-label" for="desc">Enter Text:</label>    
                        <div class="controls">
                          <textarea type="text" class="span8 ckeditor" name="desc" id="desc" rows="5"  title="Are not this detail is too short" required> <?php echo $row->text?></textarea>
                        </div>
                    </div>
                    
                    
                    <div class="control-group">
                        <label class="control-label" for="service_status">Status</label>    
                        <div class="controls">
                          <?php
                                $options = array(
                                    '1' => 'Active',
                                    '0' => 'Unactive',
                                );
                                $so_type = $row -> status;
                                echo form_dropdown('status',  $options, $so_type);
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