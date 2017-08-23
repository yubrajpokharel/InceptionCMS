
    <!------------------------------------------------ List Portion of the CMS ----------------------------------------------------------------------------- -->        
            <div class="span9">
                <div class="well">
                    <h3>Update Site's Details</h3><br />
					 <?php $attributes = array('class' => 'form-horizontal');
                     echo form_open_multipart('details/update',$attributes); ?>

                    <?php if(isset($records)) : foreach($records as $row) : ?>

                     <div class="control-group hidden">
                        <label class="control-label" for="setup_id">setup_id</label>    
                        <div class="controls">
                          <input type="text" name="setup_id" id="setup_id" value="<?php echo $row->setup_id;?>" required/>
                        </div>
                    </div>
                    
                   <div class="control-group">
                        <label class="control-label" for="site_name">Site Name:</label>    
                        <div class="controls">
                          <input type="text" name="site_name" id="site_name" value="<?php echo $row->site_name;?>" title="Where is site name?" maxlength="25" required/>
                        </div>
                    </div>
                    
                    <div class="control-group">
                        <label class="control-label" for="country_name">Located Country:</label>    
                        <div class="controls">
                          <input type="text" name="country_name" id="country_name" value="<?php echo $row->comp_country;?>" title="where is Company Located such as NEPAL, USA etc.?" maxlength="25" required/>
                        </div>
                    </div>
                   
                    <div class="control-group">
                        <label class="control-label" for="city_name">Located City:</label>    
                        <div class="controls">
                          <input type="text" name="city_name" id="city_name" value="<?php echo $row->comp_city;?>" title="This company must be located in certain city? Didn't it?" maxlength="25" required/>
                        </div>
                    </div>
                    
                    <div class="control-group">
                        <label class="control-label" for="street_name">Located Street:</label>    
                        <div class="controls">
                          <input type="text" name="street_name" id="street_name" value="<?php echo $row->comp_street;?>" title="This company must belong to certain street? Didn't it?" maxlength="25" required/>
                        </div>
                    </div>
                    
                    <div class="control-group">
                        <label class="control-label" for="email_address">Email Address:</label>    
                        <div class="controls">
                          <input type="email" name="email_address" id="email_address" value="<?php echo $row->comp_email;?>" title="E-mail Format: abc@xyz.com " required/>
                        </div>
                    </div>
                    
                    <div class="control-group">
                        <label class="control-label" for="contact_number">Landline Number:</label>    
                        <div class="controls">
                          <input type="tel" value="<?php echo $row->comp_landline;?>" pattern="[0-9]{3}-[0-9]{9}" title="Telephone Format: 977-9804552309" name="contact_number" id="contact_number" maxlength="15" required/>
                        </div>
                    </div>
                    
                    <div class="control-group">
                        <label class="control-label" for="mobile_number">Mobile Number:</label>    
                        <div class="controls">
                          <input type="tel" value="<?php echo $row->comp_mobile;?>" pattern="[0-9]{3}-[0-9]{10}" title="Mobile Number Format: 977-9804552309" name="mobile_number" id="mobile_number" maxlength="15" required/>
                        </div>
                    </div>
                   
                    <div class="control-group">
                        <label class="control-label" for="parking">Advertisement:</label>    
                        <div class="controls">
                          <textarea rows="8" class="span10 ckeditor" name="parking" id="parking" title="Where is Company Parking Description?" /><?php echo $row->ready;?></textarea>
                        </div>
                    </div>

                    <div class="control-group">
                        <label class="control-label" for="wheelchair">Contact Us:</label>    
                        <div class="controls">
                          <textarea rows="8" class="span10 ckeditor" name="wheelchair" id="wheelchair" title="Where is Company Wheelchair Description?" /><?php echo $row->training;?></textarea>
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