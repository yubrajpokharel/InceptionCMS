   
    <!------------------------------------------------ List Portion of the CMS -------------------------------------------------------->        
            <div class="span9">
                <div class="well">
                	
                    <p align="center">
                     <a href="<?=base_url('index.php/news/listnews')?>"><i class="icon-home"></i>View News</a>
                    </p>
                    
                    <h3>Create News</h3>
					           <?php $attributes = array('class' => 'form-horizontal');
                     echo form_open_multipart('news/create',$attributes); ?>
                    <div class="control-group">
                        <label class="control-label" for="pack_type">Select News Category:</label>    
                        <div class="controls">
                         
                         <select name="pack_type" id="pack_type">
            							<?php 
              							$query = $this->db->query('SELECT * FROM categories WHERE cat_status = 1');
              							foreach ($query->result() as $row)
              								{
              								  echo '<option value="'.$row->cat_id.'">'.$row->cat_name.'</option>';
              								}
            							?>
                         </select>
                        </div>
                    </div>
                    
                     
                     <div class="control-group">
                        <label class="control-label" for="news_pic">Select Image</label>    
                        <div class="controls">
                          <input type="file" name="news_pic" id="news_pic" required="required"/>
                        </div>
                    </div>
                    <!--In English-->
                    
                    <div class="control-group">
                        <label class="control-label" for="news_heading">Enter News Heading:</label>    
                        <div class="controls">
                          <input type="text" maxlength="100" name="news_heading" id="news_heading" required="required" />
                        </div>
                    </div>
                    
                    <div class="control-group">
                        <label class="control-label" for="news_reporter">Enter Reporter Name:</label>    
                        <div class="controls">
                          <input type="text" maxlength="100" name="news_reporter" id="news_reporter" required="required" />
                        </div>
                    </div>
                  
                    
                    <div class="control-group">
                        <label class="control-label" for="news_desc">News Description:</label>    
                        <div class="controls">
                          <textarea class="span-8 ckeditor" rows="8" name="news_desc" id="category_desc"></textarea>
                        </div>
                    </div>
                    
                     <div class="control-group">
                        <label class="control-label" for="headline">Make Headline</label>    
                        <div class="controls">
                          <input type="radio" name="headline" id="headline" value="1"/>yes &nbsp;&nbsp;
                          <input type="radio" name="headline" id="headline" value="0" checked="checked"/>no
                        </div>
                    </div>
                    
                    
                    <p align="center">
                      <button type="submit" class="btn">Create</button>
                      
                    </p>
                    <?php echo form_close(); ?>
                </div>
                <hr>
                
            </div>