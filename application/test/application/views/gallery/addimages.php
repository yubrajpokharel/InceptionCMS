

    
    <!------------------------------- List Portion of the CMS ---------------------------------------------->        
            <div class="span9">
                <div class="well <?php if(!isset($error)) echo "hidden";?>"><?php if(isset($error)) echo $error;?></div>
              <div class="well">
                    <h3>Add Images to the gallery</h3>  
                <?php $onclick = array('onclick'=>"return confirm('Are you sure to delete this Image?')");?>                  
                <?php $attributes = array('class' => 'form-horizontal');
                     echo form_open_multipart('gallery/uploadpic',$attributes); ?>
 
                        <div class="control-group hidden">
                                <label class="control-label" for="gall_id">Select the Picture:</label>    
                                <div class="controls">
                                  <input type="text" name="gall_id" id="gall_id" value="<?php echo $this->uri->segment(3);?>" required/>
                                </div>
                        </div>
                        
                        <div class="control-group">
                                <label class="control-label" for="pic">Select the Picture:</label>    
                                <div class="controls">
                                  <input type="file" name="pic" id="pic" required/>
                                </div>
                        </div>

                        <div class="control-group">
                                <label class="control-label" for="caption">Picture caption:</label>    
                                <div class="controls">
                                  <input type="text" name="caption" id="caption"/>
                                </div>
                        </div>

                        <div class="control-group">
                        <p align="left">
                          <button type="submit" class="btn btn-primary">Upload</button>  
                        </p>
                        </div>
					
                    <?php echo form_close(); ?>
                </div>
                <table width="150px">
                	
                <?php if(isset($records)) : foreach($records as $row) : ?>
                   	  <tr>
                      	<td width="100px"><img class="span12 img-polaroid" src="<?php echo base_url();?>uploads/gallery/<?php echo $row->image_name; ?>"/></td>
                        <td width="50px"><?=anchor("gallery/delete_individual_image/$row->gall_img_id/$row->gall_id","Delete", $onclick);?></td>
                      </tr>
                  <?php endforeach; ?>
                  <?php else:
				  	echo '<tr><td colspan="2">';
						echo "No images Uploaded yet!"; 
						echo '</td></tr>'; ?>
                        
                        
                  <?php endif;?> 
                  </table>
            </div>