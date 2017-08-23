
    
    <!------------------------------- List Portion of the CMS ----------------------------------------------------- -->        
            <div class="span9">
                <div class="well">
            	<?php if(isset($records)) : foreach($records as $row) : ?>
                    
                        <?php $onclick = array('onclick'=>"return confirm('Are you sure?')");?>
                        <h3>Vacancy ( <?php echo $row -> title; ?> ).</h3>
                    <table class="table table-bordered" style="font-size:14px;">
                        <tr>
                            <th colspan="3" bgcolor="#3399FF" style="color:#FFF">Vacancy Details</th>
                        </tr>
                        <tr>
                            <td class="span3">Vacancy Title</td>
                            <td class="span5"><strong><?php echo $row -> title; ?></strong></td>
                        </tr>
                        <tr>
                            <td>Job Type</td>
                            <td colspan="2"><?php if($row -> job == 1) echo 'Fulltime'; else echo 'Parttime'; ?></td>
                        </tr>
                        <tr>
                            <td>Salary</td>
                            <td colspan="2"><strong><?php echo $row -> salary; ?></strong></td>
                        </tr>
                        <tr>
                            <td>Number of People</td>
                            <td colspan="2"><?php echo $row -> nop; ?> persons</td>
                        </tr>
                        <tr>
                            <td>Vacancy Description</td>
                            <td colspan="2"><?php echo $row -> desc; ?></td>
                        </tr>
                        <tr>
                            <td>Vacancy Added on</td>
                              <td colspan="3"><?php echo $row -> date_created; ?></td>
                        </tr>
                        <tr>
                            <td>Vacancy Valid till</td>
                              <td colspan="3"><?php echo $row -> end_date; ?></td>
                        </tr>
                        <tr>
                            <td>Status</td>
                             <td colspan="3"><?php 
							 		if(($row -> status)==1) {
								 		echo "Active";
								 	}else{
										echo "Unactive";
									} ?></td>
                        </tr>
                        
                        <tr>
                            <td><?=anchor("vacancy/edit/$row->id","Edit", $onclick);?></td>
                            <td><?=anchor("vacancy/delete/$row->id","Delete", $onclick);?></td>
                            <td></td>
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