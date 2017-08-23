

    
    <!------------------------------- List Portion of the CMS ------------------------------------------------------->        
            <div class="span9">
                
                <hr>
                <div class="well">
                    <h3>Contact links detail.</h3>
                <table class="table table-bordered" style="font-size:14px;">
                        <tr class="info">
                            <th colspan="2" bgcolor="#3399FF" style="color:#FFF">Contact Link</th>
                        </tr>
            <?php if(isset($records)) : foreach($records as $row) : ?>
                    
                        <?php $onclick = array('onclick'=>"return confirm('Are you sure you want to delete contact named $row->name?')", 'class' => "btn btn-danger");?>
						
                        <tr class="info">
                            <td>Social Network Name:</td>
                            <td><?php echo $row -> name; ?></td>
                        </tr>
                        <tr class="info">
                            <td>Social Network Link:</td>
                              <td><a href="<?php echo $row -> link; ?>"target="_blank"> <?php echo $row -> link; ?></td>
                        </tr>
                        <tr class="info">
                            <td>Status:</td>
                             <td><?php 
							 		if(($row -> status)==1) {
								 		echo "Active";
								 	}else{
										echo "Unactive";
									} ?></td>
                        </tr>
                        
                        <tr class="info">
                            <td><?=anchor("social/edit/$row->c_id","Edit",array('class' => 'btn btn-success'));?></td>
                            <td><?=anchor("social/delete/$row->c_id","Delete", $onclick);?></td>
                        </tr>
                    
                    
                
                    <?php endforeach; ?>
                
                <?php else : ?>
                <tr>
                    <td colspan="3">No Records</td>
                </tr>
                
                <?php endif; ?>
                </table>
            
                </div>
            </div>