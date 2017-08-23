
    <!------------------------------------------------ List Portion of the CMS ---------------------------------------------------------------->        
            <div class="span9">
                <div class="well">
                    <h3>Edit News</h3>
					 <?php $attributes = array('class' => 'form-horizontal');
                     echo form_open('news/update',$attributes); ?>

                    <?php if(isset($records)) : foreach($records as $row) : ?>
                    
                    <div class="control-group hidden">
                        <label class="control-label" for="news_id">News ID:</label>    
                        <div class="controls">
                          <input type="text" name="news_id" id="news_id"  value="<?php echo $row -> news_id; ?>" required/>
                        </div>
                    </div>
                    
                
                    <div class="control-group">
                        <label class="control-label" for="news_heading">News Heading:</label>    
                        <div class="controls">
                          <input type="text" maxlength="50" name="news_heading" value="<?php echo $row->news_heading;?>" id="news_heading" required="required" />
                        </div>
                    </div>
                    
                    <div class="control-group">
                        <label class="control-label" for="reporter">Reporter Name:</label>    
                        <div class="controls">
                          <input type="text" value="<?php echo $row->reporter;?>" maxlength="100" name="reporter" id="reporter" required="required" />
                        </div>
                    </div>
                    
                    
                    <div class="control-group">
                        <label class="control-label" for="news_desc">News Description:</label>    
                        <div class="controls">
                          <textarea class="span10 ckeditor" rows="8" name="news_desc" id="category_desc"><?php echo $row->news_description;?>
                          </textarea>
                        </div>
                    </div>
                    
                     <div class="control-group">
                        <label class="control-label" for="pack_type">News Category:</label>    
                        <div class="controls">
                        <select name="pack_type" id="pack_type">
        							<?php 
        							$query = $this->db->query('SELECT * FROM categories WHERE cat_status = 1');
        							foreach ($query->result() as $row2)
        								{ ?>
                              <option value="<?php echo $row2->cat_id?>" <?php if($row->category_id == $row2->cat_id) echo 'selected="selected"'?>><?php echo $row2->cat_name ?></option>
        								<?php }
        							?>
                            
                         </select>
                        </div>
                    </div>
                    
                  
                    <div class="control-group">
                        <label class="control-label" for="headline">Make Headline</label>    
                        <div class="controls">
                        <?php if($row->is_headline == 1){?>
                          <input type="radio" name="headline" id="headline" value="1" checked="checked"/>yes &nbsp;&nbsp;
                          <input type="radio" name="headline" id="headline" value="0" />no
						<?php }else{?>
                          <input type="radio" name="headline" id="headline" value="0"/>yes &nbsp;&nbsp;
                          <input type="radio" name="headline" id="headline" value="1" checked="checked"/>no
						<?php } ?>
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