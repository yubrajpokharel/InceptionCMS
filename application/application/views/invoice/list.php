
    
    <!------------------------------------------------ List Portion of the CMS -------------------------------------------------------------------------------->        
            <div class="span9 hero-unit">
                
                
                <hr />
                
                <div class="well">
                    <h3>Item's List</h3>
                <table id="example" class="display" cellspacing="0" width="100%" style="font-size:14px;">
                        <thead>
                            <tr>
                                <th align="left">Invoice No.</th>
                                <th align="left">Name</th>
                                <th align="left">Price</th>
                                <th align="left">Status</th>
                            </tr>
                        </thead>
                        <tbody>
                
                 <?php if(isset($records)) : foreach($records as $row) : ?>
                    
                        <?php $onclick = array('onclick'=>"return confirm('Are you sure?')");?>
                        <tr>
                            <td><?=anchor("invoice/show/$row->product_id","$row->product_id")?></td>
                            <td><?php echo $row->payer_fname." ".$row->payer_lname; ?></td>
							<td>$<?php echo $row ->product_amount ?></td>
                            <td><?=anchor("invoice/delete/$row->id","Delete", $onclick);?>&nbsp;&nbsp;&nbsp;&nbsp;<?=anchor("invoice/edit/$row->id","Edit", $onclick);?> </td>
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