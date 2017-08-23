    </div>
    </div> <!--end of container fluid-->
        <div class="navbar navbar-fixed-bottom" align="center"><!--Start of footer-->
            <div class="navbar-inner">
                <div class="container">
                    <ul class="nav pull-right">
                      <li><a class="nav_a" href="http://www.daanfe.com" target="_blank">@inceptionCms by Daanfe Inc.</a></li>
                    </ul>
                <div class="container">
            </div>
        </div>
</body>
<script src="<?php echo base_url(); ?>assets/js/jquery.min.js"></script>
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script> -->
<script src="<?php echo base_url(); ?>assets/js/bootstrap.min.js"></script>
<script type="text/javascript" charset="utf8" src="//cdn.datatables.net/1.10.4/js/jquery.dataTables.js"></script>
<script language="javascript" type="text/javascript" src="<?php echo base_url('assets/js/graph')?>/jquery.jqplot.min.js"></script>
<script type="text/javascript" src="<?php echo base_url('assets/js/graph')?>/plugins/jqplot.highlighter.min.js"></script>
<script type="text/javascript" src="<?php echo base_url('assets/js/graph')?>/plugins/jqplot.cursor.min.js"></script>
<script type="text/javascript" src="<?php echo base_url('assets/js/graph')?>/plugins/jqplot.dateAxisRenderer.min.js"></script>



<script type="text/javascript" src="<?php echo base_url('assets/js/graph')?>/plugins/jqplot.pieRenderer.min.js"></script>
<script type="text/javascript" src="<?php echo base_url('assets/js/graph')?>/plugins/jqplot.donutRenderer.min.js"></script>

<script type="text/javascript">
$(document).ready(function(){
  var line1=[<?php foreach($records as $t){?>['<?php echo date('d-M-y', strtotime($t->date));?>',<?php echo $t->total;?>],<?php }?>];
  var plot1 = $.jqplot('chartdiv', [line1], {
      title:'Visits / Day',
      axes:{
        xaxis:{
          renderer:$.jqplot.DateAxisRenderer,
          tickOptions:{
            formatString:'%b&nbsp;%#d'
          } 
        },
        yaxis:{
          tickOptions:{
            formatString:'&nbsp;&nbsp;%.0f Nop'
            }
        }
      },
      highlighter: {
        show: true,
        sizeAdjust: 7.5
      },
      cursor: {
        show: false
      }
  });

// pie chart data
  var data=[<?php foreach($page_visit as $t){?>['<?php echo $t->page;?>',<?php echo $t->total;?>],<?php }?>];
  var plot1 = jQuery.jqplot ('chart', [data], 
    { 
      seriesDefaults: {
        // Make this a pie chart.
        renderer: jQuery.jqplot.PieRenderer, 
        rendererOptions: {
          // Put data labels on the pie slices.
          // By default, labels show the percentage of the slice.
          showDataLabels: true
        }
      }, 
      legend: { show:true, location: 'e' }
    }
  );
// ******************
});
</script>



<script type="text/javascript">
	$(document).ready( function () {
    $('#example').DataTable();
} );
</script>

</html>