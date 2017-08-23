
    <!------------------------------------------------ List Portion of the CMS -------------------------------------------------------------------->        
            <div class="span9">
                <div class="well">
                    <h3>Add Details</h3>
					 <?php $attributes = array('class' => 'form-horizontal');
                     echo form_open('pageadd/update',$attributes); ?>

                    <?php if(isset($records)) : foreach($records as $row) : ?>
                    
                    <div class="control-group hidden">
                        <label class="control-label hidden" for="add_id">Add Name:</label>    
                        <div class="controls">
                          <input class="hidden" type="text" name="add_id" id="add_id" value="<?php echo $row->add_id?>" title="Where is add name?" maxlength="250" required/>
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
                          <input type="tel" pattern="[0-9]{3}-[0-9]{10}" value="<?php echo $row->add_contact ?>" title="Telephone Format: 977-9804552309" name="add_contact" id="add_contact" maxlength="15" required/>
                        </div>
                    </div>
                    
                    <div class="control-group">
                        <label class="control-label" for="add_page">Add Add to:</label>    
                        <div class="controls">
                         <select name="add_page" id="add_page">
							<?php 
							$query = $this->db->query('SELECT * FROM categories WHERE cat_status = 1');
							foreach ($query->result() as $row2)
								{
									$catname1 = $row2->cat_name;
									$catname1 = $catname1."_up";
									
									$catname2 = $row2->cat_name;
									$catname2 = $catname2."_down";
								  ?>
							<?php 
									$add_id = $row->add_id;
                                  $query2 = $this->db->query("SELECT * FROM onpageadd
																WHERE add_page = '$catname1' 
																	AND add_id = '$add_id'"); 
								  
								  ?>
                                  
							<option <?php if($query2->num_rows()> 0 ){?>selected="selected"<?php }?> value="<?php echo $row2->cat_name?>_up"><?php echo $row2->cat_name ?> UP</option>
                            
                            <?php 
									$add_id = $row->add_id;
                                  $query2 = $this->db->query("SELECT * FROM onpageadd
																WHERE add_page = '$catname2' 
																	AND add_id = '$add_id'"); 
								  
								  ?>
                                  
							<option <?php if($query2->num_rows()> 0 ){?>selected="selected"<?php }?> value="<?php echo $row2->cat_name?>_down"><?php echo $row2->cat_name ?> DOWN</option>
                            
									  <?php }?>    
                         </select>
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