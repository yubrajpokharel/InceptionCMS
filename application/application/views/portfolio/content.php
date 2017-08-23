       
    <!------------------------------------------------ List Portion of the CMS ----------------------------------------------------------------------> 
	<?php $this->load->helper('text');	?>
            <div class="span9">
                <div class="well">
                    <h3>Create Portfolio</h3>
					 <?php $attributes = array('class' => 'form-horizontal');
                     echo form_open_multipart('portfolio/create',$attributes); ?>
                    
                    <div class="control-group">
                        <label class="control-label" for="name">Enter Name:</label>    
                        <div class="controls">
                          <input type="text"  class="span8" name="name" id="name" required min="15">
                        </div>
                    </div>
                    
                    <div class="control-group">
                        <label class="control-label" for="desc">Enter Details:</label>    
                        <div class="controls">
                          <textarea class="span8 ckeditor" name="desc" id="desc" rows="8" maxlength="100" required></textarea>
                        </div>
                    </div>
                    
                    <div class="control-group">
                        <label class="control-label" for="pic">Choose Image:</label>    
                        <div class="controls">
                          <input type="file" name="pic" id="pic" maxlength="100" required/>
                        </div>
                    </div>
                    <p align="center">
                      <button type="submit" class="btn">Create</button>  
                    </p>
					
                    <?php echo form_close(); ?>
                </div>
                <hr>
                <div class="well">
                    <h3>Portfolio List</h3>
                <table id="example" class="display" cellspacing="0" width="100%" style="font-size:12px;">
                    <thead>
                        <tr>
                            <th>Name</th>
                            <th>Description</th>
                            <th>Delete</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php if(isset($records)) : foreach($records as $row) : ?>
                        
                            <?php $onclick = array('onclick'=>"return confirm('Are you sure?')");?>
                            <tr>
                                <td><?=anchor("portfolio/show/$row->id","$row->name")?></td>
    							<td><?php echo word_limiter($row -> desc, 50); ?></td>
    						    <td><?=anchor("portfolio/delete/$row->id","Delete", $onclick);?></td>
                            </tr>
                        <?php endforeach; ?>
                    </tbody>
                        <?php endif; ?>
                </table>
                </div>
            </div>