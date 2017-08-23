<!--Model to change user picture-->
                <!-- <div id="myModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                  <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">x</button>
                    <h3 id="myModalLabel">Change Staff profile picture</h3>
                  </div>
                  
                  <div class="modal-body">
                  
                  	<?php $attributes = array('class' => 'form-horizontal');?>
                    <?php echo form_open_multipart('category/change_pro_pic',$attributes); ?>
                    <?php if(isset($records)) : foreach($records as $row) : ?>
                    
                    <div class="control-group hidden">
                        <label class="control-label" for="cat_id">Staff_id</label>    
                        <div class="controls">
                          <input type="text" name="cat_id" id="cat_id" value="<?php echo $row->cat_id;?>" required/>
                        </div>
                    </div>
 
                    <?php endforeach;?>
                    <?php else : ?>
                <?php endif; ?>
                    
					<div class="control-group">
                        <label class="control-label" for="cat_pic">Select Image:</label>    
                        <div class="controls">
                          <input type="file" name="cat_pic" id="cat_pic" title="Where is the image?"required/>
                        </div>
                    </div>
                  </div>
                  
                  
                  <div class="modal-footer">
                    <button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
                    <button type="submit" class="btn btn-primary">Update</button>
                  </div>
                  <?php echo form_close();?>
    			</div> -->
                <!--Model to change user picture ends here-->

    
    <!------------------------------- List Portion of the CMS ---------------------------------------------------------->        
            <div class="span9 hero-unit">
                
                <hr>
                <div class="well">
                    <h3>Pakage Detail.</h3>
                <table class="table table-bordered" style="font-size:14px;">
                        <tr>
                            <th colspan="2" bgcolor="#3399FF" style="color:#FFF">Special Packages Table</th>
                        </tr>
            	<?php if(isset($records)) : foreach($records as $row) : ?>
                    
                        <?php $onclick = array('onclick'=>"return confirm('Are you sure?')");?>
                        
                        
                    
                        <tr>
                            <td class="span2">Category Name</td>
                            <td><?php echo $row -> name; ?></td>
                        </tr>
                        <!-- <tr>
                            <td class="span2">नेपाली मा</td>
                            <td><?php echo $row -> np_cat_name; ?></td>
                        </tr> -->
                        <tr>
                            <td>Category Description</td>
                              <td><?php echo $row -> desc; ?></td>
                        </tr>
                        <!-- <tr>
                            <td>नेपाली मा</td>
                              <td><?php echo $row -> np_cat_desc; ?></td>
                        </tr> -->
                        <tr>
                            <td>Category Added on</td>
                              <td><?php echo $row -> date; ?></td>
                        </tr>
                        <tr>
                            <td>Status</td>
                             <td><?php 
							 		if(($row -> status)==1) {
								 		echo "Active";
								 	}else{
										echo "Unactive";
									} ?></td>
                        </tr>
                        
                        <tr>
                            <td><?=anchor("htl_special/edit/$row->id","Edit", $onclick);?></td>
                            <td><?=anchor("htl_special/delete/$row->id","Delete", $onclick);?></td>
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