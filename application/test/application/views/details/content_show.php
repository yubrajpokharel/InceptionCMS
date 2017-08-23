 
  <!--- List Portion of the CMS --> 
 
          
            <div class="span9">
                <div class="well">
                    <h3>Initial Site Details.</h3>
                <table class="table table-bordered" style="font-size:14px;">
                        <tr>
                            <th colspan="2" bgcolor="#3399FF" style="color:#FFF">Staff Table</th>
                        </tr>
            		<?php if(isset($records)) : foreach($records as $row) : ?>
                    
                     <?php $onclick = array('onclick'=>"return confirm('Are you sure you want to delete this staff member?')");?>
                        
                        <tr>
                            <td class="span2">Site Name</td>
                            <td><?php echo $row->site_name; ?></td>
                        </tr>
                        <tr>
                              <td>Located Country</td>
                              <td><?php echo $row -> comp_country; ?></td>
                        </tr>
                        <tr>
                            <td>Located City
                              <td><?php echo $row -> comp_city; ?></td>
                        </tr>
						<tr>
                            <td>Located Street</td>
                              <td><?php echo $row -> comp_street; ?></td>
                        </tr>
                        
                        <tr>
                            <td>Landline Number</td>
                              <td><?php echo $row -> comp_landline; ?></td>
                        </tr>
                        <tr>
                            <td>Mobile Number</td>
                              <td><?php echo $row -> comp_mobile; ?></td>
                        </tr>
                        <tr>
                            <td>E-Mail Address</td>
                              <td><?php echo $row -> comp_email; ?></td>
                        </tr>
                        
                        
                        <tr>
                            <td>Advertisement</td>
                             <td><?php echo $row -> ready; ?></td>
                        </tr>
                        <tr>
                            <td>Contact Us</td>
                             <td><?php echo $row -> training; ?></td>
                        </tr>
                         
                        
                        <tr>
                            <td colspan="2" class="text-center" ><?=anchor("details/edit/$row->setup_id","Edit Details");?></td>
                            
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