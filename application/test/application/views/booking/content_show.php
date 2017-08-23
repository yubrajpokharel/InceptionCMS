

    
    <!------------------------------- List Portion of the CMS ------------------------------------------------------>        
            <div class="span9">
                
               
                <div class="well">
                    <h3>Booking Detail.</h3>
                <table class="table table-bordered" style="font-size:14px;">
                        <tr>
                            <th colspan="2" bgcolor="#3399FF" style="color:#FFF">Booking Table</th>
                        </tr>
            	<?php if(isset($records)) : foreach($records as $row) : ?>
                    
                        <?php $onclick = array('onclick'=>"return confirm('Are you sure?')");?>
                        
                        <tr>
                            <td class="span2">Book By</td>
                            <td><?php echo $row -> book_by; ?></td>
                        </tr>

                        
                        
                        <tr>
                            <td>Number of people</td>
                              <td><?php echo $row -> book_cli_num; ?></td>
                        </tr>
                        
                        <tr>
                            <td>Client Email</td>
                              <td><?php echo $row -> book_email; ?></td>
                        </tr>
                        <tr>
                            <td>Contact Number</td>
                              <td><?php echo $row -> book_contact; ?></td>
                        </tr>
                        <tr>
                            <td>Message</td>
                              <td><?php echo $row -> book_name; ?></td>
                        </tr>
                        <tr>
                            <td>Booking Date</td>
                              <td><?php echo date("F j, Y",strtotime($row -> book_to_date)); ?> @ <?php echo date('h:m A',strtotime($row -> time)); ?></td>
                        </tr>
                        
                        <tr>
                            <td colspan="2" align="center"><?=anchor("booking/","Go Back");?></td>
                            
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