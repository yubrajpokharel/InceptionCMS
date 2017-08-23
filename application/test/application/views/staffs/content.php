
    
    <!--List Portion of the CMS -->        
            <div class="span9">
                <div class="well">
                    <h3>Add Staff's Details</h3>
                    <hr>
					 <?php $attributes = array('class' => 'form-horizontal');
                     echo form_open_multipart('staff/create',$attributes); ?>
                    
					<div class="control-group">
                        <label class="control-label" for="first_name">First Name:</label>    
                        <div class="controls">
                          <input class="span8" type="text" name="first_name" id="first_name" title="Where is first name?" maxlength="25" required/>
                        </div>
                    </div>
                    
                    <div class="control-group">
                        <label class="control-label" for="last_name">Last Name:</label>    
                        <div class="controls">
                          <input class="span8" type="text" name="last_name" id="last_name" title="where is last name?" maxlength="25" required/>
                        </div>
                    </div>
                    
                    <div class="control-group">
                        <label class="control-label" for="dob">Date of Birth:</label>    
                        <div class="controls">
                          <input class="span8" type="date" name="dob" id="dob" min="1930-01-01" max="2005-01-01" title="Are not you too old or too small for this?" />
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
                          <input class="span8" type="text" name="temp_address" id="temp_address" title="This staff must have a temporary address? Didn't he?" maxlength="25" />
                        </div>
                    </div>
                    
                    <div class="control-group">
                        <label class="control-label" for="per_address">Permanent Address:</label>    
                        <div class="controls">
                          <input class="span8" type="text" name="per_address" id="per_address" title="This staff must have a Permanent address? Didn't he?" maxlength="25" />
                        </div>
                    </div>
                    
                    <div class="control-group">
                        <label class="control-label" for="email_address">Email Address:</label>    
                        <div class="controls">
                          <input class="span8" type="email" name="email_address" id="email_address" title="E-mail Format: abc@xyz.com " />
                        </div>
                    </div>
                    
                    <div class="control-group">
                        <label class="control-label" for="contact_number">Contact Number:</label>    
                        <div class="controls">
                          <input class="span8" type="tel" pattern="[0-9]{3}-[0-9]{10}" title="Telephone Format: 977-9804552309" name="contact_number" id="contact_number" maxlength="15" />
                        </div>
                    </div>
                    
                    <div class="control-group">
                        <label class="control-label" for="maj_feild">Major Feild:</label>    
                        <div class="controls">
                          <input class="span8" type="text" name="maj_feild" id="maj_feild" maxlength="25" required/>
                        </div>
                    </div>

                    <div class="control-group">
                        <label class="control-label" for="fb">Facebook Link:</label>    
                        <div class="controls">
                          <input class="span8" type="text" name="fb" id="fb"/>
                        </div>
                    </div>

                    <div class="control-group">
                        <label class="control-label" for="google">Google+ link:</label>    
                        <div class="controls">
                          <input class="span8" type="text" name="google" id="google"/>
                        </div>
                    </div>

                    <div class="control-group">
                        <label class="control-label" for="twitter">Twitter Link:</label>    
                        <div class="controls">
                          <input class="span8" type="text" name="twitter" id="twitter"/>
                        </div>
                    </div>

                    <div class="control-group">
                        <label class="control-label" for="linkedin">LinkedIn Link:</label>    
                        <div class="controls">
                          <input class="span8" type="text" name="linkedin" id="linkedin"/>
                        </div>
                    </div>
                    
                    <div class="control-group">
                        <label class="control-label" for="desc">Description:</label>    
                        <div class="controls">
                          <textarea class="span8" rows="5" name="desc" id="desc"required></textarea>
                        </div>
                    </div>
                    
                    <div class="control-group">
                        <label class="control-label" for="pro_pic">Select the Picture:</label>    
                        <div class="controls">
                          <input type="file" name="pro_pic" id="pro_pic" required/>
                        </div>
                    </div>
   
                    <p align="center">
                      <button type="submit" class="btn">Create</button>  
                    </p>
					
                    <?php echo form_close(); ?>
                </div>
                

                
                <div class="well">
                    <h3>Staff's List</h3>
                <table class="table table-bordered" id="example" style="font-size:12px;">
                    <thead>
                        <tr>
                            <th>Name</th>
                            <th>E-Mail Address</th>
                            <th>Contact No.</th>
                            <th>Delete</th>
                        </tr>
                    </thead>
                    <tbody>
                 <?php if(isset($records)) : foreach($records as $row) : ?>
                    
                        <?php $onclick = array('onclick'=>"return confirm('Are you sure?')");?>
                        <?php $full_name = $row->staff_f_name. " ".$row->staff_l_name; ?>
                        <tr>
                            <td><?php echo anchor("staff/show/$row->staff_id","$full_name")?></td>
							<td><?php echo $row -> staff_email; ?></td>
                            <td><?php echo $row -> staff_contact; ?></td>
                            <td><?=anchor("staff/delete/$row->staff_id","Delete", $onclick);?></td>
                        </tr>
                    <?php endforeach; ?>
                </tbody>
                
                <?php endif; ?>
                </table>
                </div>
            </div>