
    
    <!------------------------------------------------ List Portion of the CMS ---------------------------------------------------------------->        
            <div class="span9">
                <div class="well">
                    <h3>Create Advertisement</h3>
                    <hr>
					           <?php $attributes = array('class' => 'form-horizontal');
                     echo form_open_multipart('topadd/create',$attributes); ?>
                    
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
                        <label class="control-label" for="add_rate">Add Rate / Month:</label>    
                        <div class="controls">
                          <input type="number" name="add_rate" id="add_rate" min="1" title="where is add rate?" max="99999" required/>
                        </div>
                    </div>

                    <div class="control-group">
                        <label class="control-label" for="add_for">Add Duration (Months):</label>    
                        <div class="controls">
                          <input type="number" name="add_for" id="add_for" min="1" title="where is add duration?" max="12" required/>
                        </div>
                    </div>

                    <div class="control-group">
                        <label class="control-label" for="add_pic">Image:</label>    
                        <div class="controls">
                          <input type="file" name="add_pic" id="add_pic" title="where is add picture?" maxlength="250" required/>
                        </div>
                    </div>

                    <p align="center">
                      <button type="submit" class="btn">Create</button>
                    </p>

                </div>

                    
              