
    <!------------------------------------------------ List Portion of the CMS ---------------------------->        
            <div class="span9 hero-unit">
                <div class="well">
                    
					 <?php $attributes = array('class' => 'form-horizontal');
                     echo form_open('openinghours/update',$attributes); ?>

                    <?php if(isset($records)) : foreach($records as $row) : ?>
                    
                    <h3>Edit time for <?php echo $row->name?>  - Kallaroo</h3>

                    <div class="control-group hidden">
                        <label class="control-label" for="id">ID:</label>    
                        <div class="controls">
                          <input value="<?php echo $row->id?>" type="text" name="id" id="id" required="required" />
                        </div>
                    </div>

                    <div class="control-group">
                        <label class="control-label" for="day">Enter Name of the day:</label>    
                        <div class="controls">
                          <input value="<?php echo $row->name?>" type="text" name="day" id="day" required="required" />
                        </div>
                    </div>

                    <div class="control-group">
                        <label class="control-label" for="opening">Open at:</label>    
                        <div class="controls">
                          <input  value="<?php echo $row->opening?>" class="span2" type="time" name="opening" id="opening" required="required" />
                        </div>
                    </div>
                    
                    <div>
                        <label class="control-label" for="closing">Close at:</label>    
                        <div class="controls">
                          <input  value="<?php echo $row->closing?>" class="span2" type="time" name="closing" id="closing" required="required" />
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