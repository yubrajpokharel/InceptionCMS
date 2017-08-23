       
    <!------------------------------------------------ List Portion of the CMS ----------------------------------------------------------------------> 
	<?php $this->load->helper('text');	?>
            <div class="span9">
                
                <div class="well">
                    <h3>Feedback List</h3>
                <table id="example" class="display" cellspacing="0" width="100%" style="font-size:12px;">
                    <thead>
                        <tr>
                            <th>Client name</th>
                            <th>Client Email</th>
                            <th>Date Posted</th>
                        </tr>
                    </thead>
                    <tbody>
                
                 <?php if(isset($records)) : foreach($records as $row) : ?>
                    
                        <?php $onclick = array('onclick'=>"return confirm('Are you sure?')");?>
                        <tr>
                            <td><?=anchor("feedback/show/$row->feedback_id","$row->name")?></td>
							<td><?php echo $row -> email; ?></td>
                            <td><?php echo $row -> date_posted; ?></td>
                        </tr>
                    <?php endforeach; ?>
                    </tbody>
                <?php endif; ?>
                </table>
            
                </div>
            </div>