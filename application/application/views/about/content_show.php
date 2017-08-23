<div id="myModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                  <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">x</button>
                    <h3 id="myModalLabel">Change About picture</h3>
                  </div>
                  
                  <div class="modal-body">
                  
                  	<?php $attributes = array('class' => 'form-horizontal');?>
                    <?php echo form_open_multipart('about/change_pro_pic',$attributes); ?>
                    <?php if(isset($records)) : foreach($records as $row) : ?>
                    
                    <div class="control-group hidden">
                        <label class="control-label" for="about_id">about_id</label>    
                        <div class="controls">
                          <input type="text" name="about_id" id="about_id" value="<?php echo $row->about_id;?>" required/>
                        </div>
                    </div>
 
                    <?php endforeach;?>
                    <?php else : ?>
                <?php endif; ?>
                    
					<div class="control-group">
                        <label class="control-label" for="about_pic">Select Image:</label>    
                        <div class="controls">
                          <input type="file" name="about_pic" id="about_pic" title="Where is the image?"required/>
                        </div>
                    </div>
                  </div>
                  
                  
                  <div class="modal-footer">
                    <button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
                    <button type="submit" class="btn btn-primary">Update</button>
                  </div>
                  <?php echo form_close();?>
    			</div>

    
    <!------------------------------- List Portion of the CMS ----------------------------------------------------- -->        
            <div class="span9">
                <div class="well">
                    <h3>About us.</h3>
                <table class="table table-bordered" style="font-size:14px;">
                        <tr>
                            <th colspan="3" bgcolor="#3399FF" style="color:#FFF">About Table</th>
                        </tr>
                        
            	   <?php if(isset($records)) : foreach($records as $row) : ?> 
                        <?php $onclick = array('onclick'=>"return confirm('Are you sure?')");?>
                        <?php if($this->config->item('about_us_image')) { ?>
                         <tr>
                            <td colspan="3" class="span3"> 
                            	<img class="span3"
                                	src="<?php echo base_url();?>uploads/aboutus/<?php echo $row->about_image; ?>" 
                                    alt="<?php echo $row -> about_name; ?>" 
                                    title="<?php echo $row -> about_name; ?>" 
                                />  
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3"><a href="#myModal" role="button" class="btn btn-danger"  data-toggle="modal">Change Picture</a></td>
                        </tr> 
                        <?php } ?>
                        
                        <tr>
                            <td class="span2">About Title</td>
                            <td class="span5"><?php echo $row -> about_name; ?></td>
                            <!-- <td class="span5"><?php echo $row -> ch_about_name; ?></td> -->
                        </tr>
                        <tr>
                            <td>About Description</td>
                            <td colspan="2"><?php echo $row -> about_desc; ?></td>
                            <!-- <td class="span5"><?php echo $row -> ch_about_desc; ?></td> -->
                        </tr>
                        <tr>
                            <td>About Added on</td>
                              <td colspan="3"><?php echo $row -> about_added; ?></td>
                        </tr>
                        <tr>
                            <td>Status</td>
                             <td colspan="3"><?php 
							 		if(($row -> about_status)==1) {
								 		echo "Active";
								 	}else{
										echo "Unactive";
									} ?></td>
                        </tr>
                        
                        <tr>
                            <td colspan="2"><?=anchor("about/edit/$row->about_id","Edit", $onclick);?></td>
                            <td><?=anchor("about/delete/$row->about_id","Delete", $onclick);?></td>
                        </tr>
                    
                    
                
                    <?php endforeach; ?>
                
                <?php else : ?>
                <tr>
                    <td colspan="3">No result found</td>
                </tr>
                
                <?php endif; ?>
                </table>
            
                </div>
            </div>