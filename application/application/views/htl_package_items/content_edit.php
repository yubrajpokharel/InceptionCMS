
    <!------------------------------------------------ List Portion of the CMS ------------------------------------------------------------>        
            <div class="span9">
                <div class="well">
                    <h3>Edit Items</h3>
					           <?php $attributes = array('class' => 'form-horizontal');
                      echo form_open('htl_package_items/update',$attributes); ?>

                    <?php if(isset($records)) : foreach($records as $row) : ?>
                    
                    <div class="control-group hidden">
                        <label class="control-label" for="id">Item ID:</label>    
                        <div class="controls">
                          <input type="text" class="span4" name="id" id="id"  value="<?php echo $row -> id; ?>" required/>
                        </div>
                    </div>

                    <div class="control-group">
                        <label class="control-label" for="name">Enter Name:</label>    
                        <div class="controls">
                          <input type="text" value="<?php echo $row->name;?>" class="span8" maxlength="150" name="name" id="name" required="required" />
                        </div>
                    </div>
                    
                
                    <div class="control-group">
                        <label class="control-label" for="news_heading">Name:</label>    
                        <div class="controls">
                          <input type="text" class="span8" maxlength="250" name="news_heading" value="<?php echo $row->desc;?>" id="news_heading" required="required" />
                        </div>
                    </div>

                    <div class="control-group">
                        <label class="control-label" for="news_desc">Enter Price:</label>    
                        <div class="controls">
                          <input type="number" class="span8" step="0.25" min="0" max="10000" name="news_desc" id="news_desc" value="<?php echo $row->price;?>" required="required" />
                        </div>
                    </div>
                   
                   <div class="control-group">
                        <label class="control-label" for="sdesc">short Description:</label>    
                        <div class="controls">
                          <textarea class="span10" rows="3" type="text" maxlength="200"  name="sdesc" id="sdesc" required="required" /><?php echo $row->short_desc;?></textarea>
                        </div>
                    </div>
                    
                    <div class="control-group">
                        <label class="control-label" for="news_heading">long Description:</label>    
                        <div class="controls">
                          <textarea class="span10" rows="5" type="text"  name="news_heading" id="news_heading" required="required" /><?php echo $row->desc;?></textarea>
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