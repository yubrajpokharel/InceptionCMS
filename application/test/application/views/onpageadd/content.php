
    
    <!------------------------------------------------ List Portion of the CMS ------------------------------------------------------------------------------>        
            <div class="span9">
                <div class="well">
                    <h3>Create onPage Addvertisement</h3>
					 <?php $attributes = array('class' => 'form-horizontal');
                     echo form_open_multipart('pageadd/create',$attributes); ?>
                    
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
                        <label class="control-label" for="add_page">Add Add to:</label>    
                        <div class="controls">
                         <select name="add_page" id="add_page">
                         <option value="home_up">Home UP</option>  
                         <option value="home_middle">Home Middle</option>
                         <option value="home_down">Home Down</option>  
							<?php 
							$query = $this->db->query('SELECT * FROM categories WHERE cat_status = 1');
							foreach ($query->result() as $row)
								{
									$catname1 = $row->cat_name;
									$catname1 = $catname1."_up";
									
									$catname2 = $row->cat_name;
									$catname2 = $catname2."_down";
								  ?>
							<?php 
                                  $query2 = $this->db->query("SELECT * FROM onpageadd
								  WHERE add_page = '$catname1'");
								  if ($query2->num_rows() == 0){?>
							<option value="<?php echo $row->cat_name?>_up"><?php echo $row->cat_name ?> UP</option>		  
									  <?php }?>
                            <?php 
                                  $query2 = $this->db->query("SELECT * FROM onpageadd
								  WHERE add_page = '$catname2'");
								  if ($query2->num_rows() == 0){?>
							<option value="<?php echo $row->cat_name?>_down"><?php echo $row->cat_name ?> Down</option>		  
									  <?php }?>
							<?php } 
							?>    
                         </select>
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