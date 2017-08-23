       
    <!------------------------------------------------ List Portion of the CMS -------------------------------------------------------------------------------> 
	<?php $this->load->helper('text');	?>
            <div class="span9 hero-unit">
                <div class="well">
                    <h3>Create a High Tea</h3>
					 <?php $attributes = array('class' => 'form-horizontal');
                     echo form_open_multipart('notice/create',$attributes); ?>
                    
                    <div class="control-group">
                        <label class="control-label" for="latest_name">Enter Tea Name:</label>    
                        <div class="controls">
                          <input type="text"  class="span5" name="latest_name" id="latest_name" required min="15">
                        </div>
                    </div>
                    
                    <!-- <div class="control-group">
                        <label class="control-label" for="latest_date">Enter Notice Date:</label>    
                        <div class="controls">
                          <input type="date" class="span5" name="latest_date" id="latest_date"  min="2013-01-01" max="2015-01-01" title="Are not this news is too old or from the future?" required>
                        </div>
                    </div> -->
					
                    <div class="control-group">
                        <label class="control-label" for="latest_news">Enter Tea Details:</label>    
                        <div class="controls">
                          <textarea class="span8 ckeditor" name="latest_news" id="latest_news" rows="10" required></textarea>
                        </div>
                    </div>
                    
                    <div class="control-group">
                        <label class="control-label" for="latest_pic">Choose Image:</label>    
                        <div class="controls">
                          <input type="file" name="latest_attach" id="latest_attach" maxlength="100" required/>
                        </div>
                    </div>
					
					
					
                    
                    <p align="center">
                      <button type="submit" class="btn">Create</button>  
                    </p>
					
                    <?php echo form_close(); ?>
                </div>
                <hr>
                <div class="well">
                    <h3>Notice List</h3>
                <table class="table table-bordered" style="font-size:14px;">
                        <tr>
                            <th>News</th>
                            <th>Description</th>
                            <th>Delete</th>
                        </tr>
                
                 <?php if(isset($records)) : foreach($records as $row) : ?>
                    
                        <?php $onclick = array('onclick'=>"return confirm('Are you sure?')");?>
                        <tr>
                            <td><?=anchor("notice/show/$row->notice_id","$row->notice_name")?></td>
							<td><?php echo word_limiter($row -> notice_detail, 50); ?></td>
						    <td><?=anchor("notice/delete/$row->notice_id","Delete", $onclick);?></td>
                        </tr>
                    <?php endforeach; ?>
                <?php else : ?>
                <tr>
                    <td bgcolor="#FF3333" colspan="3"><font color="#FFFFFF"> No Records </font></td>
                </tr>
                
                <?php endif; ?>
                </table>
            
                </div>
            </div>