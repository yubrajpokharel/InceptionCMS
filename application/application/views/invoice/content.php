   
    <!------------------------------------------------ List Portion of the CMS ------------------------------------------------------------>        
            <div class="span9 hero-unit">
                <div class="well">
                	
                    <p align="left" class="text-left">
                     <a href="<?=base_url('index.php/htl_package_items/listitems')?>"><i class="icon-home"></i>View Items</a>
                    </p><br>
                    
                    <h3>Create Items</h3>
                     <?php $attributes = array('class' => 'form-horizontal');
                               echo form_open_multipart('htl_package_items/create',$attributes); ?>
                    
                    <div class="control-group">
                        <label class="control-label" for="name">Enter Name:</label>    
                        <div class="controls">
                          <input type="text" class="span4" maxlength="150" name="name" id="name" required="required" />
                        </div>
                    </div>

                    <div class="control-group">
                        <label class="control-label" for="news_desc">Enter Price:</label>    
                        <div class="controls">
                          <input type="number" class="span4" step="0.25" min="0" max="10000" name="news_desc" id="news_desc" required="required" />
                        </div>
                    </div>
                  
                     
                    <!--  <div class="control-group">
                        <label class="control-label" for="news_pic">Select Image</label>    
                        <div class="controls">
                          <input type="file" name="news_pic" id="news_pic" required="required"/>
                        </div>
                    </div> -->
                    <!--In English-->
                    
                    <div class="control-group">
                        <label class="control-label" for="news_heading">Enter Item Description:</label>    
                        <div class="controls">
                          <input class="span8" type="text" maxlength="100"  name="news_heading" id="news_heading" required="required" />
                        </div>
                    </div>

                    <div class="control-group">
                        <label class="control-label" for="pack_type">Select News Category:</label>    
                        <div class="controls">
                         
                         <select name="pack_type" id="pack_type">
                          <?php 
                          $query = $this->db->query('SELECT * FROM htl_packages WHERE status = 1');
                          foreach ($query->result() as $row)
                            {
                              echo '<option value="'.$row->id.'">'.$row->name.'</option>';
                            }
                          ?>
                         </select>
                        </div>
                    </div>
                    
                    
                  
                    
                    
                    
                    
                    <hr />
                    <!-- -->

                    
                    <p align="center">
                      <button type="submit" class="btn">Create</button>
                      
                    </p>
                    <?php echo form_close(); ?>
                </div>
                <hr>
                
            </div>