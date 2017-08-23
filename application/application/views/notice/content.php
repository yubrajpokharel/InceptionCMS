       
    <!------------------------------------------------ List Portion of the CMS ----------------------------------------------------------------------------> 
	<?php $this->load->helper('text');	?>
            <div class="span9">
                <div class="well">
                    <h3>Upload PDF</h3>
					 <?php $attributes = array('class' => 'form-horizontal');
                     echo form_open_multipart('notice/create',$attributes); ?>
                    
                    <div class="control-group">
                        <label class="control-label" for="latest_name">Enter Title:</label>    
                        <div class="controls">
                          <input type="text"  class="span5" name="latest_name" id="latest_name" required min="15">
                        </div>
                    </div>
                    
                    
                    <div class="control-group">
                        <label class="control-label" for="latest_pic">Choose File:</label>    
                        <div class="controls">
                          <input type="file" name="latest_attach" id="latest_attach" maxlength="100" required/>
                        </div>
                    </div>
					
					
					
                    
                    <p align="center">
                      <button type="submit" class="btn">Create</button>  
                    </p>
					
                    <?php echo form_close(); ?>
                </div>
                <hr>
                <div class="well">
                    <h3>PDF List</h3>
                <table class="table table-bordered" style="font-size:14px;">
                        <tr>
                            <th>News</th>
                            
                            <th>Delete</th>
                        </tr>
                
                 <?php if(isset($records)) : foreach($records as $row) : ?>
                    
                        <?php $onclick = array('onclick'=>"return confirm('Are you sure?')");?>
                        <tr>
                            <td><?=anchor("notice/show/$row->notice_id","$row->notice_name")?></td>
							
						    <td><?=anchor("notice/delete/$row->notice_id","Delete", $onclick);?></td>
                        </tr>
                    <?php endforeach; ?>
                <?php else : ?>
                <tr>
                    <td bgcolor="#FF3333" colspan="3"><font color="#FFFFFF"> No Records </font></td>
                </tr>
                
                <?php endif; ?>
                </table>
            
                </div>
            </div>