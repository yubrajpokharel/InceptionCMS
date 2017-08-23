       
    <!------------------------------------------------ List Portion of the CMS ----------------------------------------------------------------------> 
	<?php $this->load->helper('text');	?>
            <div class="span9">
                <div class="well">
                <?php if($total < $this->config->item('max_services')) { ?>
                    <h3>Create New Services</h3>
					 <?php $attributes = array('class' => 'form-horizontal');
                     echo form_open_multipart('services/create',$attributes); ?>
                    
                    <div class="control-group">
                        <label class="control-label" for="service_name">Enter Title:</label>    
                        <div class="controls">
                          <input type="text"  class="span5" name="service_name" id="service_name" required min="15">
                        </div>
                    </div>
                    
                    <div class="control-group">
                        <label class="control-label" for="service_desc">Enter Details:</label>    
                        <div class="controls">
                          <textarea type="text" class="span10" rows="5" name="service_desc" id="service_desc" rows="5"  title="Are not this detail is too short" required></textarea>
                        </div>
                    </div>

                    <p align="center">
                      <button type="submit" class="btn">Create</button>  
                    </p>
					
                    <?php echo form_close(); ?>
                </div>
                <hr>
                <?php } ?>
                
                    <h3>Service List</h3>
                <table id="example" class="display" cellspacing="0" width="100%" style="font-size:12px;">
                    <thead>
                        <tr>
                            <th>Service</th>
                            <th class="hidden-phone">Description</th>
                            <th>Delete</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php if(isset($records)) : foreach($records as $row) : ?>
                        
                            <?php $onclick = array('onclick'=>"return confirm('Are you sure?')");?>
                            <tr>
                                <td class="span3"><?=anchor("services/show/$row->service_id","$row->service_name")?></td>
    							<td class="span7 hidden-phone"><?php echo word_limiter($row -> service_desc, 25); ?></td>
    						    <td class="span2"><?=anchor("services/delete/$row->service_id","Delete", $onclick);?></td>
                            </tr>
                        <?php endforeach; ?>
                </tbody>
                <?php endif; ?>
                </table>
            </div>