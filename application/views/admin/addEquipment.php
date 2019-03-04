<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        <i class="fa fa-users"></i> Equipment Management
        <small>Add Equipment</small>
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
                    <form role="form" id="addUser" action="<?php echo base_url() ?>Main/equipmentInsert" method="post" role="form">
                        <div class="box-body">
                            <div class="row">
                                <div class="col-md-6">                                
                                    <div class="form-group">
                                        <label for="equipName">Equipment Name</label>
                                        <input type="text" class="form-control required" value="<?php echo set_value('equipName'); ?>" id="equipName" name="equipName" maxlength="128" placeholder="Equipment Name">
                                    </div>
                                    
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="brand">Brand</label>
                                        <input type="text" class="form-control required " id="brand" value="<?php echo set_value('brand'); ?>" name="brand" maxlength="128" placeholder="Brand">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="model">Model</label>
                                        <input type="text" class="form-control required" id="model" name="model" maxlength="20" placeholder="Model">
                                    </div>  
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="serialNo">Serial Number</label>
                                        <input type="text" class="form-control required" id="serialNo" name="serialNo" maxlength="20" placeholder="Serial Number">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="office">Office</label>
                                        <input type="text" class="form-control required" id="office" value="<?php echo set_value('office'); ?>" name="office" maxlength="10" placeholder="Office">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="department">Department</label>
                                        <input type="text" class="form-control required" id="department" value="<?php echo set_value('department'); ?>" name="department" maxlength="10" placeholder="Department">
                                    </div>
                                </div>    
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="type">Type</label>
                                        <input type="text" class="form-control required" id="type" value="<?php echo set_value('type'); ?>" name="type" maxlength="10" placeholder="Type">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="yearAcc">Year Acquired</label>
                                        <input type="text" class="form-control required" id="yearAcc" value="<?php echo set_value('yearAcc'); ?>" name="yearAcc" maxlength="10" placeholder="Year Acquired">
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
            jQuery("#searchList").attr("action", baseURL + "Main/equipmentInsert/" + value);
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