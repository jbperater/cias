<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        <i class="fa fa-users"></i> Add Event Reservation
        <small>Add Reservation</small>
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
                    <form role="form" id="addUser" action="<?php echo base_url() ?>Main/" method="post" role="form">
                        <div class="box-body">
                            <div class="row">
                                <div class="col-md-6">                                
                                    <div class="form-group">
                                        <label for="no_participants">Number of Participants</label>
                                        <input type="Number" class="form-control required" value="<?php echo set_value('noParticipant'); ?>" id="no_participants" name="noParticipant" maxlength="128" placeholder="Number of Participants">
                                    </div>
                                    
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="tittle">Title Of Event</label>
                                        <input type="text" name="tittleEvent" id="tittle" class='form-control' required placeholder="Title of Event" value="" />
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="dateTimeActual">Date And Time Actual Use</label>
                                        <input type="datetime-local" name="dateTimeActual" id="dateTimeActual" class='form-control' required placeholder="Date And Time Actual Use" value="<?php echo date('Y-m-d'); ?>" />
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="dateTimeEnd">Date And Time End Use</label>
                                        <input type="datetime-local" name="dateTimeEnd" id="dateTimeEnd" class='form-control' required placeholder="Date Time Actual End" value="<?php echo date('Y-m-d'); ?>" />
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="purpose">Purpose</label>
                                        <input type="text" name="purpose" id="purpose" class='form-control' required placeholder="Purpose">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="contactNo">Contact No</label>
                                        <input type="text" class="form-control required" id="contactNo" value="<?php echo set_value('contactNo'); ?>" name="contactNo" maxlength="10" placeholder="Contact Number">
                                    </div>
                                </div>    
                            </div>
                            <div class="row">
                                 <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="venue">Venue: (please check)</label><br>
                                        <?php foreach($venuedata as $venuedata){?>
                                              <input type="checkbox" id="venue" name="venue[]" value="<?=$venuedata->venID;?>"><?=$venuedata->bldgNo;?>&nbsp<?=$venuedata->name;?>&nbsp<?=$venuedata->type;?><br>
                                            <?php }?>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="department">Department: (please select)</label>
                                            <select name="department" id="" class="form-control">
                                                  <?php foreach($option as $option){?>
                                                <option value=<?=$option->departId;?>><?=$option->acroname;?> - &nbsp<?=$option->name;?></option>
                                                <?php }?>
                                                </select>
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