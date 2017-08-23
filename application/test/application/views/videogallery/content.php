       
    <!------------------------------------------------ List Portion of the CMS --------------------------------------------------------------> 
	<?php $this->load->helper('text');	?>
            <div class="span9">
                <div class="well">
                    <h3>Create a new Video Gallery</h3>
                    <br />
					 <?php $attributes = array('class' => 'form-horizontal');
                     echo form_open('vgallery/create',$attributes); ?>
                    
					<div class="control-group">
                        <label class="control-label span3" for="gall_name">Enter Video Gallery Name:</label>    
                        <div class="controls">
                          <input type="text" name="gall_name" id="gall_name" maxlength="250" required/>
                        </div>
                    </div>
					
                    <div class="control-group">
                        <label class="control-label span3" for="gall_desc">Enter Gallery Detail:</label>    
                        <div class="controls">
                          <textarea rows="5" class="span10" name="gall_desc" id="gall_desc" required></textarea>
                        </div>
                    </div>
					
                    
					<div class="control-group">
                        <label class="control-label span3" for="gall_status">Publish Option:</label>    
                        <div class="controls">
                          <?php
                                $options = array(
                                    '1' => 'Right Now',
                                    '0' => 'Not Now'
                                );
                                
                                echo form_dropdown('gall_status', $options, '1');
                            ?>
                        </div>
                    </div>
                    
                    
                    		
                    
                    <p align="center">
                      <button type="submit" class="btn">Create</button>  
                    </p>
					
                    <?php echo form_close(); ?>
                </div>
                <hr>
                <div class="well">
                    <h3>Gallery's List</h3>
                <table id="example" class="display" cellspacing="0" width="100%" style="font-size:12px;">
                    <thead>
                        <tr>
                            <th class="span3">Name</th>
                            <th  class="span7">Description</th>
                            <th  class="span2">Delete</th>
                        </tr>
                    </thead>
                    <tbody>
                
                 <?php if(isset($records)) : foreach($records as $row) : ?>
                    
                        <?php $onclick = array('onclick'=>"return confirm('Are you sure?')");?>
                        <tr>
                            <td><?=anchor("vgallery/show/$row->gall_id","$row->gall_name")?></td>
							<td><?php echo word_limiter($row -> gall_desc, 50); ?></td>
                            <td><?=anchor("vgallery/delete/$row->gall_id","Delete", $onclick);?></td>
                        </tr>
                    <?php endforeach; ?>
                </tbody>
                
                <?php endif; ?>
                </table>
            
                </div>
            </div>