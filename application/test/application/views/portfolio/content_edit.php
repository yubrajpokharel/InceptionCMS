
    <!------------------------------------------------ List Portion of the CMS ------------------------------------------------------------>        
            <div class="span9">
                <div class="well">
                    <h3>Edit Portfolio</h3>
					 <?php $attributes = array('class' => 'form-horizontal');
                     echo form_open('portfolio/update',$attributes); ?>

                    <?php if(isset($records)) : foreach($records as $row) : ?>
                    
                    <div class="control-group hidden">
                        <label class="control-label" for="id">ID:</label>    
                        <div class="controls">
                          <input  class="span5" type="text" name="id" id="id" value="<?php echo $row -> id; ?>" required/>
                        </div>
                    </div>
                    
                    <div class="control-group">
                        <label class="control-label" for="name">Portfolio Name:</label>    
                        <div class="controls">
                          <input class="span8" type="text" name="name" id="name" value="<?php echo $row -> name; ?>" required/>
                        </div>
                    </div>
                    
                    
                    <div class="control-group">
                        <label class="control-label" for="latest_news">Portfolio Detail:</label>    
                        <div class="controls">
                          <textarea rows="8" class="span10 ckeditor"  name="desc" id="desc"><?php echo $row -> desc; ?></textarea>
                        </div>
                    </div>
                    
                    
                    
                    
                    
                    <div class="control-group">
                        <label class="control-label" for="status">Portfolio Status</label>    
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