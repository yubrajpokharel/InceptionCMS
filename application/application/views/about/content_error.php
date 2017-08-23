
    
    <!------------------------------------------------ List Portion of the CMS ------------------------------------------------------------------------------>        
            <div class="span9 hero-unit">
            	<div class="well"><?php echo $error;?></div>
                <div class="well">
                    <h3>Add Staff's Details</h3>
					 <?php $attributes = array('class' => 'form-horizontal');
                     echo form_open_multipart('staff/create',$attributes); ?>
            </div>