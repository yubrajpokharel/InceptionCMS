

    
    <!------------------------------- List Portion of the CMS ------------------------------------------------------->        
            <div class="span9 hero-unit">
                
                <hr>
                <div class="well">
                    <h3>Service Detail.</h3>
                <table class="table table-bordered" style="font-size:14px;">
                        <tr>
                            <th colspan="2" bgcolor="#3399FF" style="color:#FFF">Marquee</th>
                        </tr>
            	<?php if(isset($records)) : foreach($records as $row) : ?>
                    
                        <?php $onclick = array('onclick'=>"return confirm('Are you sure?')");?>
                        
                        
                        <tr>
                            <td class="span3">Contact Name</td>
                            <td><?php echo $row -> contact_name; ?></td>
                        </tr>
                        <!-- <tr>
                            <td>Telephone Number</td>
                              <td><?php echo $row -> contact_number; ?></td>
                        </tr> -->
                        <tr>
                            <td>Marquee Text</td>
                              <td><?php echo $row -> marquee_text; ?></td>
                        </tr>
                        <tr>
                            <td>Service Added on</td>
                              <td><?php echo $row -> marquee_added; ?></td>
                        </tr>
                        <tr>
                            <td>Status</td>
                             <td><?php 
							 		if(($row -> marquee_status)==1) {
								 		echo "Active";
								 	}else{
										echo "Unactive";
									} ?></td>
                        </tr>
                        
                        <tr>
                            <td><?=anchor("marquee/edit/$row->marquee_id","Edit", $onclick);?></td>
                            <td><?=anchor("marquee/delete/$row->marquee_id","Delete", $onclick);?></td>
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