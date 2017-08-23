

    
    <!------------------------------- List Portion of the CMS -------------------------------------------------------> 
     
    			<!--Model to change user picture-->
                <div id="myModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                  <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">x</button>
                    <h3 id="myModalLabel">Change Trip picture</h3>
                  </div>
                  
                  <div class="modal-body">
                  
                  	<?php $attributes = array('class' => 'form-horizontal');?>
                    <?php echo form_open_multipart('news/change_pro_pic',$attributes); ?>
                    <?php if(isset($records)) : foreach($records as $row) : ?>
                    
                    <div class="control-group hidden">
                        <label class="control-label" for="pack_id">Trip_id</label>    
                        <div class="controls">
                          <input type="text" name="pack_id" id="pack_id" value="<?php echo $row->news_id;?>" required/>
                        </div>
                    </div>
 
                    <?php endforeach;?>
                    <?php else : ?>
                <?php endif; ?>
                    
					<div class="control-group">
                        <label class="control-label" for="pro_pic">Select Image:</label>    
                        <div class="controls">
                          <input type="file" name="pack_pic" id="pack_pic" title="Where is the image?"required/>
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
                    <h3>News's detail.</h3>
                <table class="table table-bordered" style="font-size:14px;">
                        <tr>
                            <th colspan="3" bgcolor="#3399FF" style="color:#FFF">News Table</th>
                        </tr>
            			<?php if(isset($records)) : foreach($records as $row) : ?>
                    
                      <?php $onclick = array('onclick'=>"return confirm('Are you sure you want to delete this staff member?')");?>
                       
                        <tr>
                            <td colspan="2" class="span3">
                            	<img class="span3"
                                	src="<?php echo base_url();?>uploads/news/<?php echo $row->news_image; ?>" 
                                    alt="<?php echo $row->news_heading; ?>" 
                                    title="<?php echo  $row->news_heading; ?>" 
                                />  
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3"><a href="#myModal" role="button" class="btn btn-danger"  data-toggle="modal">Change Package Picture</a></td>
                        </tr>
                        <tr>
                            <td class="span2">news Name</td>
                            <td class="span10"><?php echo $row->news_heading; ?></td>
                            
                        </tr>
                        <tr>
                            <td class="span2">Reporter Name</td>
                            <td class="span10"><?php echo $row->reporter; ?></td>
                            
                        </tr>
                        <tr>
                            <td>News Category</td>
                              <td colspan="2"><?php echo $row -> category_id; ?></td>
                             
                        </tr>
                        <tr>
                            <td>Description</td>
                              <td><?php echo $row -> news_description; ?></td>
                              
                             
                        </tr>
                       
                        <tr>
                            <td>News Added Date</td>
                              <td colspan="2"><?php echo $row -> news_posted_on; ?></td>
                        </tr>
                        
                        <tr>
                            <td>Trip Status</td>
                             <td  colspan="2"><?php 
							 		if(($row -> news_status)==1) {
								 		echo "Active";
								 	}else{
										echo "Unactive";
									} ?></td>
                        </tr>
                        
                        <tr>
                            <td><?=anchor("news/edit/$row->news_id","Edit Details");?></td>
                            <td colspan="2"><?=anchor("news/delete/$row->news_id","Delete", $onclick);?></td>
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