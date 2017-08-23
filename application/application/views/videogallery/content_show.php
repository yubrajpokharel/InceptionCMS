

    
    <!------------------------------- List Portion of the CMS ------------------------------------------------------>        
            <div class="span9">
                <div class="well">
                    <h3>Video Gallery detail.</h3>
                <table class="table table-bordered" style="font-size:14px;">
                        <tr>
                            <th colspan="2" bgcolor="#3399FF" style="color:#FFF">Gallery Table</th>
                        </tr>
            <?php if(isset($records)) : foreach($records as $row) : ?>
                    
                        <?php $onclick = array('onclick'=>"return confirm('Are you sure?')");?>
                        <tr>
                            <td class="span2">Gallery Name</td>
                            <td><?php echo $row -> gall_name; ?></td>
                        </tr>
                        
                        <tr>
                            <td>Gallery Details</td>
                              <td><?php echo $row -> gall_desc; ?></td>
                        </tr>
                        <tr>
                            <td>Gallery Status</td>
                             <td><?php 
							 		if(($row -> gall_status)==1) {
								 		echo "Active";
								 	}else{
										echo "Unactive";
									} ?></td>
                        </tr>
                        
                        <tr>
                            <td><?=anchor("vgallery/edit/$row->gall_id","Edit", $onclick);?></td>
                            <td><?=anchor("vgallery/delete/$row->gall_id","Delete", $onclick);?></td>
                        </tr>
                    
                    
                
                    <?php endforeach; ?>
                
                <?php else : ?>
                <tr>
                    <td colspan="3">No result found</td>
                </tr>
                
                <?php endif; ?>
                </table>
                
                <hr />
                    <div class="well">
                    <?php if(isset($records)) : foreach($records as $row) : ?>
                        <a class="btn btn-primary" href="<?php echo base_url('vgallery/addimages').'/'.$row->gall_id;?>">Add New Video to <b><?php echo $row->gall_name; ?></b> gallery</a>
                    <?php endforeach; ?>
                    <?php endif;?>
                    </div>
                </div>
            </div>