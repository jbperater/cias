<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        <i class="fa fa-users"></i> History Management
        <small>Add History</small>
      </h1>
    </section>
    
    <section class="content">
    
        <div class="row">
            <!-- left column -->
            <div class="col-md-8">
              <!-- general form elements -->
                
                
                
                <div class="box box-primary">
                    <div class="box-header">
                        <h3 class="box-title">Enter Details</h3>
                    </div><!-- /.box-header -->
                    <!-- form start -->
                    <?php $this->load->helper("form"); ?>
                    <form role="form" id="addHistory" action="<?php echo base_url() ?>Main/historyInsert?id=<?php echo $this->input->get('id') ?>" method="post" role="form">
                        <div class="box-body">
                            <div class="row">
                                <div class="col-md-6">                                
                                    <div class="form-group">
                                        <label for="dateReq">Date Requested</label>
                                        <input type="date" class="form-control required" value="" id="dateReq" name="dateReq" maxlength="128" placeholder="Date Requested">
                                    </div>
                                    
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="description">Description of Equipment</label>
                                        <input type="text" class="form-control required " id="description" value="" name="description" maxlength="128" placeholder="Description">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="partRep">Parts Used/Replaced</label>
                                        <input type="text" class="form-control required" id="partRep" name="partRep" maxlength="20" placeholder="Part Used/Replaced">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="dateRep">Date of Repair</label>
                                        <input type="date" class="form-control required" id="dateRep" name="dateRep" maxlength="20" placeholder="Date of Repair">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="timeRep">Time of Repair</label>
                                        <input type="time" class="form-control required" id="timeRep" value="" name="timeRep" maxlength="10" placeholder="Time of Repair">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="dateFin">Date Completed</label>
                                        <input type="date" class="form-control required" id="dateFin" value="" name="dateFin" maxlength="10" placeholder="Date Completed">
                                    </div>
                                </div>    
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="remark">Remarks/Status</label>
                                        <input type="text" class="form-control required" id="remark" value="" name="remark" maxlength="10" placeholder="Remarks">
                                    </div>
                                </div>
                            </div>
                        </div><!-- /.box-body -->
            <div class="box-footer">
                            <input type="submit" class="btn btn-primary" data-toggle="modal" data-target="#myModal"value="Submit" />
                            <input type="reset" class="btn btn-default" value="Reset" />
                        </div>
                    </form>
                </div>
            </div>
            <div class="modal fade" id="myModal" role="dialog">
            <div class="modal-dialog">
            
              <!-- Modal content-->
              <div class="modal-content">
                <div class="modal-header">
                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                  <h4 class="modal-title">Notice</h4>
                </div>
                <div class="modal-body">
                  <p>Successfully Added!</p>
                </div>
                <div class="modal-footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                </div>
              </div>
              
            </div>
          </div>
          
    </section>
</div>
<script type="text/javascript" src="<?php echo base_url(); ?>assets/js/common.js" charset="utf-8"></script>
<script type="text/javascript">
    jQuery(document).ready(function(){
        jQuery('ul.pagination li a').click(function (e) {
            e.preventDefault();            
            var link = jQuery(this).get(0).href;            
            var value = link.substring(link.lastIndexOf('/') + 1);
            jQuery("#searchList").attr("action", baseURL + "Main/historyInsert/" + value);
            jQuery("#searchList").submit();
        });
    });

    <?php  
    $this->load->helper('form');
    $success = $this->session->flashdata('success');
        if($success){?>
            $(document).ready(function(){
                $("#myModal").modal('show');
            });
    <?php } ?>

</script>
