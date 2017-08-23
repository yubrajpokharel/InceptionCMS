

    
    <!------------------------------- List Portion of the CMS ---------------------------------->        
            <div class="span9">
                <div class="well">
                    <h3>Opening Hours.</h3>
                <table class="table table-bordered" style="font-size:14px;">
                        <tr class="info">
                            <th colspan="2" bgcolor="#3399FF" style="color:#FFF">Opening Hours for New Branch</th>
                        </tr>
            <?php if(isset($records)) : foreach($records as $row) : ?>
                    
                        <?php $onclick = array('onclick'=>"return confirm('Are you sure you want to delete contact named $row->name?')", 'class' => "btn btn-danger");?>
						
                        <tr>
                            <td>Day name:</td>
                            <td><?php echo $row -> name; ?></td>
                        </tr>
                        <tr>
                            <td>Opening Time:</td>
                            <td><?php echo $row -> opening; ?></td>
                        </tr>
                        <tr>
                            <td>Closing time:</td>
                            <td><?php echo $row -> closing; ?></td>
                        </tr>
                        
                        <tr>
                            <td>Status:</td>
                             <td><?php 
							 		if(($row -> status)==1) {
								 		echo "Active";
								 	}else{
										echo "Unactive";
									} ?></td>
                        </tr>
                        
                        <tr>
                            <td colspan="2"><?=anchor("openinghours2/edit/$row->id","Edit",array('class' => 'btn btn-success'));?></td>
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