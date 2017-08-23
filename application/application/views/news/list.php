
    
    <!------------------------------------------------ List Portion of the CMS -------------------------------------------------------->        
            <div class="span9">

                <div class="well">
                    <h3>News List</h3>
                <table id="example" class="display" cellspacing="0" width="100%" style="font-size:12px;">
                    <thead>
                        <tr>
                            <th class="span3">Heading</th>
                            <th class="span8">Description</th>
                            <th class="span2">Delete</th>
                        </tr>
                    </thead>
                    <tbody>
                
                 <?php if(isset($records)) : foreach($records as $row) : ?>
                    
                        <?php $onclick = array('onclick'=>"return confirm('Are you sure?')");?>
                        <tr>
                            <td><?php echo anchor("news/show/$row->news_id","$row->news_heading")?></td>
							<td><?php echo substr($row -> news_description,0,150); ?>...</td>
                            <td><?=anchor("news/delete/$row->news_id","Delete", $onclick);?></td>
                        </tr>
                    <?php endforeach; ?>
                </tbody>
                
                <?php endif; ?>
                </table>
                </div>
            </div>