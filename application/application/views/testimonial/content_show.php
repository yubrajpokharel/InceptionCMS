

    
    <!------------------------------- List Portion of the CMS ---------------------------------------->        
            <div class="span9">
                <div class="well">
                    <h3>Blog Detail.</h3>
                <table class="table table-bordered" style="font-size:14px;">
                        <tr>
                            <th colspan="2" bgcolor="#3399FF" style="color:#FFF">Marquee</th>
                        </tr>
            	       <?php if(isset($records)) : foreach($records as $row) : ?>
                        <?php $onclick = array('onclick'=>"return confirm('Are you sure?')");?>
                        <?php if($this->config->item('testimonial_image')) { ?>
                         <tr>
                            <td colspan="3" class="span3"> 
                                <img class="span3"
                                    src="<?php echo base_url();?>uploads/testimonial/<?php echo $row->pic; ?>" 
                                    title="<?php echo $row -> detail; ?>" 
                                />  
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3"><a href="#myModal" role="button" class="btn btn-danger"  data-toggle="modal">Change Picture</a></td>
                        </tr> 
                        <?php } ?>
                        
                        
                        <tr>
                            <td class="span3">Contact Name</td>
                            <td><?php echo $row -> contact_name; ?></td>
                        </tr>

                        <tr>
                            <td class="span3">Person Detail</td>
                            <td><?php echo $row -> detail; ?></td>
                        </tr>
                        
                        <tr>
                            <td>Text</td>
                              <td><?php echo $row -> text; ?></td>
                        </tr>
                        <tr>
                            <td>Service Added on</td>
                              <td><?php echo $row -> added; ?></td>
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
                            <td><?=anchor("testimonial/edit/$row->id","Edit", $onclick);?></td>
                            <td><?=anchor("testimonial/delete/$row->id","Delete", $onclick);?></td>
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

<!-- dialog for changing image -->
<div id="myModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">x</button>
    <h3 id="myModalLabel">Change user picture</h3>
  </div>
  
  <div class="modal-body">
  
    <?php $attributes = array('class' => 'form-horizontal');?>
    <?php echo form_open_multipart('testimonial/change_pro_pic',$attributes); ?>
    <?php if(isset($records)) : foreach($records as $row) : ?>
    
    <div class="control-group hidden">
        <label class="control-label" for="about_id">id</label>    
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