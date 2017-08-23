        
    <!------------------------------------------------ List Portion of the CMS ------------------------------------------------------------------------------> 
	
    


    <?php $this->load->helper('text');	?>
            <div class="span9">
                
                <div class="well">
                    <h3>Booling List</h3>
                <table id="example" class="display" cellspacing="0" width="100%" style="font-size:12px;">
                    <thead>
                        <tr>
                            <th>Book name</th>
                            <th class="hidden-phone">Book message</th>
                            <th>Number of people</th>
                            <th>Book Date</th>
                        </tr>
                    </thead>
                    <tbody>
                
                 <?php if(isset($records)) : foreach($records as $row) : ?>
                    
                        <?php $onclick = array('onclick'=>"return confirm('Are you sure?')");?>
                        <tr>
                            <td class="span2"><?=anchor("booking/show/$row->book_id","$row->book_by")?></td>
							<td class="span6 hidden-phone"><?php echo $row -> book_name; ?></td>
						    <td class="span2"><?php echo $row -> book_cli_num; ?></td>
                            <td class="span2"><?php echo $row -> book_to_date; ?></td>
                        </tr>
                    <?php endforeach; ?>
                </tbody>
                
                <?php endif; ?>
                </table>
            
                </div>
            </div>