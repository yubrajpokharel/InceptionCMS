
    
    <!------------------------------------------------ List Portion of the CMS -->        
            <div class="span9">
            	<?php 
                $query = $this->db->query('SELECT * FROM intial_setup');
                   if ($query->num_rows() > 0){
                ?>
                <div class="well">
                    <h3>Company Details</h3>
                <table class="table table-bordered" style="font-size:14px;">
                        <tr>
                            <th>Comp Name</th>
                            <th>E-Mail Address</th>
                            <th>Contact No.</th>
                            <th>Mobile No.</th>
                        </tr>
                
                 <?php if(isset($records)) : foreach($records as $row) : ?>
                    
                        <?php $onclick = array('onclick'=>"return confirm('Are you sure?')");?>
                        <?php $full_name = $row->site_name; ?>
                        <tr>
                            <td><?php echo anchor("details/show/$row->setup_id","$full_name")?></td>
							<td><?php echo $row -> comp_email; ?></td>
                            <td><?php echo $row -> comp_landline; ?></td>
                            <td><?php echo $row -> comp_mobile; ?></td>
                        </tr>
                    <?php endforeach; ?>
                <?php else : ?>
                <tr>
                    <td bgcolor="#FF3333" colspan="4"><font color="#FFFFFF"> No Records </font></td>
                </tr>
                
                <?php endif; ?>
                </table>
                </div>
                
                <?php } else {?>
                <div class="well">
                    <h3>Add Company Details</h3>
					 <?php $attributes = array('class' => 'form-horizontal');
                     echo form_open_multipart('details/create',$attributes); ?>
                    
					<div class="control-group">
                        <label class="control-label" for="site_name">Site Name:</label>    
                        <div class="controls">
                          <input type="text" name="site_name" id="site_name" title="Where is site name?" maxlength="25" required/>
                        </div>
                    </div>
                    
                    
                    <div class="control-group">
                        <label class="control-label" for="country_name">Enter Country:</label>    
                        <div class="controls">
                          <input type="text" name="country_name" id="country_name" title="where is country name?" maxlength="25" required/>
                        </div>
                    </div>
                    
                    
                    
                    <div class="control-group">
                        <label class="control-label" for="city_name">Enter City:</label>    
                        <div class="controls">
                          <input type="text" name="city_name" id="city_name" title="This company must have a city address? Didn't he?" maxlength="25" required/>
                        </div>
                    </div>
                    
                    <div class="control-group">
                        <label class="control-label" for="street_name">Enter Street:</label>    
                        <div class="controls">
                          <input type="text" name="street_name" id="street_name" title="This Company must have a street address? Didn't he?" maxlength="25" required/>
                        </div>
                    </div>
                    
                    <div class="control-group">
                        <label class="control-label" for="email_address">Email Address:</label>    
                        <div class="controls">
                          <input type="email" name="email_address" id="email_address" title="E-mail Format: abc@xyz.com " required/>
                        </div>
                    </div>
                    
                    <div class="control-group">
                        <label class="control-label" for="contact_number">Landline Number:</label>    
                        <div class="controls">
                          <input type="tel" pattern="[0-9]{3}-[0-9]{10}" title="Telephone Format: 977-1550021" name="contact_number" id="contact_number" maxlength="15" required/>
                        </div>
                    </div>
                    
                    <div class="control-group">
                        <label class="control-label" for="mobile_number">Mobile Number:</label>    
                        <div class="controls">
                          <input type="tel" pattern="[0-9]{3}-[0-9]{10}" title="Mobile Number Format: 977-9804552309" name="mobile_number" id="mobile_number" maxlength="15" required/>
                        </div>
                    </div>
                    
                   

                    <div class="control-group">
                        <label class="control-label" for="parking">Advertisement:</label>    
                        <div class="controls">
                          <textarea rows="8" class="span10" name="parking" id="parking" title="Where is Company Parking Description?" /></textarea>
                        </div>
                    </div>

                    <div class="control-group">
                        <label class="control-label" for="wheelchair">Contact Us:</label>    
                        <div class="controls">
                          <textarea rows="8" class="span10" name="wheelchair" id="wheelchair" title="Where is Company Wheelchair Description?" /></textarea>
                        </div>
                    </div>

                    
                    
   
                    <p align="center">
                      <button type="submit" class="btn">Create</button>  
                    </p>
					
                    <?php echo form_close(); ?>
                </div>
                <?php } ?>        
            </div>