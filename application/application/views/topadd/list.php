   
    <!------------------------------------------------ List Portion of the CMS ------------------------------------------------------------------------------>        
            <div class="span9">
            
            <a href="<?=base_url('index.php/topadd/addnew')?>"><i class="fa fa-plus"></i>&nbsp;&nbsp;Create Add</a><br>
            
            <br />
                <div class="well">
                    <h3>Addvertisement List</h3>
                <table id="example" class="display" cellspacing="0" width="100%" style="font-size:12px;">
                    <thead>
                        <tr>
                            <th>Name</th>
                            <th>Contact</th>
                            <th>Added For</th>
                            <th>Status</th>
                        </tr>
                    </thead>
                    <tbody>
                
                 <?php if(isset($records)) : foreach($records as $row) : ?>
                        <tr>
							<td><?php echo anchor("topadd/show/$row->add_id","$row->add_name")?></td>
                            <td class="span3"><?php echo $row->add_contact;?></td>
                            <td>
								<?php 
									$added_for_days = $row->add_added_for;
									$add_added = $row->add_added;
									$last_date_for_dd = date('Y-m-d', strtotime($add_added. ' + '.$added_for_days.' months'));
									$datelast = strtotime($last_date_for_dd);
									$date1 = date("Y-n-j");
									$datenow = strtotime($date1);
									$datediff = $datelast - $datenow;
								    $remainingdays = floor($datediff/(60*60*24));
									echo $row->add_added_for;
								 ?>
                                 Months 
                            </td>
                            <td <?php if($remainingdays>0) echo 'bgcolor="green"';
										else echo 'bgcolor="red"'; ?> ></td>
                        </tr>
                    <?php endforeach; ?>
                </tbody>
                <?php endif; ?>
                </table>
            
                </div>
            </div>