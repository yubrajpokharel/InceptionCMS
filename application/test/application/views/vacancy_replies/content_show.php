

    
    <!------------------------------- List Portion of the CMS ------------------------------------------------------>        
            <div class="span9">
                <div class="well">
                    <h3>Vacancy replies.</h3>
                <table class="table table-bordered" style="font-size:14px;">
                        <tr>
                            <th colspan="2" bgcolor="#3399FF" style="color:#FFF">Applicant details</th>
                        </tr>
            	<?php if(isset($records)) : foreach($records as $row) : ?>
                    
                        <?php $onclick = array('onclick'=>"return confirm('Are you sure?')");?>
                        
                        <tr>
                            <td class="span2">Applied By</td>
                            <td><?php echo $row -> name; ?></td>
                        </tr>

                        
                        
                        <tr>
                            <td>Email</td>
                              <td><?php echo $row -> email; ?></td>
                        </tr>
                        
                        <tr>
                            <td>CV / biodata</td>
                              <td><a target="_blank" href="<?php echo base_url('uploads/vacency').'/'.$row->doc; ?>"><i class="fa fa-download"></i> Download</a></td>
                        </tr>
                        
                        <tr>
                            <td colspan="2" align="center"><?=anchor("vacancy_replies/","Go Back");?></td>
                            
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