   <div id="myModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                  <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">x</button>
                    <h3 id="myModalLabel">Change Notice Attachments </h3>
                  </div>
                  
                  <div class="modal-body">
                  
                  	<?php $attributes = array('class' => 'form-horizontal');?>
                    <?php echo form_open_multipart('notice/change_notice_attach',$attributes); ?>
                    <?php if(isset($records)) : foreach($records as $row) : ?>
                    
                    <div class="control-group hidden">
                        <label class="control-label" for="latest_id">notice_id</label>    
                        <div class="controls">
                          <input type="text" name="latest_id" id="latest_id" value="<?php echo $row->notice_id;?>" required/>
                        </div>
                    </div>
 
                    <?php endforeach;?>
                    <?php else : ?>
                <?php endif; ?>
                    
					<div class="control-group">
                        <label class="control-label" for="pro_pic">Select Attachments:</label>    
                        <div class="controls">
                          <input type="file" name="pro_pic" id="pro_pic" title="Where is the attachment?"required/>
                        </div>
                    </div>
                  </div>
                  
                  
                  <div class="modal-footer">
                    <button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
                    <button type="submit" class="btn btn-primary">Update</button>
                  </div>
                  <?php echo form_close();?>
    			</div>

    <!------------------------------- List Portion of the CMS ------------------------------------------>        
            <div class="span9">
                
                <hr>
                <div class="well">
                    <h3>Notice Detail.</h3>
                <table class="table table-bordered" style="font-size:14px;">
                        <tr>
                            <th colspan="2" bgcolor="#3399FF" style="color:#FFF">Notice Table</th>
                        </tr>
            <?php if(isset($records)) : foreach($records as $row) : ?>
                    
                        
                        <?php $onclick = array('onclick'=>"return confirm('Are you sure?')");?>
                        <tr>
                            <td colspan="2"><a href="#myModal" role="button" class="btn btn-danger"  data-toggle="modal">Change Attachment</a></td>
                        </tr>
                        <tr>
                            <td class="span2">Notice Name</td>
                            <td><?php echo $row -> notice_name; ?></td>
                        </tr>
                        <tr>
                            <td>Notice Description</td>
                              <td><?php echo $row -> notice_detail; ?></td>
                        </tr>
                        <tr>
                            <td>Notice Date</td>
                              <td><?php echo $row -> notice_date; ?></td>
                        </tr>
                        <tr>
                            <td>Notice Status</td>
                             <td><?php 
							 		if(($row -> latest_status)==1) {
								 		echo "Active";
								 	}else{
										echo "Unactive";
									} ?></td>
                        </tr>
                        
                        <tr>
                            <td><?=anchor("notice/edit/$row->notice_id","Edit", $onclick);?></td>
                            <td><?=anchor("notice/delete/$row->notice_id","Delete", $onclick);?></td>
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