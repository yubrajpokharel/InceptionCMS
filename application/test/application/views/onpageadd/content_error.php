
    
    <!------------------------------------------------ List Portion of the CMS ------------------------------------------------------------------------------->        
            <div class="span9 hero-unit">
            	<div class="well"><?php echo $error;?></div>
                <div class="well">
                    <h3>Add Staff's Details</h3>
					 <?php $attributes = array('class' => 'form-horizontal');
                     echo form_open_multipart('staff/create',$attributes); ?>
                    
					<div class="control-group">
                        <label class="control-label" for="first_name">First Name:</label>    
                        <div class="controls">
                          <input type="text" name="first_name" id="first_name" maxlength="25" required/>
                        </div>
                    </div>
                    
                    <div class="control-group">
                        <label class="control-label" for="last_name">Last Name:</label>    
                        <div class="controls">
                          <input type="text" name="last_name" id="last_name" maxlength="25" required/>
                        </div>
                    </div>
                    
                    <div class="control-group">
                        <label class="control-label" for="dob">Date of Birth:</label>    
                        <div class="controls">
                          <input type="date" name="dob" id="dob" required/>
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
                          <input type="text" name="temp_address" id="temp_address" maxlength="25" required/>
                        </div>
                    </div>
                    
                    <div class="control-group">
                        <label class="control-label" for="per_address">Permanent Address:</label>    
                        <div class="controls">
                          <input type="text" name="per_address" id="per_address" maxlength="25" required/>
                        </div>
                    </div>
                    
                    <div class="control-group">
                        <label class="control-label" for="email_address">Email Address:</label>    
                        <div class="controls">
                          <input type="text" name="email_address" id="email_address" maxlength="25" required/>
                        </div>
                    </div>
                    
                    <div class="control-group">
                        <label class="control-label" for="contact_number">Contact Number:</label>    
                        <div class="controls">
                          <input type="number" name="contact_number" id="contact_number" maxlength="15" required/>
                        </div>
                    </div>
                    
                    <div class="control-group">
                        <label class="control-label" for="maj_feild">Major Feild:</label>    
                        <div class="controls">
                          <input type="text" name="maj_feild" id="maj_feild" maxlength="25" required/>
                        </div>
                    </div>
                    
                    <div class="control-group">
                        <label class="control-label" for="desc">Description:</label>    
                        <div class="controls">
                          <textarea name="desc" id="desc"required></textarea>
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
                
                <hr />
                
                <div class="well">
                    <h3>Social Contact List</h3>
                <table class="table table-bordered" style="font-size:14px;">
                        <tr>
                            <th>Name</th>
                            <th>Link</th>
                            <th>view</th>
                            <th>Delete</th>
                        </tr>
                
                 <?php if(isset($records)) : foreach($records as $row) : ?>
                    
                        <?php $onclick = array('onclick'=>"return confirm('Are you sure?')");?>
                        <tr>
                            <td><?php echo $row -> name; ?></td>
							<td><a href="<?php echo $row -> link; ?>" target="_blank"><?php echo $row -> link; ?></td>
                            <td>
								<?php echo anchor("social/show/$row->c_id","View")?>
                            </td>
                            <td><?=anchor("social/delete/$row->c_id","Delete", $onclick);?></td>
                        </tr>
                    <?php endforeach; ?>
                <?php else : ?>
                <tr>
                    <td bgcolor="#FF3333" colspan="4"><font color="#FFFFFF"> No Records </font></td>
                </tr>
                
                <?php endif; ?>
                </table>
                </div>
            </div>