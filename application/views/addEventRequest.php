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
                        <h3 class="box-title">Enter User Details</h3>
                    </div><!-- /.box-header -->
                    <!-- form start -->
                    <?php $this->load->helper("form"); ?>
                    <form role="form" id="addUser" action="<?php echo base_url() ?>addNewUser" method="post" role="form">
                        <div class="box-body">
                            <div class="row">
                                <div class="col-md-6">                                
                                    <div class="form-group">
                                        <label for="no_participants">Number of Participants:</label>
                                        <input type="text" class="form-control required" value="<?php echo set_value('no_participants'); ?>" id="no_participants" name="no_participants" maxlength="128" placeholder="Equipment Name">
                                    </div>
                                    
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="venue">Venue: (please check)</label>
                                        <?php foreach($venuedata as $venuedata){?>
                                              <input type="checkbox" name="venue[]" value="<?=$venuedata->venue_id;?>"><?=$venuedata->bldg_no;?>&nbsp<?=$venuedata->name;?> <br>
                                            <?php }?>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="department">Department: (please check)</label>
                                        <select name="department" id="" class="form-control">
                                              <?php foreach($option as $option){?>
                                            <option value=<?=$option->dep_id;?>><?=$option->acroname;?> - &nbsp<?=$option->name;?></option>
                                            <?php }?>
                                            </select>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="date_request">Date Reserved:</label>
                                        <input type="date" name="date_request" class='form-control' required placeholder="Date Reserved" value="<?php echo date('Y-m-d'); ?>" />
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="type">Type:</label>
                                        <input type="text" class="form-control required" id="type" value="<?php echo set_value('type'); ?>" name="type" maxlength="10" placeholder="Type">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="year_acc">Year Acquired:</label>
                                        <input type="text" class="form-control required" id="year_acc" value="<?php echo set_value('year_acc'); ?>" name="year_acc" maxlength="10" placeholder="Year Acquired">
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