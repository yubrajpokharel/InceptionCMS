       
    <!------------------------------------------------ List Portion of the CMS ----------------------------------------------------------------------------- --> 
	<?php $this->load->helper('text');	?>
            <div class="span9">
                <div class="well">
                    <h3>Create Vacancy</h3>
                    <hr>
					 <?php $attributes = array('class' => 'form-horizontal');
                     echo form_open_multipart('vacancy/create',$attributes); ?>
                    
                    <div class="control-group">
                        <label class="control-label" for="title">Enter Title:</label>    
                        <div class="controls">
                          <input type="text"  class="span5" name="title" id="title" required min="15" maxlength="50">
                        </div>
                    </div>
                    

                    <div class="control-group">
                        <label class="control-label" for="job">Job Type:</label>    
                        <div class="controls">
                            <select class="span5" name="job" id="job" required>
                                <option value=""></option>
                                <option value="1">Fulltime</option>
                                <option value="2">Parttime</option>
                            </select>
                        </div>
                    </div>

                    <div class="control-group">
                        <label class="control-label" for="nop">Number of people</label>    
                        <div class="controls">
                          <input type="number" min="1"  class="span5" id="nop" name="nop" required min="15" maxlength="50">
                        </div>
                    </div>

                    <div class="control-group">
                        <label class="control-label" for="salary">Salary</label>    
                        <div class="controls">
                          <input type="text" min="3" maxlength="15" class="span5" id="salary" name="salary" required>
                        </div>
                    </div>

                    <div class="control-group">
                        <label class="control-label" for="valid_date">Valid Till</label>    
                        <div class="controls">
                          <input type="date" min="<?php echo date('Y-m-d');?>"  class="span5" id="valid_date" name="valid_date" required min="15" maxlength="50">
                        </div>
                    </div>

                     <div class="control-group">
                        <label class="control-label" for="desc">Enter Details:</label>    
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
                    <h3>Vacancy's List</h3>
                <table id="example" class="display" cellspacing="0" width="100%" style="font-size:12px;">
                    <thead>
                        <tr>
                            <th class="span3">Title</th>
                            <th>Description</th>
                            <th>Delete</th>
                        </tr>
                    </thead>
                    <tbody>
                
                 <?php if(isset($records)) : foreach($records as $row) : ?>
                    
                        <?php $onclick = array('onclick'=>"return confirm('Are you sure?')");?>
                        <tr>
                            <td><?=anchor("vacancy/show/$row->id","$row->title")?></td>
							<td><?php echo word_limiter($row -> desc, 50); ?></td>
						    <td><?=anchor("vacancy/delete/$row->id","Delete", $onclick);?></td>
                        </tr>
                    <?php endforeach; ?>
                </tbody>
                
                <?php endif; ?>
                </table>
            
                </div>
            </div>