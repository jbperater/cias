<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        <i class="fa fa-users"></i> User Management
        <small>Add / Edit User</small>
      </h1>
    </section>
    
    <section class="content">
    
        <div class="row">
            <!-- left column -->
            <div class="col-md-8">
              <!-- general form elements -->
                
                
                
                <div class="box box-primary">
                    <div class="box-header">
                        <h3 class="box-title">Enter User Details</h3>
                    </div><!-- /.box-header -->
                    <!-- form start -->
                    <?php $this->load->helper("form"); ?>
                    <form role="form" id="addUser" action="<?php echo base_url() ?>addNewUser" method="post" role="form">
                        <div class="box-body">
                            <div class="row">
                                <div class="col-md-6">                                
                                    <div class="form-group">
                                        <label for="date_req">Date Requested:</label>
                                        <input type="text" class="form-control required" value="<?php echo set_value('date_req'); ?>" id="date_req" name="date_req" maxlength="128" placeholder="Date Requested">
                                    </div>
                                    
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="description">Description of Equipment:</label>
                                        <input type="text" class="form-control required " id="description" value="<?php echo set_value('description'); ?>" name="description" maxlength="128" placeholder="Description">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="part">Parts Used/Replaced:</label>
                                        <input type="text" class="form-control required" id="part" name="part" maxlength="20" placeholder="Part Used/Replaced">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="serial_no">Serial Number:</label>
                                        <input type="text" class="form-control required" id="serial_no" name="serial_no" maxlength="20" placeholder="Serial Number">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="time_rep">Time of Repair:</label>
                                        <input type="text" class="form-control required" id="time_rep" value="<?php echo set_value('time_rep'); ?>" name="time_rep" maxlength="10" placeholder="Time of Repair">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="date_fin">Date Completed:</label>
                                        <input type="text" class="form-control required" id="date_fin" value="<?php echo set_value('date_fin'); ?>" name="date_fin" maxlength="10" placeholder="Date Completed">
                                    </div>
                                </div>    
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="remark">Remarks/Status:</label>
                                        <input type="text" class="form-control required" id="remark" value="<?php echo set_value('remark'); ?>" name="remark" maxlength="10" placeholder="Time of Repair">
                                    </div>
                                </div>
                                <!--   <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="date_fin">Performed By:</label>
                                        <input type="text" class="form-control required" id="date_fin" value="<?php echo set_value('date_fin'); ?>" name="date_fin" maxlength="10" placeholder="Date Completed">
                                    </div>
                                </div>     -->
                            </div>
                        </div><!-- /.box-body -->
    
                        <div class="box-footer">
                            <input type="submit" class="btn btn-primary" value="Submit" />
                            <input type="reset" class="btn btn-default" value="Reset" />
                        </div>
                    </form>
                </div>
            </div>
            <div class="col-md-4">
                <?php
                    $this->load->helper('form');
                    $error = $this->session->flashdata('error');
                    if($error)
                    {
                ?>
                <div class="alert alert-danger alert-dismissable">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                    <?php echo $this->session->flashdata('error'); ?>                    
                </div>
                <?php } ?>
                <?php  
                    $success = $this->session->flashdata('success');
                    if($success)
                    {
                ?>
                <div class="alert alert-success alert-dismissable">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                    <?php echo $this->session->flashdata('success'); ?>
                </div>
                <?php } ?>
                
                <div class="row">
                    <div class="col-md-12">
                        <?php echo validation_errors('<div class="alert alert-danger alert-dismissable">', ' <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button></div>'); ?>
                    </div>
                </div>
            </div>
        </div>    
    </section>
    
</div>
<script src="<?php echo base_url(); ?>assets/js/addUser.js" type="text/javascript"></script>