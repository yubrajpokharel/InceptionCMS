

    
    <!------------------------------- List Portion of the CMS ------------------------------------------>        
            <div class="span9">
                <div class="well">

                    <h3>Service Detail.</h3>
                <table class="table table-bordered" style="font-size:14px;">
                        <tr>
                            <th colspan="2" bgcolor="#3399FF" style="color:#FFF">Services Table</th>
                        </tr>
            	<?php if(isset($records)) : foreach($records as $row) : ?>
                    
                        <?php $onclick = array('onclick'=>"return confirm('Are you sure?')");?>
                        
                        
                        <tr>
                            <td class="span2">Services Title</td>
                            <td><?php echo $row -> service_name; ?></td>
                        </tr>
                        <tr>
                            <td>Services Description</td>
                              <td><?php echo $row -> service_desc; ?></td>
                        </tr>
                        <tr>
                            <td>Services Added on</td>
                              <td><?php echo $row -> service_added; ?></td>
                        </tr>
                        <tr>
                            <td>Status</td>
                             <td><?php 
							 		if(($row -> service_status)==1) {
								 		echo "Active";
								 	}else{
										echo "Unactive";
									} ?></td>
                        </tr>
                        
                        <tr>
                            <td><?=anchor("services/edit/$row->service_id","Edit", $onclick);?></td>
                            <td><?=anchor("services/delete/$row->service_id","Delete", $onclick);?></td>
                        </tr>
                    
                    
                
                    <?php endforeach; ?>
                
                <?php else : ?>
                <tr>
                    <td colspan="3">No result found</td>
                </tr>
                
                <?php endif; ?>
                </table>
            
                </div>
            </div>