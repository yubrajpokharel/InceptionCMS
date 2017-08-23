       
    <!------------------------------------------------ List Portion of the CMS ----------------------------------------------------> 
	<?php $this->load->helper('text');	?>
            <div class="span9">
                

                <?php if($total < $this->config->item('max_img_gall')) { ?>
                    <h3>Create a new Gallery</h3>
                    <hr />
					 <?php $attributes = array('class' => 'form-horizontal');
                     echo form_open('gallery/create',$attributes); ?>
                    
					<div class="control-group">
                        <label class="control-label" for="gall_name">Enter Gallery Name:</label>    
                        <div class="controls">
                          <input type="text" name="gall_name" id="gall_name" maxlength="100" required/>
                        </div>
                    </div>
					
                    <!-- <div class="control-group">
                        <label class="control-label" for="gall_type">Select Gallery Type:</label>    
                        <div class="controls">
                          <?php
                                $options = array(
                                    'Annual' => 'Annual',
                                    'Sports' => 'Sports',
									'Outdoor' => 'Outdoor',
									'Conference' => 'Conferences',
									'Extra' => 'Extra Activities'
                                );
                                
                                echo form_dropdown('gall_type', $options, 'Annual');
                            ?>
                        </div>
                    </div> -->
					
                    
					<!-- <div class="control-group">
                        <label class="control-label" for="gall_status">Publish Option:</label>    
                        <div class="controls">
                          <?php
                                $options = array(
                                    '1' => 'Right Now',
                                    '0' => 'Not Now'
                                );
                                
                                echo form_dropdown('gall_status', $options, '1');
                            ?>
                        </div>
                    </div> -->
                    
                    <div class="control-group">
                        <label class="control-label" for="gall_desc">Enter Gallery Detail:</label>    
                        <div class="controls">
                          <textarea rows="5" class="span8" name="gall_desc" id="gall_desc" required></textarea>
                        </div>
                    </div>
                    		
                    
                    <p align="center">
                      <button type="submit" class="btn">Create</button>  
                    </p>
					
                    <?php echo form_close(); ?>
                
                <hr>
                <?php }?>
                <div class="well">
                    <h3>Gallery's List</h3>
                <table id="example" class="display" cellspacing="0" width="100%" style="font-size:12px;">
                    <thead>
                        <tr>
                            <th class="span4">Name</th>
                            <th class="span6">Description</th>
                            <th class="span2">Delete</th>
                        </tr>
                    </thead>
                    <tbody>
                
                 <?php if(isset($records)) : foreach($records as $row) : ?>
                    
                        <?php $onclick = array('onclick'=>"return confirm('Are you sure?')");?>
                        <tr>
                            <td><?=anchor("gallery/show/$row->gall_id","$row->gall_name")?></td>
							<td><?php echo word_limiter($row -> gall_desc, 50); ?></td>
                            <td><?=anchor("gallery/delete/$row->gall_id","Delete", $onclick);?></td>
                        </tr>
                    <?php endforeach; ?>
                </tbody>
                
                <?php endif; ?>
                </table>
            
                </div>
            </div>