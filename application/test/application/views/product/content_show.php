<!------------------------------- List Portion of the CMS -------------------------------------------------------> 
     
                <!--Model to change user picture-->
                <div id="myModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                  <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">x</button>
                    <h3 id="myModalLabel">Change Special Item picture picture</h3>
                  </div>
                  
                  <div class="modal-body">
                  
                    <?php $attributes = array('class' => 'form-horizontal');?>
                    <?php echo form_open_multipart('product/change_pro_pic',$attributes); ?>
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
                    <h3>Product detail.</h3>
                <table class="table table-bordered" style="font-size:14px;">
                        <tr>
                            <th colspan="3" bgcolor="#3399FF" style="color:#FFF">Special Item Table</th>
                        </tr>
            			<?php if(isset($records)) : foreach($records as $row) : ?>
                    
                      <?php $onclick = array('onclick'=>"return confirm('Are you sure you want to delete this staff member?')");?>
                       
                       <tr>
                            <td colspan="2" class="span3">
                                <img class="span3"
                                    src="<?php echo base_url();?>uploads/product/thumb/<?php echo $row->image; ?>" 
                                    alt="<?php echo $row->name; ?>" 
                                    title="<?php echo $row->name; ?>" 
                                />  
                            </td>
                        </tr>

                        <tr>
                            <td colspan="2"><a href="#myModal" role="button" class="btn btn-danger"  data-toggle="modal">Change Special Item Picture</a></td>
                        </tr>
                        
                        <tr>
                            <td class="span2">Category</td>
                            <td class="span10"><?php echo $row->cat; ?></td>
                        </tr>

                        <tr>
                            <td class="span2">Item Name</td>
                            <td class="span10"><?php echo $row->name; ?></td>
                        </tr>
                        <tr>
                            <td class="span2">Item Price</td>
                            <td class="span10">$ <?php echo $row->price; ?></td>
                        </tr>
                        <tr>
                            <td class="span2">Item Description</td>
                            <td class="span10"><?php echo $row->description; ?></td>
                        </tr>
                        
                       
                        <tr>
                            <td>Item Added Date</td>
                              <td colspan="2"><?php echo $row -> date_added; ?></td>
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
                            <td><?=anchor("product/edit/$row->id","Edit Details");?></td>
                            <td colspan="2"><?=anchor("product/delete/$row->id","Delete", $onclick);?></td>
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