
    
    <!------------------------------------------------ List Portion of the CMS -------------------------------------------------------------------------------->        
            <div class="span9">
                <div class="well">
                    <h3>Item's List</h3>
                <table id="example" class="display" cellspacing="0" width="100%" style="font-size:14px;">
                        <thead>
                            <tr>
                                <th align="left" class="span3">Name</th>
                                <th align="left" class="span4">Description</th>
                                <th align="left" class="span1">Price</th>
                                <th align="left"  class="span2">Today's Best</th>
                                <th align="left"  class="span2">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                
                 <?php if(isset($records)) : foreach($records as $row) : ?>
                    
                        <?php $onclick = array('onclick'=>"return confirm('Are you sure?')");?>
                        <tr>
                            <td><?=anchor("htl_package_items/show/$row->id","$row->name")?></td>
                            <td><?php echo substr($row->desc, 0, 50); ?></td>
                            <td>$<?php echo $row ->price ?></td>
                            <td>
                                <label><input data-action="off" name="best[<?php echo $row->id;?>]" id="<?php echo $row->id;?>" type="radio" value="0" <?php if($row->selection=='0'){?>checked="checked"<?php }?> /> Off</label>
                                <label><input data-action="on" name="best[<?php echo $row->id;?>]" id="<?php echo $row->id;?>" type="radio" value="1" <?php if($row->selection=='1'){?>checked="checked"<?php }?> /> On</label>
                            </td>
                            <td><?=anchor("htl_package_items/delete/$row->id","Delete", $onclick);?>&nbsp;&nbsp;&nbsp;&nbsp;<?=anchor("htl_package_items/edit/$row->id","Edit", $onclick);?> </td>
                        </tr>
                    <?php endforeach; ?>
                <?php else : ?>
                <tr>
                    <td bgcolor="#FF3333" colspan="4"><font color="#FFFFFF"> No Records </font></td>
                </tr>
                
                <?php endif; ?>
                </tbody>
                </table>
                </div>
            </div>

