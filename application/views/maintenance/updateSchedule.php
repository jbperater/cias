<?php
$jobId = $scheduleInfo->jobId;
$itemNo = $scheduleInfo->itemNo;
$workDescript = $scheduleInfo->workDescript;
$location = $scheduleInfo->location;
$dateTimeEnd = $scheduleInfo->dateTimeStart;
$dateReq = $scheduleInfo->dateReq;
$dateTimeEnd = $scheduleInfo->dateTimeEnd;
$remark = $scheduleInfo->remark;
?>

<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        <i class="fa fa-users"></i> Update Schedule
        <small>View or modify information</small>
      </h1>
    </section>
    
    <section class="content">
    
        <div class="row">

            <div class="col-md-8">

                <div class="box box-primary">
                    <div class="box-header">
                        <h3 class="box-title">Enter Details</h3>
                    </div><!-- /.box-header -->
                    <!-- form start -->
                    <?php $this->load->helper("form"); ?>
                    <form role="form" id="addHistory" action="<?php echo base_url() ?>scheduleUpdate" method="post" role="form">
                        <?php $this->load->helper('form'); ?>
                        <div class="box-body">
                            <div class="row">            
                                            <div class="form-group">
                                                <label for="itemNo">item Number</label>
                                                <input type="text" class="form-control" id="itemNo" name="itemNo" placeholder="<?php echo $itemNo; ?>" value="<?php echo set_value('itemNo', $itemNo); ?>" maxlength="128" />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="workDescript">Work Description</label>
                                                <input type="text" class="form-control" id="workDescript" name="workDescript" placeholder="<?php echo $workDescript; ?>" value="<?php echo set_value('workDescript', $workDescript); ?>" maxlength="10">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="location">Location</label>
                                                <input type="text" class="form-control" id="location" name="location" placeholder="<?php echo $location; ?>" value="<?php echo set_value('location', $location); ?>">
                                            </div>
                                        </div>
                                    </div>
                                     <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="dateTimeStart">Date and Time Started</label>
                                                <input type="Datetime-local" class="form-control" id="dateTimeStart" name="dateTimeStart" placeholder="<?php echo $dateTimeStart; ?>" value="<?php echo set_value('dateTimeStart', $dateTimeStart); ?>">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="dateReq">Date Requested</label>
                                                <input type="Datetime-local" class="form-control" id="dateReq" name="dateReq" placeholder="<?php echo $dateReq; ?>" value="<?php echo set_value('dateReq', $dateReq); ?>">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="dateTimeEnd">Date Completed</label>
                                                <input type="text" class="form-control" id="dateTimeEnd" name="dateTimeEnd" placeholder="<?php echo $dateTimeEnd; ?>" value="<?php echo set_value('dateTimeEnd', $dateTimeEnd); ?>">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="remark">Remarks</label>
                                                <input type="text" class="form-control" id="remark" name="remark" placeholder="<?php echo $remark; ?>" value="<?php echo set_value('remark', $remark); ?>">
                                            </div>
                                        </div>
                                    </div>
                                </div><!-- /.box-body -->
                                <div class="box-footer">
                                    <input type="submit" class="btn btn-primary" value="Submit" />
                                    <input type="reset" class="btn btn-default" value="Reset" />
                                </div>
                            </form>
                        </div>              
                    </div>
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

                <?php  
                    $noMatch = $this->session->flashdata('nomatch');
                    if($noMatch)
                    {
                ?>
                <div class="alert alert-warning alert-dismissable">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                    <?php echo $this->session->flashdata('nomatch'); ?>
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

<script src="<?php echo base_url(); ?>assets/js/editUser.js" type="text/javascript"></script>