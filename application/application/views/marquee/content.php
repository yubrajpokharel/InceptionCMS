       
    <!------------------------------------------------ List Portion of the CMS -------------------------------------------------------------------------------> 
	<?php $this->load->helper('text');	?>
            <div class="span9 hero-unit">
                <div class="well">
                    <h3>Create Marquee Text</h3>
					 <?php $attributes = array('class' => 'form-horizontal');
                     echo form_open_multipart('marquee/create',$attributes); ?>
                    
                    <div class="control-group">
                        <label class="control-label" for="marquee_name">Enter Name:</label>    
                        <div class="controls">
                          <input type="text"  class="span5" name="marquee_name" id="marquee_name" required min="15">
                        </div>
                    </div>
                    
                   <!--  <div class="control-group">
                        <label class="control-label" for="contact_number">Contact Number:</label>    
                        <div class="controls">
                          <input type="tel" pattern="[0-9]{3}-[0-9]{10}" title="Telephone Format: 977-9804552309" name="contact_number" id="contact_number" maxlength="15"/>
                        </div>
                    </div> -->
                    
                    <div class="control-group">
                        <label class="control-label" for="marquee_desc">Enter Text:</label>    
                        <div class="controls">
                          <textarea type="text" class="span8" name="marquee_desc" id="marquee_desc" rows="5"  title="Are not this detail is too short" required></textarea>
                        </div>
                    </div>

                    <p align="center">
                      <button type="submit" class="btn">Create</button>  
                    </p>
					
                    <?php echo form_close(); ?>
                </div>
                <hr>
                <div class="well">
                    <h3>Marquee List</h3>
                <table class="table table-bordered" style="font-size:14px;">
                        <tr>
                            <th class="span4">Person Name</th>
                            <th class="span6">Text</th>
                            <th>Delete</th>
                        </tr>
                
                 <?php if(isset($records)) : foreach($records as $row) : ?>
                    
                        <?php $onclick = array('onclick'=>"return confirm('Are you sure?')");?>
                        <tr>
                            <td><?=anchor("marquee/show/$row->marquee_id","$row->contact_name")?></td>
							<td><?php echo word_limiter($row -> marquee_text, 50); ?></td>
						    <td><?=anchor("marquee/delete/$row->marquee_id","Delete", $onclick);?></td>
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