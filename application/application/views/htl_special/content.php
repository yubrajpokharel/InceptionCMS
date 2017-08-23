       
    <!------------------------------------------------ List Portion of the CMS ----------------------------------------------------------------> 
	<?php $this->load->helper('text');	?>
            <div class="span9 hero-unit">
                <div class="well">
                    <h3>Create Package</h3>
					 <?php $attributes = array('class' => 'form-horizontal');
                     echo form_open_multipart('htl_special/create',$attributes); ?>
                     
                     
                     <!-- <div class="control-group">
                        <label class="control-label" for="pro_pic">Select the Picture:</label>    
                        <div class="controls">
                          <input type="file" name="pro_pic" id="pro_pic" required/>
                        </div>
                    </div> -->
                    
                    <div class="control-group">
                        <label class="control-label" for="category_name">Enter Title:</label>    
                        <div class="controls">
                          <input type="text"  class="span10" name="category_name" id="category_name" required min="15">
                        </div>
                    </div>
                    
                    <!-- <div class="control-group">
                        <label class="control-label" for="np_category_name">नेपाली मा:</label>    
                        <div class="controls">
                          <input type="text"  class="span5" name="np_category_name" id="np_category_name" required min="15">
                        </div>
                    </div> -->
                    
                    <div class="control-group">
                        <label class="control-label" for="category_desc">Enter Description:</label>    
                        <div class="controls">
                          <textarea type="text" class="span10" name="category_desc" id="category_desc" rows="5"  title="Are not this detail is too short"></textarea>
                        </div>
                    </div>
                    
                    <!-- <div class="control-group">
                        <label class="control-label" for="np_category_desc">नेपाली मा विवरण:</label>    
                        <div class="controls">
                          <textarea type="text" class="span8" name="np_category_desc" id="np_category_desc" rows="5"  title="Are not this detail is too short" required></textarea>
                        </div>
                    </div> -->

                    <p align="center">
                      <button type="submit" class="btn">Create</button>  
                    </p>
					
                    <?php echo form_close(); ?>
                </div>
                <hr>
                <div class="well">
                    <h3>Categories List</h3>
                <table class="table table-bordered" style="font-size:14px;">
                        <tr>
                            <th>Name</th>
                            <th>Description</th>
                            <th>Delete</th>
                        </tr>
                
                 <?php if(isset($records)) : foreach($records as $row) : ?>
                    
                        <?php $onclick = array('onclick'=>"return confirm('Are you sure?')");?>
                        <tr>
                            <td><?=anchor("htl_special/show/$row->id","$row->name")?></td>
							<td><?php echo word_limiter($row -> desc, 50); ?></td>
						    <td><?=anchor("htl_special/delete/$row->id","Delete", $onclick);?></td>
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