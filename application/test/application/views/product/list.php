
    
    <!------------------------------------------------ List Portion of the CMS -------------------------------------------------------------------------------->        
            <div class="span9">
                
                <div class="well">
                    <h3>Product's List</h3>
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
                            <td><?=anchor("product/show/$row->id","$row->name")?></td>
                            <td><?php echo substr($row->description, 0, 50); ?></td>
							<td>$<?php echo $row ->price ?></td>
                            <td><?=anchor("product/delete/$row->id","Delete", $onclick);?>&nbsp;&nbsp;&nbsp;&nbsp;<?=anchor("product/edit/$row->id","Edit", $onclick);?> </td>
                        </tr>
                    <?php endforeach; ?>
                </tbody>
                <?php endif; ?>
                </table>
                </div>
            </div>