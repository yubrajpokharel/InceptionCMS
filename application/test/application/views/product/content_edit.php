
    <!------------------------------------------------ List Portion of the CMS ------------------------------------------------------------>        
            <div class="span9">
                <div class="well">
                    <h3>Edit Product</h3>
					           <?php $attributes = array('class' => 'form-horizontal');
                      echo form_open('product/update',$attributes); ?>

                    <?php if(isset($records)) : foreach($records as $row) : ?>
                    
                    <div class="control-group hidden">
                        <label class="control-label" for="id">Product ID:</label>    
                        <div class="controls">
                          <input type="text" class="span4" name="id" id="id"  value="<?php echo $row -> id; ?>" required/>
                        </div>
                    </div>

                     <div class="control-group">
                        <label class="control-label" for="pack_type">Product Category:</label>    
                        <div class="controls">
                        <select name="cat_type" id="cat_type">
                                    <?php 
                                    $query = $this->db->query('SELECT * FROM product_category WHERE cat_status = 1');
                                    foreach ($query->result() as $row2)
                                        { ?>
                              <option value="<?php echo $row2->cat_id?>" <?php if($row->category_id == $row2->cat_id) echo 'selected="selected"'?>><?php echo $row2->cat_name ?></option>
                                        <?php }
                                    ?>
                            
                         </select>
                        </div>
                    </div>

                    <div class="control-group">
                        <label class="control-label" for="name">Enter Name:</label>    
                        <div class="controls">
                          <input type="text" value="<?php echo $row->name;?>" class="span10" maxlength="150" name="name" id="name" required="required" />
                        </div>
                    </div>
                    
                    <div class="control-group">
                        <label class="control-label" for="price">Enter Price:</label>    
                        <div class="controls">
                          <input type="number" class="span10" step="0.25" min="0" max="10000" name="price" id="price" value="<?php echo $row->price;?>" required="required" />
                        </div>
                    </div>
                
                    <div class="control-group">
                        <label class="control-label" for="desc">Detail:</label>    
                        <div class="controls">
                          <textarea rows="5" class="span10" type="text" maxlength="100"  name="desc" id="desc" required="required"><?php echo $row->description;?></textarea>
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