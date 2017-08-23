        
    <!------------------------------------------------ List Portion of the CMS ------------------------------------------------------------------------------> 
	<?php $this->load->helper('text');	?>
            <div class="span9">
                
                <div class="well">
                    <h3>Vacancy Replies List</h3>
                <table class="table table-bordered" style="font-size:14px;">
                        <tr>
                            <th>Name</th>
                            <th>Email</th>
                            <th>Number of people</th>
                            <th>Sent Date</th>
                            <th>Status</th>
                        </tr>
                
                 <?php if(isset($records)) : foreach($records as $row) : ?>
                    
                        <?php $onclick = array('onclick'=>"return confirm('Are you sure?')");?>
                        <tr>
                            <td class="span2"><?=anchor("vacancy_replies/show/$row->id","$row->name")?></td>
							<td class="span6"><?php echo $row -> email; ?></td>
						    <td class="span2"><?php echo $row -> doc; ?></td>
                            <td class="span2"><?php echo $row -> date_posted; ?></td>
                            <td class="span2 <?php if($row -> is_view == 0 ) echo "text-danger"; else echo "text-success";?>"><?php if($row -> is_view == 1 ) echo "Seen"; else echo "New"; ?></td>
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