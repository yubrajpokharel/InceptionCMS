       
    <!------------------------------------------------ List Portion of the CMS ----------------------------------------------------------------------------- --> 
	<?php $this->load->helper('text');	?>
            <div class="span9">
            	<?php 
                $query = $this->db->query('SELECT * FROM seo');
                   if ($query->num_rows() > 0){
                ?>
                <div class="well">
                    <h3>SEO Setting</h3>
                <table class="table table-bordered" style="font-size:14px;">
                        <tr>
                            <th>Page Title</th>
                            <th>Description</th>
                            <th>Page Developer</th>
                        </tr>
                
                 <?php if(isset($records)) : foreach($records as $row) : ?>
                    
                        <?php $onclick = array('onclick'=>"return confirm('Are you sure?')");?>
                        <tr>
                            <td><?=anchor("seo/show/$row->seo_id","$row->page_title")?></td>
							<td><?php echo word_limiter($row -> page_desc, 50); ?></td>
						    <td><?php echo word_limiter($row -> page_developer, 50); ?></td>
                        </tr>
                    <?php endforeach; ?>
                <?php else : ?>
                <tr>
                    <td bgcolor="#FF3333" colspan="3"><font color="#FFFFFF"> No Records </font></td>
                </tr>
                
                <?php endif; ?>
                </table>
            
                </div>
            	
                 <?php } else {?>
                <div class="well">
                    <h3>SEO Setup</h3>
					 <?php $attributes = array('class' => 'form-horizontal');
                     echo form_open_multipart('seo/create',$attributes); ?>
                    
                    <div class="control-group">
                        <label class="control-label" for="page_title">Enter Titlebar Name:</label>    
                        <div class="controls">
                          <input type="text"  class="span5" name="page_title" id="page_title" required min="10">
                        </div>
                    </div>
                    
                    <div class="control-group">
                        <label class="control-label" for="page_keywords">Enter Keywords:</label>    
                        <div class="controls">
                          <input type="text"  class="span5" name="page_keywords" id="page_keywords" required min="15">
                        </div>
                    </div>
                    
                    <div class="control-group">
                        <label class="control-label" for="page_desc">Page descripton:</label>    
                        <div class="controls">
                          <input type="text"  class="span5" name="page_desc" id="page_desc" required min="25" maxlength="140">
                        </div>
                    </div>
                    
                    <div class="control-group">
                        <label class="control-label" for="page_developer">Page developer:</label>    
                        <div class="controls">
                          <input type="text"  class="span5" name="page_developer" id="page_developer" required min="25">
                        </div>
                    </div>
                    
                    <div class="control-group">
                        <label class="control-label" for="page_map">Google Map Link</label>    
                        <div class="controls">
                          <input type="text"  class="span5" name="page_map" id="page_map" required min="25">
                        </div>
                    </div>
                    
                    
                    <p align="center">
                      <button type="submit" class="btn">Create</button>  
                    </p>
					
                    <?php echo form_close(); ?>
                </div>
                <?php } ?>
            </div>