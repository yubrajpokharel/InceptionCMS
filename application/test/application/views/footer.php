    </div>
    </div> <!--end of container fluid-->
        <div class="navbar navbar-fixed-bottom"><!--Start of footer-->
            <div class="navbar-inner">
                <div class="container">
                    <ul class="nav pull-right">
                      <li><a class="nav_a" href="http://www.daanfe.com" target="_blank">@inceptionCms by Daanfe Inc.</a></li>
                    </ul>
                <div class="container">
            </div>
        </div>
</body>
<script src="<?php echo base_url(); ?>assets/js/jquery.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="<?php echo base_url(); ?>assets/js/bootstrap.min.js"></script>
<!-- plugins for datatable -->
<script type="text/javascript" charset="utf8" src="//cdn.datatables.net/1.10.4/js/jquery.dataTables.js"></script>
<!-- plugins for graphs -->
<script language="javascript" type="text/javascript" src="<?php echo base_url('assets/js/graph')?>/jquery.jqplot.min.js"></script>
<script type="text/javascript" src="<?php echo base_url('assets/js/graph')?>/plugins/jqplot.highlighter.min.js"></script>
<script type="text/javascript" src="<?php echo base_url('assets/js/graph')?>/plugins/jqplot.cursor.min.js"></script>
<script type="text/javascript" src="<?php echo base_url('assets/js/graph')?>/plugins/jqplot.dateAxisRenderer.min.js"></script>
<script type="text/javascript" src="<?php echo base_url('assets/js/graph')?>/plugins/jqplot.pieRenderer.min.js"></script>
<script type="text/javascript" src="<?php echo base_url('assets/js/graph')?>/plugins/jqplot.donutRenderer.min.js"></script>
<!-- plugins for Jgrowl -->
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery-jgrowl/1.4.1/jquery.jgrowl.min.js"></script>
<!-- plugins for animstion -->
<script type="text/javascript">
    CKEDITOR.replace( 'category_desc', { 
    filebrowserBrowseUrl: 'http://localhost/greenpaperfirst.com/assets/ckeditor/plugins/w3bdeveloper_uimages/index.php',
        filebrowserWindowWidth: '860',
        filebrowserWindowHeight: '660'
    });

    function CkEditorURLTransfer(url) {
        window.parent.CKEDITOR.tools.callFunction(1, url, '');
        $('#cke_111_textInput').val(url); 
    }
</script>

<script type="text/javascript">
    $(document).ready(function() {
        $('#example').DataTable();
    });
</script>





<script type="text/javascript">
    $(document).ready(function(){
            var name = $('.so_name :selected').text();
            var url = '<?php echo base_url();?>social/selection';

            $.ajax({
                url: url,
                type: 'POST',
                data: 'name='+name,
                success: function (data){
                     $('#so_link').val(data);
                     console.log("Success");
                },
                error: function (xhr, desc, err){
                    console.log("error");
                } 
            });

        $('.so_name').on('change', function() {
            var name = $('.so_name :selected').text();
            var url = '<?php echo base_url();?>social/selection';

            $.ajax({
                url: url,
                type: 'POST',
                data: 'name='+name,
                success: function (data){
                     $('#so_link').val(data);
                     console.log("Success");
                },
                error: function (xhr, desc, err){
                    console.log("error");
                } 
            });
        });
    });
</script>
</html>