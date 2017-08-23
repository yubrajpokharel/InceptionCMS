<!--  -->
<?php 
	// $admin_db= $this->load->database('ADMINDB', TRUE);
	// $query = $admin_db->get('about_us');
	// foreach ($query->result() as $row)
	//      echo $row->about_name;
 ?>
<!--  -->


<div class="span6 well">
	<h2>Welcome to Awesome</h2>	
	<div class="row" style="padding:10px;">
	
		<!-- graph for the hit count per day -->
		<?php if(!empty($records)) { ?>
			<div class="span12" id="chartdiv" style="height:400px;"></div>
		<?php } else { ?>
	    	<div class="span12" style="padding:10px;">No any data to generate statictics.</div>
	    <?php } ?>
	
	        <div class="span12" style="padding:10px;" align="center">&nbsp;<hr><strong>Top 10 Page visit chart</strong></div>

	    <!-- graph for the pages visit -->
	    <?php if(!empty($page_visit)) { ?>
			<div class="span12" id="chart" style="height:400px;"></div>
		<?php } else { ?>
	    	<div class="span12" style="padding:10px;">No any data to generate statictics.</div>
	    <?php } ?>
	</div>
</div>

<div class="span3">
	<div class="well"><h5>Top 10 Visited Countries</h5>
		<table class="table table-striped">
			<tr>
				<th class="span3">Country</th>
				<th class="span9">Visits</th>
			</tr>
			<?php $data = json_decode(get_top10VisitedCountries()); ?>
				<?php foreach ($data as $d) { ?>
					<tr>
						<td style="font-size: 10px; height:20px "><strong><?php echo $d->country;?></strong></td>
						<td>
							<div class="progress progress-info" title="Total : <?php echo $d->total?>">  
							  <div class="bar" style="width:<?php echo (($d->total)/(get_totaltop10Visit())*100)?>%"></div>
							</div>
						</td>
					</tr>	
				<?php }	
			 ?>
		</table>
	</div>

	<div class="well">
		<h5>New updates</h5>		
		<table class="table table-striped">
		<?php $not = json_decode(get_notification_updates());
			foreach ($not as $n) { ?>
			<tr><td><?php echo $n->record_desc;?></td></tr>
		<?php } ?>
		</table>
	</div>
	
</div>



           