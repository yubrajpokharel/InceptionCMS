

    
    <!------------------------------- List Portion of the CMS ------------------------------------------------------>        
            <div class="span9">
                
               
                <div class="well">
                    <h3>Feedback's</h3>
                <table class="table table-bordered" style="font-size:14px;">
                        <tr>
                            <th colspan="2" bgcolor="#3399FF" style="color:#FFF">Feedback Table</th>
                        </tr>
            	<?php if(isset($records)) : foreach($records as $row) : ?>
                    
                        <?php $onclick = array('onclick'=>"return confirm('Are you sure?')");?>
                        
                        
                        <!-- <tr>
                            <td class="span2">Branch</td>
                            <td><?php echo $row -> branch; ?></td>
                        </tr> -->
                        <tr>
                            <td class="span2">Feedback By</td>
                            <td><?php echo $row -> name; ?></td>
                        </tr>
                        <tr>
                            <td>E-Mail</td>
                              <td><?php echo $row -> email; ?></td>
                        </tr>
                        <tr>
                            <td>Message</td>
                              <td><?php echo $row -> message; ?></td>
                        </tr>
                        
                        <tr>
                            <td>Contact</td>
                              <td><?php echo $row -> phone; ?></td>
                        </tr>
                        
                        <tr>
                            <td>Date Posted</td>
                              <td><?php echo $row -> date_posted; ?></td>
                        </tr>
                        
                        
                        <tr>
                            <td align="center"><?=anchor("feedback/","Go Back");?></td>
                            <td align="center"><?=anchor("feedback/delete/$row->feedback_id","Delete");?></td>    
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