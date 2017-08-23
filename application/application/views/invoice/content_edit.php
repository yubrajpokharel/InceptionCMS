
    <!------------------------------------------------ List Portion of the CMS ------------------------------------------------------------>        
            <div class="span9 hero-unit">
                <div class="well">
                    <h3>Edit Items</h3>
					           <?php $attributes = array('class' => 'form-horizontal');
                      echo form_open('htl_package_items/update',$attributes); ?>

                    <?php if(isset($records)) : foreach($records as $row) : ?>
                    
                    <div class="control-group hidden">
                        <label class="control-label" for="news_id">Invoice ID:</label>    
                        <div class="controls">
                          <input type="text" class="span4" name="news_id" id="news_id"  value="<?php echo $row -> invoice; ?>"  required/>
                        </div>
                    </div>

                    <div class="control-group">
                        <label class="control-label" for="name">Client Name:</label>    
                        <div class="controls">
                          <input type="text" readonly="readonly"> value="<?php echo $row->fname.' '.$row->lname;?>" class="span4" maxlength="150" name="name" id="name" required="required" />
                        </div>
                    </div>
                    
                
                    <div class="control-group">
                        <label class="control-label" for="news_heading">Clinet Address:</label>    
                        <div class="controls">
                          <textarea class="span4"  name="news_heading"><?php echo $row->address.', '.$row->street.', '.$row->city.', '$row->country;?></textarea>
                        </div>
                    </div>

                    <div class="control-group">
                        <label class="control-label" for="news_desc">Amount:</label>    
                        <div class="controls">
                          <input type="number" class="span4"  name="news_desc" id="news_desc" value="<?php echo $row->price;?>"  required="required" />
                        </div>
                    </div>
                   
                    
                     <div class="control-group">
                        <label class="control-label" for="pack_type">News Category:</label>    
                        <div class="controls">
                        <select name="pack_type" id="pack_type">
              							<?php 
              							$query = $this->db->query('SELECT * FROM htl_packages WHERE status = 1');
              							foreach ($query->result() as $row2)
              								{
              								  ?>
                                                <option value="<?php echo $row2->id?>" <?php if($row->id == $row2->id) echo 'selected="selected"'?>><?php echo $row2->name ?></option>
              								<?php }
              							?>  
                         </select>
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