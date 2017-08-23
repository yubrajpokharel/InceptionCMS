
    <!------------------------------------------------ List Portion of the CMS ----------------------------------------------------------------------------- -->        
            <div class="span9 hero-unit">
                <div class="well">
                    <h3>Send Newsletter</h3>
					 <?php $attributes = array('class' => 'form-horizontal');
                     echo form_open('newsletter/sendmail',$attributes); ?>

                    
                    
                    <div class="control-group">
                        <label class="control-label" for="seo_id">Enter Message</label>    
                        <div class="controls">
                          <textarea class="span10" rows="10" id="message" required ></textarea>
                        </div>
                    </div>
                                        
                    <p align="center">
                      <button type="submit" class="btn">Send</button>
                    </p>                
                </div>
			</div>