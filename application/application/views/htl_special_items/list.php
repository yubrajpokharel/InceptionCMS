
    
    <!------------------------------------------------ List Portion of the CMS -------------------------------------------------------------------------------->        
            <div class="span9 hero-unit">
                
                
                <hr />
                
                <div class="well">
                    <h3>Item's List</h3>
                <table id="example" class="display" cellspacing="0" width="100%" style="font-size:14px;">
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
                            <td><?=anchor("htl_special_items/show/$row->id","$row->name")?></td>
                            <td><?php echo substr($row->desc, 0, 50); ?></td>
							<td>$<?php echo $row ->price ?></td>
                            <td><?=anchor("htl_special_items/delete/$row->id","Delete", $onclick);?>&nbsp;&nbsp;&nbsp;&nbsp;<?=anchor("htl_special_items/edit/$row->id","Edit", $onclick);?> </td>
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