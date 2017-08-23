       
    <!------------------------------------------------ List Portion of the CMS ----------------------------------------------------------------------------- --> 
	<?php $this->load->helper('text');	?>
            <div class="span9">
                <div class="well">
                <?php if($total < $this->config->item('max_about_us')) { ?>
                    <h3>Create About Us</h3>
                    <hr>
					 <?php $attributes = array('class' => 'form-horizontal');
                     echo form_open_multipart('about/create',$attributes); ?>
                    
                    <?php if($this->config->item('about_us_image')) { ?>
                    <div class="control-group">
                        <label class="control-label" for="about_pic">Choose Image:</label>    
                        <div class="controls">
                          <input type="file" name="about_pic" id="about_pic" maxlength="100"/>
                        </div>
                    </div>
                    <?php }?>
                    
                    <div class="control-group">
                        <label class="control-label" for="about_name">Enter Title:</label>    
                        <div class="controls">
                          <input type="text"  class="span8" name="about_name" id="about_name" required min="15" maxlength="250">
                        </div>
                    </div>
                    
                    <div class="control-group">
                        <label class="control-label" for="about_desc">Enter Details:</label>    
                        <div class="controls">
                          <textarea type="text" class="span8" name="about_desc" id="about_desc" rows="5"  title="Are not this detail is too short" required></textarea>
                        </div>
                    </div>
					 
                    <p align="center">
                      <button type="submit" class="btn">Create</button>  
                    </p>
					
                    <?php echo form_close(); ?>
                </div>
                <hr>
                <?php }?>

                
                    <h3>About Us List</h3>
                <table id="example" class="display" cellspacing="0" width="100%" style="font-size:12px;">
                    <thead>
                        <tr>
                            <th class="span3">About us</th>
                            <th class="span7">Description</th>
                            <th class="span2">Delete</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php if(isset($records)) : foreach($records as $row) : ?>
                            <?php $onclick = array('onclick'=>"return confirm('Are you sure?')");?>
                            <tr>
                                <td><?=anchor("about/show/$row->about_id","$row->about_name")?></td>
    							<td><?php echo word_limiter($row -> about_desc, 50); ?></td>
    						    <td><?=anchor("about/delete/$row->about_id","Delete", $onclick);?></td>
                            </tr>
                        <?php endforeach; ?>
                    </tbody>
                
                <?php endif; ?>
                </table>
            
                </div>
           
            &nbsp;