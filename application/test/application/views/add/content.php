
    
    <!------------------------------------- List Portion of the CMS ------------------------------------------------------------>        
            <div class="span9">
                <div class="well">
                    <h3>Create Top 3 Advertisement</h3>
					           <?php $attributes = array('class' => 'form-horizontal');
                     echo form_open_multipart('add/create',$attributes); ?>
                    
					          <div class="control-group">
                        <label class="control-label" for="add_name">Add Name:</label>    
                        <div class="controls">
                          <input type="text" name="add_name" id="add_name" title="Where is add name?" maxlength="250" required/>
                        </div>
                    </div>
                    
                    <div class="control-group">
                        <label class="control-label" for="add_contact">Contact Number:</label>    
                        <div class="controls">
                          <input type="text" title="Telephone Format: 977-9804552309" name="add_contact" id="add_contact" maxlength="15" required/>
                        </div>
                    </div>
                    
                    <div class="control-group">
                        <label class="control-label" for="add_url">Add URL:</label>    
                        <div class="controls">
                          <input type="url" name="add_url" id="add_url" title="where is add url?" maxlength="250" required/>
                        </div>
                    </div>

                    
                    
                    <div class="control-group">
                        <label class="control-label" for="add_rate">Add Rate:</label>    
                        <div class="controls">
                          <input type="text" name="add_rate" id="add_rate" title="Enter add rate?" maxlength="25" required/>
                        </div>
                    </div>
                    
                     <div class="control-group">
                        <label class="control-label" for="add_for">Add For (Months):</label>    
                        <div class="controls">
                          <input type="number" max="36" min="1" name="add_for" id="add_for" title="Enter months in number?" maxlength="25" required/>
                        </div>
                    </div>
                    
                    <div class="control-group">
                        <label class="control-label" for="add_pic">Select the Picture:</label>    
                        <div class="controls">
                          <input type="file" name="add_pic" id="add_pic" required/>
                        </div>
                    </div>
   
                    <p align="center">
                      <button type="submit" class="btn">Create</button>  
                    </p>
					
                    <?php echo form_close(); ?>
                </div>
                
            </div>