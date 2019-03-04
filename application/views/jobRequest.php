<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        <i class="fa fa-users"></i> Add Repair Request
        <small>Add</small>
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
                    <form role="form" id="addUser" action="<?php echo base_url() ?>Main/jobRequestInsert" method="post" role="form">
                        <div class="box-body">
                            <div class="row">
                                <div class="col-md-6">                                
                                    <div class="form-group">

                                        <label for="itemNo">Item Number:</label>
                                        <input type="text" class="form-control required" value="<?php echo set_value('itemNo'); ?>" id="itemNo" name="itemNo" maxlength="128" placeholder="Item Number">

                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="location">Location (please select)</label>
                                            <select name="location" id="" class="form-control">
                                                  <?php foreach($option as $option){?>
                                                <option value=<?=$option->locID;?>><?=$option->bldgNo;?> - &nbsp<?=$option->roomNo;?> - &nbsp<?=$option->name;?></option>
                                                <?php }?>
                                                </select>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="description">Work Description:</label>
                                        <input type="textarea" class="form-control required " id="description" value="<?php echo set_value('description'); ?>" name="description" maxlength="128" placeholder="Work Description" style="height: 50px;">

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
            jQuery("#searchList").attr("action", baseURL + "Main/jobRequestInsert/" + value);
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