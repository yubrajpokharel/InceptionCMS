
    <!------------------------------------------------ List Portion of the CMS ------------------------------------------------------------------------>        
            <div class="span9">
                <div class="well">
                    <h3>Update Staff's Details</h3><br />
					 <?php $attributes = array('class' => 'form-horizontal');
                     echo form_open_multipart('staff/update',$attributes); ?>

                    <?php if(isset($records)) : foreach($records as $row) : ?>
                    <?php $full_name = $row->staff_f_name. " ".$row->staff_l_name; ?>
                    <div class="control-group" align="left">
                    	<img  height="150" width="150" 
                                	src="<?php echo base_url();?>uploads/<?php echo $row->staff_pic; ?>" 
                                    alt="<?php echo $full_name; ?>" 
                                    title="<?php echo $full_name; ?>" 
                         /><br />
                         <?php echo $full_name;?>
                    </div>
                    
                     <div class="control-group hidden">
                        <label class="control-label" for="staff_id">Staff_id</label>    
                        <div class="controls">
                          <input class="span8" type="text" name="staff_id" id="staff_id" value="<?php echo $row->staff_id;?>" required/>
                        </div>
                    </div>
                    
                   <div class="control-group">
                        <label class="control-label" for="first_name">First Name:</label>    
                        <div class="controls">
                          <input class="span8" type="text" name="first_name" id="first_name" value="<?php echo $row->staff_f_name;?>" title="Where is first name?" maxlength="25" required/>
                        </div>
                    </div>
                    
                    <div class="control-group">
                        <label class="control-label" for="last_name">Last Name:</label>    
                        <div class="controls">
                          <input class="span8" type="text" name="last_name" id="last_name" value="<?php echo $row->staff_l_name;?>" title="where is last name?" maxlength="25" required/>
                        </div>
                    </div>
                    
                    <div class="control-group">
                        <label class="control-label" for="dob">Date of Birth:</label>    
                        <div class="controls">
                          <input class="span8" type="date" name="dob" id="dob" value="<?php echo $row->staff_dob;?>" min="1930-01-01" max="2005-01-01" title="Are not you too old or too small for this?" required/>
                        </div>
                    </div>
                    
                    <div class="control-group">
                        <label class="control-label" for="sex">Sex:</label>    
                        <div class="controls">
                          <?php
                                $options = array(
                                    'Male' => 'Male',
                                    'Female' => 'Female',
									'Other' => 'Other'
                                );
                                
                                echo form_dropdown('sex', $options, 'Male');
                            ?>
                        </div>
                    </div>
                    
                    <div class="control-group">
                        <label class="control-label" for="temp_address">Temporary Address:</label>    
                        <div class="controls">
                          <input class="span8" type="text" name="temp_address" id="temp_address" value="<?php echo $row->staff_t_address;?>" title="This staff must have a temporary address? Didn't he?" maxlength="25"/>
                        </div>
                    </div>
                    
                    <div class="control-group">
                        <label class="control-label" for="per_address">Permanent Address:</label>    
                        <div class="controls">
                          <input class="span8" type="text" name="per_address" id="per_address" value="<?php echo $row->staff_p_address;?>" title="This staff must have a Permanent address? Didn't he?" maxlength="25"/>
                        </div>
                    </div>
                    
                    <div class="control-group">
                        <label class="control-label" for="email_address">Email Address:</label>    
                        <div class="controls">
                          <input class="span8" type="email" name="email_address" id="email_address" value="<?php echo $row->staff_email;?>" title="E-mail Format: abc@xyz.com "/>
                        </div>
                    </div>
                    
                    <div class="control-group">
                        <label class="control-label" for="contact_number">Contact Number:</label>    
                        <div class="controls">
                          <input class="span8" type="tel" value="<?php echo $row->staff_contact;?>" pattern="[0-9]{3}-[0-9]{10}" title="Telephone Format: 977-9804552309" name="contact_number" id="contact_number" maxlength="15"/>
                        </div>
                    </div>
                    
                    <div class="control-group">
                        <label class="control-label" for="maj_feild">Major Feild:</label>    
                        <div class="controls">
                          <input class="span8" type="text" name="maj_feild" id="maj_feild" value="<?php echo $row->staff_major_feild;?>" maxlength="25" required/>
                        </div>
                    </div>
                    
                    <div class="control-group">
                        <label class="control-label" for="desc">Description:</label>    
                        <div class="controls">
                          <textarea class="span8" rows="5" name="desc" id="desc" required><?php echo $row->staff_desc;?></textarea>
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