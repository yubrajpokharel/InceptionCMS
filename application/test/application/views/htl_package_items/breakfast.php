   
    <!------------------------------------------------ List Portion of the CMS ------------------------------------------------------------>        
            <div class="span9">
                <div class="well">
                    <h3>Create Breakfast</h3>
                     <?php $attributes = array('class' => 'form-horizontal');
                               echo form_open_multipart('htl_package_items/create',$attributes); ?>
                    
                    <div class="control-group hidden">
                        <label class="control-label" for="cat">Cat Name:</label>    
                        <div class="controls">
                          <input type="text" name="cat" id="cat" value="1" required="required" />
                        </div>
                    </div>

                    <div class="control-group hidden">
                        <label class="control-label" for="rdr">rdr:</label>    
                        <div class="controls">
                          <input type="text" name="rdr" id="rdr" value="breakfast" required="required" />
                        </div>
                    </div>

                    <div class="control-group">
                        <label class="control-label" for="name">Enter Name:</label>    
                        <div class="controls">
                          <input type="text" class="span8" maxlength="150" name="name" id="name" required="required" />
                        </div>
                    </div>

                    <div class="control-group">
                        <label class="control-label" for="news_desc">Enter Price:</label>    
                        <div class="controls">
                          <input type="number" class="span8" step="0.25" min="0" max="10000" name="news_desc" id="news_desc" required="required" />
                        </div>
                    </div>

                    <div class="control-group">
                        <label class="control-label" for="sdesc">short Description:</label>    
                        <div class="controls">
                          <textarea class="span10" rows="3" type="text" maxlength="200"  name="sdesc" id="sdesc" required="required" /></textarea>
                        </div>
                    </div>
                    
                    <div class="control-group">
                        <label class="control-label" for="news_heading">long Description:</label>    
                        <div class="controls">
                          <textarea class="span10" rows="5" type="text"  name="news_heading" id="news_heading" required="required" /></textarea>
                        </div>
                    </div>


                    <p align="center">
                      <button type="submit" class="btn-success">Create</button>
                    </p>
                    <?php echo form_close(); ?>
                </div>

                <hr />
                
                <div class="well">
                    <h3>Breakfast's List</h3>
                <table id="example" class="display" cellspacing="0" width="100%" style="font-size:12px;">
                        <thead>
                            <tr>
                                <th align="left">Name</th>
                                <th align="left">Description</th>
                                <th align="left">Price</th>
                                <th align="left">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                
                 <?php if(isset($records)) : foreach($records as $row) : ?>
                    
                        <?php $onclick = array('onclick'=>"return confirm('Are you sure?')");?>
                        <tr>
                            <td><?=anchor("htl_package_items/show/$row->id","$row->name")?></td>
                            <td><?php echo substr($row->short_desc, 0, 50); ?></td>
                            <td>$<?php echo $row ->price ?></td>
                            <td><?=anchor("htl_package_items/delete/$row->id/breakfast","Delete", $onclick);?>&nbsp;&nbsp;&nbsp;&nbsp;<?=anchor("htl_package_items/edit/$row->id","Edit", $onclick);?> </td>
                        </tr>
                    <?php endforeach; ?>
                
                
                
                <?php endif; ?>
                </tbody>
                </table>
                </div>
                
            </div>