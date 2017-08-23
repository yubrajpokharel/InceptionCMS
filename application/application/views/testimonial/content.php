       
    <!------------------------------------------------ List Portion of the CMS ------------------------------------------------------------------------------> 
	<?php $this->load->helper('text');	?>
            <div class="span9">
                <div class="well">
                    <h3>Create Blog</h3>
					 <?php $attributes = array('class' => 'form-horizontal');
                     echo form_open_multipart('testimonial/create',$attributes); ?>
                    
                    <div class="control-group">
                        <label class="control-label" for="name">Enter Title:</label>    
                        <div class="controls">
                          <input type="text"  class="span8" name="name" id="name">
                        </div>
                    </div>

                    <div class="control-group">
                        <label class="control-label" for="contact_name">Blog by:</label>    
                        <div class="controls">
                          <input type="text"  class="span8" name="contact_name" id="contact_name">
                        </div>
                    </div>

                    

                    <?php if($this->config->item('testimonial_image')) { ?>
                    <div class="control-group">
                        <label class="control-label" for="pic">Select Image:</label>    
                        <div class="controls">
                          <input type="file" class="span8" name="pic" id="pic" required/>
                        </div>
                    </div>
                    <?php }?>
                    
                    <div class="control-group">
                        <label class="control-label" for="desc">Enter Text:</label>    
                        <div class="controls">
                          <textarea type="text" class="span8 ckeditor" name="desc" id="desc" rows="5"  title="Are not this detail is too short" required></textarea>
                        </div>
                    </div>

                    <p align="center">
                      <button type="submit" class="btn">Create</button>  
                    </p>
					
                    <?php echo form_close(); ?>
                </div>
                <hr>
                <div class="well">
                    <h3>Blogs List</h3>
                <table id="example" class="display" cellspacing="0" width="100%" style="font-size:12px;">
                    <thead>
                        <tr>
                            <th class="span3">Title</th>
                            <th class="span5 hidden-phone">Details</th>
                            <th class="span2">Delete</th>
                        </tr>
                    </thead>
                    <tbody>
                
                 <?php if(isset($records)) : foreach($records as $row) : ?>
                    
                        <?php $onclick = array('onclick'=>"return confirm('Are you sure?')");?>
                        <tr>
                            <td><?=anchor("testimonial/show/$row->id","$row->detail")?></td>
							<td class="hidden-phone"><?php echo word_limiter($row -> text, 10); ?></td>
						    <td align="right">
                                <?=anchor("testimonial/edit/$row->id",'<i class="fa fa-pencil"></i>', $onclick);?>
                                &nbsp;&nbsp;
                                <?=anchor("testimonial/delete/$row->id",'<i class="fa fa-trash-o"></i>', $onclick);?>
                            </td>
                        </tr>
                    <?php endforeach; ?>                
                <?php endif; ?>
                </tbody>
                </table>
            
                </div>
            </div>