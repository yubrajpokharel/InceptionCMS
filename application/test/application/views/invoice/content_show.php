

    
    <!------------------------------- List Portion of the CMS --------------------------------------------------------> 
     
    			
          
            <div class="span9 hero-unit">
            	
                
                <div class="well">
                    <h3>Invoice's detail.</h3>
                <table class="table table-bordered" style="font-size:14px;">
                <?php $attributes = array('class' => 'form-horizontal');
                echo form_open('invoice/update',$attributes); ?>
                        <tr>
                            <th colspan="3" bgcolor="#3399FF" style="color:#FFF">Invoice Table</th>
                        </tr>
            			<?php if(isset($records)) : foreach($records as $row) : ?>
                    
                      <?php $onclick = array('onclick'=>"return confirm('Are you sure you want to delete this staff member?')");?>
                       <div class="control-group hidden">
                        <label class="control-label" for="news_id">Invoice ID:</label>    
                        <div class="controls">
                          <input type="text" class="span4" name="news_id" id="news_id"  value="<?php echo $row -> invoice; ?>"  required/>
                        </div>
                    </div>
                    
                        <tr>
                            <td class="span2">Invoice Number</td>
                            <td class="span10"><?php echo $row->product_id; ?></td>
                        </tr>
                        <input class="hidden" name="product_id" value="<?php echo $row->product_id?>">
                        <tr>
                            <td class="span2">Full Name</td>
                            <td class="span10"><?php echo $row->payer_fname.' '.$row->payer_lname; ?></td>
                        </tr>
                        <tr>
                            <td class="span2">Address</td>
                            <td class="span10"><?php echo $row->payer_address.', '.$row->payer_state.', '.$row->payer_city.', '.$row->payer_country; ?></td>
                        </tr>
                        <!-- <tr>
                            <td class="span2">Contact Information</td>
                            <td class="span10"><?php echo $row->payer_email; ?><br><?php echo $row->payer_contact; ?></td>
                        </tr> -->
                        <tr>
                            <td class="span2">Price</td>
                            <td class="span10">$ <?php echo $row->product_amount; ?></td>
                        </tr>
                        
                       
                        <tr>
                            <td>Request Date</td>
                              <td colspan="2"><?php echo $row ->posted_date; ?></td>
                        </tr>
                        
                        <tr>
                            <td>Item Status</td>
                             <td  colspan="2">
                                 <select name="pack_type" id="pack_type">
                                        <option value="pending"<?php if($row->payment_status == "pending") echo 'selected="selected"'?>>Pending</option>  
                                        <option value="paid" <?php if($row->payment_status == "paid") echo 'selected="selected"'?>>Paid</option>  
                                </select>
                             </td>
                        </tr>
                        
                       <tr>
                        <td colspan="2">
                            <button type="submit" class="btn btn-success">Update</button>
                        </td>
                       </tr>
                
                    <?php endforeach; ?>
                     <?php echo form_close(); ?>
                
                <?php else : ?>
                <tr>
                    <td colspan="2">No result found</td>
                </tr>
                
                <?php endif; ?>
                </table>
            
                </div>
                <hr>
                <!-- ------------------------------------------------------------------ -->
               
                <!-- ------------------------------------------------------------------ -->
            </div>