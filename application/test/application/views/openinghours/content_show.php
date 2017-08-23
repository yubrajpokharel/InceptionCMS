

    
    <!------------------------------- List Portion of the CMS ---------------------------------->        
            <div class="span9 hero-unit">
                
                <hr>
                <div class="well">
                    <h3>Opening Hours.</h3>
                <table class="table table-bordered" style="font-size:14px;">
                        <tr class="info">
                            <th colspan="2" bgcolor="#3399FF" style="color:#FFF">Opening Hours - Kallaroo</th>
                        </tr>
            <?php if(isset($records)) : foreach($records as $row) : ?>
                    
                        <?php $onclick = array('onclick'=>"return confirm('Are you sure you want to delete contact named $row->name?')", 'class' => "btn btn-danger");?>
						
                        <tr class="info">
                            <td>Day name:</td>
                            <td><?php echo $row -> name; ?></td>
                        </tr>
                        <tr class="info">
                            <td>Opening Time:</td>
                            <td><?php echo $row -> opening; ?></td>
                        </tr>
                        <tr class="info">
                            <td>Closing time:</td>
                            <td><?php echo $row -> closing; ?></td>
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
                            <td colspan="2"><?=anchor("openinghours/edit/$row->id","Edit",array('class' => 'btn btn-success'));?></td>
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