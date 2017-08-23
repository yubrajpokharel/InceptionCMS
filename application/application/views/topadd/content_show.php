

    
    <!------------------------------- List Portion of the CMS -------------------------------------------------------> 
     
    			<!--Model to change user picture-->
                <div id="myModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                  <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">x</button>
                    <h3 id="myModalLabel">Change Add picture</h3>
                  </div>
                  
                  <div class="modal-body">
                  
                  	<?php $attributes = array('class' => 'form-horizontal');?>
                    <?php echo form_open_multipart('topadd/change_pro_pic',$attributes); ?>
                    <?php if(isset($records)) : foreach($records as $row) : ?>
                    
                    <div class="control-group hidden">
                        <label class="control-label" for="add_id">Add_id</label>    
                        <div class="controls">
                          <input type="text" name="add_id" id="add_id" value="<?php echo $row->add_id;?>" required/>
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
                    <h3>Advertisement's detail.</h3>
                <table class="table table-bordered" style="font-size:14px;">
                        <tr>
                            <th colspan="2" bgcolor="#3399FF" style="color:#FFF">Addvertisement Table</th>
                        </tr>
            			<?php if(isset($records)) : foreach($records as $row) : ?>
                    
                      <?php $onclick = array('onclick'=>"return confirm('Are you sure you want to delete this staff member?')");?>
                        <?php $add_name = $row->add_name; ?>
                        <tr>
                            <td colspan="3" class="span3">
                            	<img class="span3"
                                	src="<?php echo base_url();?>uploads/add/<?php echo $row->add_doc; ?>" 
                                    alt="<?php echo $add_name; ?>" 
                                    title="<?php echo $add_name; ?>" 
                                />  
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2"><a href="#myModal" role="button" class="btn btn-danger"  data-toggle="modal">Change Profile Picture</a></td>
                        </tr>
                        <tr>
                            <td class="span2">Add Name</td>
                            <td><?php echo $row->add_name ?></td>
                        </tr>
                        <tr>
                            <td class="span2">Contact Number</td>
                            <td><?php echo $row->add_contact ?></td>
                        </tr>
                        <tr>
                            <td>Add URL</td>
                              <td><a href="<?php echo $row -> add_link; ?>">Click here</a></td>
                        </tr>
                        <!-- <tr>
                            <td>Add associated page</td>
                              <td><?php echo $row -> add_page; ?></td>
                        </tr> -->
						<tr>
                            <td>Add Rate</td>
                              <td><strong>NPr. <?php echo $row -> add_rate; ?>/month</strong></td>
                        </tr>
                        <tr>
                            <td>Add Added for</td>
                              <td><?php echo $row -> add_added_for; ?> months</td>
                        </tr>
                        
                        <tr>
                            <td>Add Status</td>
                             <td><?php 
							 		if(($row -> add_status)==1) {
								 		echo "Active";
								 	}else{
										echo "Unactive";
									} ?></td>
                        </tr>
                        
                        <tr>
                            <td><?=anchor("topadd/edit/$row->add_id","Edit Details");?></td>
                            <td><?=anchor("topadd/delete/$row->add_id","Delete", $onclick);?></td>
                        </tr>
                    
                    
                
                    <?php endforeach; ?>
                
                <?php else : ?>
                <tr>
                    <td colspan="3">No result found</td>
                </tr>
                
                <?php endif; ?>
                </table>
                <a href="<?=base_url('index.php/topadd/')?>"><i class="fa fa-chevron-left"></i>&nbsp;Go Back</a>
            
                </div>
            </div>