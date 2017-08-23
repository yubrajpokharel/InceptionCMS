<!------------------------------- List Portion of the CMS ----------------------------------------------> 
     
    			<!--Model to change user picture-->
                <div id="myModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                  <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">x</button>
                    <h3 id="myModalLabel">Change Staff profile picture</h3>
                  </div>
                  
                  <div class="modal-body">
                  
                  	<?php $attributes = array('class' => 'form-horizontal');?>
                    <?php echo form_open_multipart('staff/change_pro_pic',$attributes); ?>
                    <?php if(isset($records)) : foreach($records as $row) : ?>
                    
                    <div class="control-group hidden">
                        <label class="control-label" for="staff_id">Staff_id</label>    
                        <div class="controls">
                          <input type="text" name="staff_id" id="staff_id" value="<?php echo $row->staff_id;?>" required/>
                        </div>
                    </div>
 
                    <?php endforeach;?>
                    <?php else : ?>
                <?php endif; ?>
                    
					<div class="control-group">
                        <label class="control-label" for="pro_pic">Select Image:</label>    
                        <div class="controls">
                          <input type="file" name="pro_pic" id="pro_pic" title="Where is the image?"required/>
                        </div>
                    </div>
                  </div>
                  
                  
                  <div class="modal-footer">
                    <button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
                    <button type="submit" class="btn btn-primary">Update</button>
                  </div>
                  <?php echo form_close();?>
    			</div>
                <!--Model to change user picture ends here-->
          
            <div class="span9">
                <div class="well">
                    <h3>Staff's detail.</h3>
                <table class="table table-bordered" style="font-size:14px;">
                        <tr>
                            <th colspan="2" bgcolor="#3399FF" style="color:#FFF">Staff Table</th>
                        </tr>
            			<?php if(isset($records)) : foreach($records as $row) : ?>
                    
                      <?php $onclick = array('onclick'=>"return confirm('Are you sure you want to delete this staff member?')");?>
                        <?php $full_name = $row->staff_f_name. " ".$row->staff_l_name; ?>
                        <tr>
                            <td colspan="3" class="span3">
                            	<img class="span3"
                                	src="<?php echo base_url();?>uploads/staffs/thumb/<?php echo $row->staff_pic; ?>" 
                                    alt="<?php echo $full_name; ?>" 
                                    title="<?php echo $full_name; ?>" 
                                />  
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2"><a href="#myModal" role="button" class="btn btn-danger"  data-toggle="modal">Change Profile Picture</a></td>
                        </tr>
                        <tr>
                            <td class="span3">Staff Name</td>
                            <td><?php echo $full_name; ?></td>
                        </tr>
                        <tr>
                            <td>E-Mail Address</td>
                              <td><?php echo $row -> staff_email; ?></td>
                        </tr>
                        <tr>
                            <td>Contact Number</td>
                              <td><?php echo $row -> staff_contact; ?></td>
                        </tr>
						<tr>
                            <td>Date of Birth</td>
                              <td><?php echo $row -> staff_dob; ?></td>
                        </tr>
                        <tr>
                            <td>Permanent Address</td>
                              <td><?php echo $row -> staff_p_address; ?></td>
                        </tr>
                        <tr>
                            <td>Temporary Address</td>
                              <td><?php echo $row -> staff_t_address; ?></td>
                        </tr>
                        <tr>
                            <td>Major Feild</td>
                              <td><?php echo $row -> staff_major_feild; ?></td>
                        </tr>

                        <tr>
                            <td>Facebook</td>
                              <td><a href="<?php echo $row -> facebook; ?>">Visit Facebook</a></td>
                        </tr>
                        <tr>
                            <td>Google+</td>
                              <td><a href="<?php echo $row -> googleplus; ?>">Visit Google+</a></td>
                        </tr>
                        <tr>
                            <td>Twitter</td>
                              <td><a href="<?php echo $row -> twitter; ?>">Visit Twitter</a></td>
                        </tr>
                        <tr>
                            <td>LinkedIn</td>
                              <td><a href="<?php echo $row -> linkedin; ?>">Visit LinkedIn</a></td>
                        </tr>

                        <tr>
                            <td>Description</td>
                              <td><?php echo $row -> staff_desc; ?></td>
                        </tr>
                        <tr>
                            <td>Staff Status</td>
                             <td><?php 
							 		if(($row -> staff_status)==1) {
								 		echo "Active";
								 	}else{
										echo "Unactive";
									} ?></td>
                        </tr>
                        
                        <tr>
                            <td><?=anchor("staff/edit/$row->staff_id","Edit Details");?></td>
                            <td><?=anchor("staff/delete/$row->staff_id","Delete", $onclick);?></td>
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