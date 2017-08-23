    <!------------------------------------------------ List Portion of the CMS -------------------------------------------------------------------->        
            <div class="span9 hero-unit">
                <div class="well">
                    <h3>Add Details</h3>
                     <?php $attributes = array('class' => 'form-horizontal');
                     echo form_open('topadd/update',$attributes); ?>

                    <?php if(isset($records)) : foreach($records as $row) : ?>
                    
                    <div class="control-group hidden">
                        <label class="control-label hidden" for="add_id">Add Name:</label>    
                        <div class="controls">
                          <input type="text" name="add_id" id="add_id" value="<?php echo $row->add_id?>" title="Where is add name?" maxlength="250" required/>
                        </div>
                    </div>
                    
                    <div class="control-group">
                        <label class="control-label" for="add_name">Add Name:</label>    
                        <div class="controls">
                          <input type="text" name="add_name" id="add_name" value="<?php echo $row->add_name?>" title="Where is add name?" maxlength="250" required/>
                        </div>
                    </div>
                    
                    <div class="control-group">
                        <label class="control-label" for="add_contact">Contact Number:</label>    
                        <div class="controls">
                          <input type="text" value="<?php echo $row->add_contact ?>" title="Telephone Format: 977-9804552309" name="add_contact" id="add_contact" maxlength="15" required/>
                        </div>
                    </div>
                    
                    
                    
                    
                    <div class="control-group">
                        <label class="control-label" for="add_url">Add URL:</label>    
                        <div class="controls">
                          <input type="url" name="add_url" value="<?php echo $row->add_link?>" id="add_url" title="where is add url?" maxlength="250" required/>
                        </div>
                    </div>
                    
                    <div class="control-group">
                        <label class="control-label" for="add_rate">Add Rate:</label>    
                        <div class="controls">
                          <input type="text" name="add_rate" value="<?php echo $row->add_rate?>" id="add_rate"  title="Enter add rate?" maxlength="25" required/>
                        </div>
                    </div>
                    
                    
                    
                     <div class="control-group">
                        <label class="control-label" for="add_for">Add For (Months):</label>    
                        <div class="controls">
                          <input type="number" max="36" min="1" value="<?php echo $row->add_added_for?>" name="add_for" id="add_for" title="Enter months in number?" maxlength="25" required/>
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