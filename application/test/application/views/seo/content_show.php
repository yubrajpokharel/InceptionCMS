

    
    <!------------------------------- List Portion of the CMS ------------------------------------------------------->        
            <div class="span9">
                
                <hr>
                <div class="well">
                    <h3>SEO Detail.</h3>
                <table class="table table-bordered" style="font-size:14px;">
                        <tr>
                            <th colspan="2" bgcolor="#3399FF" style="color:#FFF">About Table</th>
                        </tr>
            	<?php if(isset($records)) : foreach($records as $row) : ?>
                    
                        <?php $onclick = array('onclick'=>"return confirm('Are you sure?')");?>
                        
                        
                        <tr>
                            <td class="span2">Page Title</td>
                            <td><?php echo $row -> page_title; ?></td>
                        </tr>
                        <tr>
                            <td>Page Keywords</td>
                              <td><?php echo $row -> page_keywords; ?></td>
                        </tr>
                         <tr>
                            <td>Page Description</td>
                              <td><?php echo $row -> page_desc; ?></td>
                        </tr>
                         <tr>
                            <td>Page Developer</td>
                              <td><?php echo $row -> page_developer; ?></td>
                        </tr>
                        
                        <tr>
                            <td>Page Map</td>
                              <td><?php echo $row -> page_map; ?></td>
                        </tr>
                        
                        <tr>
                            <td colspan="2"><?=anchor("seo/edit/$row->seo_id","Edit", $onclick);?></td>
                            
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