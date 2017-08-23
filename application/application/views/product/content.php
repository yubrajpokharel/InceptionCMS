   
    <!------------------------------------------------ List Portion of the CMS ------------------------------------------------------------>        
            <div class="span9">
                <div class="well">
                	
                    <p align="left" class="text-left">
                     <a href="<?=base_url('index.php/product/listitems')?>"><i class="icon-home"></i>View Items</a>
                    </p><br>
                    
                    <h3>Create Product</h3>
                     <?php $attributes = array('class' => 'form-horizontal');
                               echo form_open_multipart('product/create',$attributes); ?>
                    
                    <div class="control-group">
                        <label class="control-label" for="pack_type">Select Category:</label>    
                        <div class="controls">
                         
                         <select name="cat_type" id="cat_type">
                                        <?php 
                                        $query = $this->db->query('SELECT * FROM product_category WHERE cat_status = 1');
                                        foreach ($query->result() as $row)
                                            {
                                              echo '<option value="'.$row->cat_id.'">'.$row->cat_name.'</option>';
                                            }
                                        ?>
                         </select>
                        </div>
                    </div>

                    <div class="control-group">
                        <label class="control-label" for="name">Enter Name:</label>    
                        <div class="controls">
                          <input type="text" class="span10" maxlength="150" name="name" id="name" required="required" />
                        </div>
                    </div>

                    <div class="control-group">
                        <label class="control-label" for="price">Enter Price:</label>    
                        <div class="controls">
                          <input type="number" class="span10" step="0.25" min="0" max="10000" name="price" id="price" required="required" />
                        </div>
                    </div>
                  
      
                    
                    <div class="control-group">
                        <label class="control-label" for="desc">Enter Item Description:</label>    
                        <div class="controls">
                          <textarea rows="5" class="span10" type="text" maxlength="100"  name="desc" id="desc" required="required"></textarea>
                        </div>
                    </div>

                    

                    <div class="control-group">
                        <label class="control-label" for="pic">Choose Image:</label>    
                        <div class="controls">
                          <input type="file" class="span8" name="pic" id="pic" maxlength="100"/>
                        </div>
                    </div>
                    
                    
                    <p align="center">
                      <button type="submit" class="btn">Create</button>
                      
                    </p>
                    <?php echo form_close(); ?>
                </div>
                <hr>
                
            </div>