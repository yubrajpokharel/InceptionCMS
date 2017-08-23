       
    <!------------------------------------------------ List Portion of the CMS ------------------------------------------------------------------> 
	<?php $this->load->helper('text');	?>
            <div class="span9">
                <div class="well">
                    <h3>Create News Categories</h3>
					 <?php $attributes = array('class' => 'form-horizontal');
                     echo form_open_multipart('category/create',$attributes); ?>
                     
                    
                    <div class="control-group">
                        <label class="control-label" for="category_name">Enter Title:</label>    
                        <div class="controls">
                          <input type="text"  class="span5" name="category_name" id="category_name" required min="15">
                        </div>
                    </div>
                    
                    
                    
                    <div class="control-group">
                        <label class="control-label" for="category_desc">Enter Description:</label>    
                        <div class="controls">
                          <textarea type="text" class="span8" name="category_desc" id="category_desc" rows="5"  title="Are not this detail is too short"></textarea>
                        </div>
                    </div>
                    
                    

                    <p align="center">
                      <button type="submit" class="btn">Create</button>  
                    </p>
					
                    <?php echo form_close(); ?>
                </div>
                <hr>
                <div class="well">
                    <h3>Categories List</h3>
                <table id="example" class="display" cellspacing="0" width="100%" style="font-size:12px;">
                    <thead>
                        <tr>
                            <th class="span4">Name</th>
                            <th class="span6">Description</th>
                            <th class="span2">Delete</th>
                        </tr>
                    </thead>
                    <tbody>
                
                 <?php if(isset($records)) : foreach($records as $row) : ?>
                    
                        <?php $onclick = array('onclick'=>"return confirm('Are you sure?')");?>
                        <tr>
                            <td><?=anchor("category/show/$row->cat_id","$row->cat_name")?></td>
							<td><?php echo word_limiter($row -> cat_desc, 50); ?></td>
						    <td><?=anchor("category/delete/$row->cat_id","Delete", $onclick);?></td>
                        </tr>
                    <?php endforeach; ?>
                </tbody>
                
                <?php endif; ?>
                </table>
            
                </div>
            </div>