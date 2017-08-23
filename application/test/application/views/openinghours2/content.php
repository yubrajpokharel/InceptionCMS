   
    <!------------------------- List Portion of the CMS -------------------------->        
            <div class="span9">
            
            <?php if($count < 7){ ?>
                <div class="well">
                    <h3>Opening Hours for New Branch</h3>

					 <?php $attributes = array('class' => 'form-horizontal');


                    echo form_open('openinghours2/create',$attributes); ?>
                    <div class="control-group">
                        <label class="control-label" for="day">Enter Name of the day:</label>    
                        <div class="controls">
                          <input type="text" name="day" id="day" required="required" />
                        </div>
                    </div>

                    <div class="control-group">
                        <label class="control-label" for="opening">Open at:</label>    
                        <div class="controls">
                          <input class="span2" type="time" name="opening" id="opening" required="required" />
                        </div>
                    </div>
                    <div>
                        <label class="control-label" for="closing">Close at:</label>    
                        <div class="controls">
                          <input class="span2" type="time" name="closing" id="closing" required="required" />
                        </div>

                    </div>

                    <p align="center">
                      <button type="submit" class="btn">Create</button>
                      
                    </p>
                    <?php echo form_close(); ?>
                </div>

                <hr>
                <?php } ?>
                <div class="well">
                    <h3>Opening Hours - New branch</h3>
                 <table id="example" class="display" cellspacing="0" width="100%" style="font-size:12px;">
                    <thead>
                        <tr>
                            <th>Name</th>
                            <th>Opening</th>
                            <th>Closing</th>
                        </tr>
                    </thead>
                    <tbody>
                
                <?php if(isset($records)) : foreach($records as $row) : ?>
                    
                        <?php $onclick = array('onclick'=>"return confirm('Are you sure?')");?>
                        <tr>
                            <td><?=anchor("openinghours2/show/$row->id","$row->name");?></td>
                            <td><?php echo $row -> opening; ?></td>
                            <td><?php echo $row -> closing; ?></td>
                            
                        </tr>
                    <?php endforeach; ?>
                </tbody>
                <?php endif; ?>
                </table>
            
                </div>
            </div>