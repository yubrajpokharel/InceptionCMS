       
    <!------------------------------------------------ List Portion of the CMS ----------------------------------------------------------------------------- --> 
	<?php $this->load->helper('text');	?>
            <div class="span9 hero-unit">
            <?php 
                $query = $this->db->query('SELECT * FROM newsletter');
                   $total = $query->num_rows();
                ?>
            	
                <div class="well">
                    <h3>Newsletter- (<?php echo $total; ?> Emails)</h3>
                <table class="table table-bordered" style="font-size:14px;">
                        <tr>
                            <th>S.No</th>
                            <th>Name</th>
                            <th>Email</th>
                            <th>Action</th>
                        </tr>
                        <?php //echo json_encode($records) ;?>
                
                 <?php 
                    $counter = 0;
                    if(isset($records)) : foreach($records as $row) : 
                    $counter++;
                 ?>
                 <?php $onclick = array('onclick'=>"return confirm('Are you sure?')");?>
                        <tr>
                            <td><?php echo $counter;?></td>
							<td><?php echo word_limiter($row -> name); ?></td>
						    <td><?php echo word_limiter($row -> email); ?></td>
                            <td><?=anchor("newsletter/delete/$row->id","Delete", $onclick);?></td>
                        </tr>
                    <?php endforeach; ?>
                <?php else : ?>
                <tr>
                    <td bgcolor="#FF3333" colspan="3"><font color="#FFFFFF"> No Records </font></td>
                </tr>
                
                <?php endif; ?>
                </table>
            
                </div>
            	
                 
            </div>