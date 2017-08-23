       
    <!------------------------------------------------ List Portion of the CMS --------------------------------------------------------------------> 
	<?php $this->load->helper('text');	?>
            <div class="span9">
                <div class="well">
                    <h3>Add new Image to Crousal</h3>
					 <?php $attributes = array('class' => 'form-horizontal');
                     echo form_open_multipart('crousal/create',$attributes); ?>
 
                    <div class="control-group">
                        <label class="control-label" for="latest_pic">Select Image:</label>    
                        <div class="controls">
                          <input type="file" name="latest_attach" id="latest_attach" maxlength="250" required/>
                        </div>
                    </div>
					
					
					
                    
                    <p align="center">
                      <button type="submit" class="btn">Create</button>  
                    </p>
					
                    <?php echo form_close(); ?>
                </div>
                <hr>
                <div class="well">
                    <h3>Crousal Images</h3>
                <table class="table table-bordered" style="font-size:14px;">
                        <tr>
                            <th>Image</th>
                            <th>Action</th>
                        </tr>
                
                 <?php if(isset($records)) : foreach($records as $row) : ?>
                    
                        <?php $onclick = array('onclick'=>"return confirm('Are you sure?')");?>
                        <tr>
                            <td><img class="thumbnail"  height="180px" width="350px"  src="<?php echo base_url('uploads/trips/').'/'.$row->crousal_image?>"</td>
						    <td><?=anchor("crousal/delete/$row->crousal_id","Delete", $onclick);?></td>
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