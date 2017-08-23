   
    <!------------------------------------------------ List Portion of the CMS ------------------------------------------------------------------------------>        
            <div class="span9">
                <div class="well">
                    <h3>Update Social Contact Link</h3>
					 <?php $attributes = array('class' => 'form-horizontal');
                     echo form_open('social/update',$attributes); ?>
                    
                    <div class="control-group">
                        <label class="control-label" for="pass">Select Social Network:</label>    
                        <div class="controls">
                        <?php $options = array(); ?>
                        <?php if(isset($records)) { foreach($records as $row) { 
                            $options[$row->name] = $row->name;
                        ?>
                        <?php } }?>
                        <?php $attr = array('class' => 'so_name');?>
                        <?php  echo form_dropdown('so_name', $options, 'Facebook', 'class = so_name');
                            ?>
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label" for="so_link">Enter the link:</label>    
                        <div class="controls">
                          <input class="span8" type="url" name="so_link" id="so_link" required="required" />
                        </div>
                    </div>
                    
                    <p align="center">
                      <button type="submit" class="btn">Update</button>
                      
                    </p>
                    <?php echo form_close(); ?>
                </div>
                <hr>
                <div class="well">
                    <h3>Social Contact List</h3>
                <table class="table table-bordered" style="font-size:14px;">
                        <tr>
                            <th>Name</th>
                            <th>Link</th>
                        </tr>
                
                 <?php if(isset($records)) : foreach($records as $row) : ?>
                    
                        <?php $onclick = array('onclick'=>"return confirm('Are you sure?')");?>
                        <tr>
                            <td><?php echo $row -> name; ?></td>
							<td><a href="<?php echo $row -> link; ?>" target="_blank"><?php echo $row -> link; ?></td>
                        </tr>
                    <?php endforeach; ?>
                <?php else : ?>
                <tr>
                    <td bgcolor="#FF3333" colspan="4"><font color="#FFFFFF"> No Records </font></td>
                </tr>
                
                <?php endif; ?>
                </table>
            
                </div>
            </div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>

