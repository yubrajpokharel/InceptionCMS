   
    <!------------------------------------------------ List Portion of the CMS ------------------------------------------------------------>        
            <div class="span9 hero-unit">
                <div class="well">
                	
                    <p align="left" class="text-left">
                     <a href="<?=base_url('index.php/htl_special_items/listitems')?>"><i class="icon-home"></i>View Items</a>
                    </p><br>
                    
                    <h3>Create Items</h3>
                     <?php $attributes = array('class' => 'form-horizontal');
                               echo form_open_multipart('htl_special_items/create',$attributes); ?>
                    
                    <div class="control-group">
                        <label class="control-label" for="name">Enter Name:</label>    
                        <div class="controls">
                          <input type="text" class="span8" maxlength="150" name="name" id="name" required="required" />
                        </div>
                    </div>

                    <div class="control-group">
                        <label class="control-label" for="news_desc">Enter Price:</label>    
                        <div class="controls">
                          <input type="number" class="span8" step="0.25" min="0" max="10000" name="news_desc" id="news_desc" required="required" />
                        </div>
                    </div>
                  
      
                    
                    <div class="control-group">
                        <label class="control-label" for="news_heading">Enter Item Description:</label>    
                        <div class="controls">
                          <textarea rows="5" class="span8" type="text" maxlength="100"  name="news_heading" id="news_heading" required="required"></textarea>
                        </div>
                    </div>

                    <div class="control-group">
                        <label class="control-label" for="pack_type">Select Special items:</label>    
                        <div class="controls">
                         
                         <select name="pack_type" id="pack_type">
                          <?php 
                          $query = $this->db->query('SELECT * FROM htl_special WHERE status = 1');
                          foreach ($query->result() as $row)
                            {
                              echo '<option value="'.$row->id.'">'.$row->name.'</option>';
                            }
                          ?>
                         </select>
                        </div>
                    </div>

                    <div class="control-group">
                        <label class="control-label" for="cat_pic">Choose Image:</label>    
                        <div class="controls">
                          <input type="file" class="span8" name="cat_pic" id="cat_pic" maxlength="100"/>
                        </div>
                    </div>
                    
                    
                    <p align="center">
                      <button type="submit" class="btn">Create</button>
                      
                    </p>
                    <?php echo form_close(); ?>
                </div>
                <hr>
                
            </div>