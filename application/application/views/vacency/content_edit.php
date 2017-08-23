
    <!------------------------------------------------ List Portion of the CMS ----------------------------------------------------------------------------- -->        
            <div class="span9">
                <div class="well">
                    <h3>Edit Vacancy</h3>
					 <?php $attributes = array('class' => 'form-horizontal');
                     echo form_open('vacancy/update',$attributes); ?>

                    <?php if(isset($records)) : foreach($records as $row) : ?>
                     <div class="control-group hidden">
                        <label class="control-label" for="title">Enter Title:</label>    
                        <div class="controls">
                          <input type="text"  class="span5" value="<?php echo $row->id?>" name="id" id="title" required min="15" maxlength="50">
                        </div>
                    </div>

                    <div class="control-group">
                        <label class="control-label" for="title">Enter Title:</label>    
                        <div class="controls">
                          <input type="text"  class="span5" value="<?php echo $row->title?>" name="title" id="title" required min="15" maxlength="50">
                        </div>
                    </div>
                    
                    

                    <div class="control-group">
                        <label class="control-label" for="job">Job Type:</label>    
                        <div class="controls">
                          <select class="span5" name="job" id="job" required>
                                <option value=""></option>
                                <option value="1" <?php if($row->job == 1) echo "selected"?>>Fulltime</option>
                                <option value="2"<?php if($row->job == 2) echo "selected"?>>Parttime</option>
                            </select>
                        </div>
                    </div>

                    <div class="control-group">
                        <label class="control-label" for="nop">Number of people</label>    
                        <div class="controls">
                          <input type="number" min="1" value="<?php echo $row->nop?>" class="span5" id="nop" name="nop" required min="15" maxlength="50">
                        </div>
                    </div>
                    
                    <div class="control-group">
                        <label class="control-label" for="salary">Salary</label>    
                        <div class="controls">
                          <input type="text" min="3" value="<?php echo $row->salary?>"  class="span5" id="salary" name="salary" maxlength="15" required>
                        </div>
                    </div>

                     <div class="control-group">
                        <label class="control-label" for="valid_date">Valid Till</label>    
                        <div class="controls">
                          <input type="date" min="<?php echo date('Y-m-d');?>" value="<?php echo $row->end_date;?>"  class="span5" id="valid_date" name="valid_date" required min="15" maxlength="50">
                        </div>
                    </div>

                    <div class="control-group">
                        <label class="control-label" for="desc">Enter Details:</label>    
                        <div class="controls">
                          <textarea type="text" class="span8 ckeditor" name="desc" id="desc" rows="5"  title="Are not this detail is too short" required><?php echo $row->desc?></textarea>
                        </div>
                    </div>
                    
                    <div class="control-group">
                        <label class="control-label" for="status">Vacancy Status</label>    
                        <div class="controls">
                          <?php
                                $options = array(
                                    '1' => 'Active',
                                    '0' => 'Unactive',
                                );
                                $so_type = $row -> status;
                                echo form_dropdown('status',  $options, $so_type);
                            ?>
                        </div>
                    </div>
					
                    <!-- <hr />
                    <h3>在中國</h3>
                     <div class="control-group">
                        <label class="control-label" for="ch_about_name">關於標題:</label>    
                        <div class="controls">
                          <input type="text"  class="span5" name="ch_about_name" value="<?php echo $row->ch_about_name?>" id="ch_about_name" min="15">
                        </div>
                    </div>
                    
                    <div class="control-group">
                        <label class="control-label" for="ch_about_desc">關於說明:</label>    
                        <div class="controls">
                          <textarea type="text" class="span10" name="ch_about_desc" id="ch_about_desc" rows="8"  title="Are not this detail is too short"><?php echo $row->ch_about_desc?></textarea>
                        </div> -->
				
                    
                    <p align="center">
                      <button type="submit" class="btn">Update</button>
                      
                    </p>
                    <?php echo form_close(); ?>
					<?php endforeach; ?>
                
                <?php else : ?>
                <?php endif; ?>
                </div>
			</div>