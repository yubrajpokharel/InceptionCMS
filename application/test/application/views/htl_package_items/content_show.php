
<!------------------------------- List Portion of the CMS ----------------------------------> 
                <div id="myModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                  <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">x</button>
                    <h3 id="myModalLabel">Change Item picture picture</h3>
                  </div>
                  
                  <div class="modal-body">
                  
                    <?php $attributes = array('class' => 'form-horizontal');?>
                    <?php echo form_open_multipart('Htl_package_items/change_pro_pic',$attributes); ?>
                    <?php if(isset($records)) : foreach($records as $row) : ?>
                    
                    <div class="control-group hidden">
                        <label class="control-label" for="id">Item ID</label>    
                        <div class="controls">
                          <input type="text" name="id" id="id" value="<?php echo $row->id;?>" required/>
                        </div>
                    </div>
 
                    <?php endforeach;?>
                    <?php else : ?>
                <?php endif; ?>
                    
                    <div class="control-group">
                        <label class="control-label" for="pic">Select Image:</label>    
                        <div class="controls">
                          <input type="file" name="pic" id="pic" title="Where is the image?"required/>
                        </div>
                    </div>
                  </div>
                  
                  
                  <div class="modal-footer">
                    <button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
                    <button type="submit" class="btn btn-primary">Update</button>
                  </div>
                  <?php echo form_close();?>
                </div>
<!-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% -->
                <div id="myModal2" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                  <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">x</button>
                    <h3 id="myModalLabel">Change Item picture picture</h3>
                  </div>
                  
                  <div class="modal-body">
                  
                    <?php $attributes = array('class' => 'form-horizontal');?>
                    <?php echo form_open_multipart('Htl_package_items/change_pro_pic2',$attributes); ?>
                    <?php if(isset($records)) : foreach($records as $row) : ?>
                    
                    <div class="control-group hidden">
                        <label class="control-label" for="id">Item ID</label>    
                        <div class="controls">
                          <input type="text" name="id" id="id" value="<?php echo $row->id;?>" required/>
                        </div>
                    </div>
 
                    <?php endforeach;?>
                    <?php else : ?>
                <?php endif; ?>
                    
                    <div class="control-group">
                        <label class="control-label" for="pic">Select Image:</label>    
                        <div class="controls">
                          <input type="file" name="pic" id="pic" title="Where is the image?"required/>
                        </div>
                    </div>
                  </div>
                  
                  
                  <div class="modal-footer">
                    <button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
                    <button type="submit" class="btn btn-primary">Update</button>
                  </div>
                  <?php echo form_close();?>
                </div>
<!------------Model to change user picture ends here-------------------------------------->


    
<!------------------------------- List Portion of the CMS --------------------------------------------------------> 
     
    			
          
            <div class="span9">
                <div class="well">
                    <h3>Item's detail.</h3>
                <table class="table table-bordered" style="font-size:14px;">
                        <tr>
                            <th colspan="3" bgcolor="#3399FF" style="color:#FFF">Item Table</th>
                        </tr>
            			<?php if(isset($records)) : foreach($records as $row) : ?>
                    
                      <?php $onclick = array('onclick'=>"return confirm('Are you sure you want to delete this staff member?')");?>
                       <tr>
                            <td class="span3">
                            <?php if($row->image1 !=NULL){?>
                                <img class="span10"
                                    src="<?php echo base_url();?>uploads/menu/<?php echo $row->image1; ?>" 
                                    alt="<?php echo $row->name; ?>" 
                                    title="<?php echo $row->name; ?>" 
                                />  
                            </td>
                            <?php }else echo "No image 1";?>
                            <td class="span3">
                             <?php if($row->image2 !=NULL){?>
                                <img class="span3"
                                    src="<?php echo base_url();?>uploads/menu/<?php echo $row->image2; ?>" 
                                    alt="<?php echo $row->name; ?>" 
                                    title="<?php echo $row->name; ?>" 
                                />  
                            </td>
                            <?php }else echo "No image 2";?>
                        </tr>

                        <tr>
                            <td><a href="#myModal" role="button" class="btn btn-danger"  data-toggle="modal">Change Item Picture</a></td>
                            <td><a href="#myModal2" role="button" class="btn btn-danger"  data-toggle="modal">Change Item Picture</a></td>
                        </tr>
                    
                        <tr>
                            <td class="span3">Item Name</td>
                            <td class="span9"><?php echo $row->name; ?></td>
                        </tr>
                        <tr>
                            <td class="span3">Item Price</td>
                            <td class="span9">$ <?php echo $row->price; ?></td>
                        </tr>
                         <tr>
                            <td class="span3">Short Description</td>
                            <td class="span9"><?php echo $row->short_desc; ?></td>
                        </tr>
                        <tr>
                            <td class="span3">Long Description</td>
                            <td class="span9"><?php echo $row->desc; ?></td>
                        </tr>
                        
                       
                        <tr>
                            <td>Item Added Date</td>
                              <td colspan="2"><?php echo $row -> date; ?></td>
                        </tr>
                        
                        <tr>
                            <td>Item Status</td>
                             <td  colspan="2"><?php 
							 		if(($row -> status)==1) {
								 		echo "Active";
								 	}else{
										echo "Unactive";
									} ?></td>
                        </tr>
                        
                        <tr>
                            <td><?=anchor("htl_package_items/edit/$row->id","Edit Details");?></td>
                            <?php 
                                if($row->pack_id == 1) $rdr = "breakfast";
                                if($row->pack_id == 2) $rdr = "lunch";
                                if($row->pack_id == 3) $rdr = "dinner";
                                if($row->pack_id == 4) $rdr = "bar";
                            ?>
                            <td colspan="2"><?=anchor("htl_package_items/delete/$row->id/".$rdr,"Delete", $onclick);?></td>
                        </tr>
                    
                    
                
                    <?php endforeach; ?>
                
                <?php else : ?>
                <tr>
                    <td colspan="2">No result found</td>
                </tr>
                
                <?php endif; ?>
                </table>
            
                </div>
            </div>