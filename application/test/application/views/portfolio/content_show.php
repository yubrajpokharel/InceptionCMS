   <div id="myModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                  <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">x</button>
                    <h3 id="myModalLabel">Change Portfolio Image </h3>
                  </div>
                  
                  <div class="modal-body">
                  
                  	<?php $attributes = array('class' => 'form-horizontal');?>
                    <?php echo form_open_multipart('portfolio/change_portfolio_attach',$attributes); ?>
                    <?php if(isset($records)) : foreach($records as $row) : ?>
                    
                    <div class="control-group hidden">
                        <label class="control-label" for="id">ID</label>    
                        <div class="controls">
                          <input type="text" name="latest_id" id="id" value="<?php echo $row->id;?>" required/>
                        </div>
                    </div>
 
                    <?php endforeach;?>
                    <?php else : ?>
                <?php endif; ?>
                    
					<div class="control-group">
                        <label class="control-label" for="pro_pic">Select Attachments:</label>    
                        <div class="controls">
                          <input type="file" name="pic" id="pic" title="Where is the attachment?"required/>
                        </div>
                    </div>
                  </div>
                  
                  
                  <div class="modal-footer">
                    <button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
                    <button type="submit" class="btn btn-primary">Update</button>
                  </div>
                  <?php echo form_close();?>
    			</div>

    <!------------------------------- List Portion of the CMS -------------------------------------------->        
            <div class="span9">
                <div class="well">
                    <h3>Portfolio Detail.</h3>
                <table class="table table-bordered" style="font-size:14px;">
                        <tr>
                            <th colspan="2" bgcolor="#3399FF" style="color:#FFF">Portfolio Table</th>
                        </tr>
            <?php if(isset($records)) : foreach($records as $row) : ?>
                    
                        
                        <?php $onclick = array('onclick'=>"return confirm('Are you sure?')");?>
                        <tr>
                            <td colspan="3" class="span3">
                                <img class="span3"
                                    src="<?php echo base_url();?>uploads/portfolio/thumb/<?php echo $row->image; ?>" 
                                    alt="<?php echo $row -> name; ?>" 
                                    title="<?php echo $row -> name; ?>" 
                                />  
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3"><a href="#myModal" role="button" class="btn btn-danger"  data-toggle="modal">Change Attachment</a></td>
                        </tr>
                        <tr>
                            <td class="span3">portfolio Name</td>
                            <td><?php echo $row -> name; ?></td>
                        </tr>
                        <tr>
                            <td>Portfolio Description</td>
                              <td><?php echo $row -> desc; ?></td>
                        </tr>
                        <tr>
                            <td>Added Date</td>
                              <td><?php echo $row -> date_created; ?></td>
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
                            <td><?=anchor("portfolio/edit/$row->id","Edit", $onclick);?></td>
                            <td><?=anchor("portfolio/delete/$row->id","Delete", $onclick);?></td>
                        </tr>
                    
                    
                
                    <?php endforeach; ?>
                
                <?php else : ?>
                <tr>
                    <td colspan="3">No result found</td>
                </tr>
                
                <?php endif; ?>
                </table>
                <a href="<?=base_url('index.php/portfolio/')?>"><i class="fa fa-chevron-left"></i>&nbsp;Go Back</a>
                </div>
            </div>