<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title><?php echo $pageTitle; ?></title>
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
    <!-- Bootstrap 3.3.4 -->
    <link href="<?php echo base_url(); ?>assets/bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <!-- FontAwesome 4.3.0 -->
    <link href="<?php echo base_url(); ?>assets/bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <!-- Ionicons 2.0.0 -->
    <link href="<?php echo base_url(); ?>assets/bower_components/Ionicons/css/ionicons.min.css" rel="stylesheet" type="text/css" />
    <!-- Theme style -->
    <link href="<?php echo base_url(); ?>assets/dist/css/AdminLTE.min.css" rel="stylesheet" type="text/css" />
    <!-- AdminLTE Skins. Choose a skin from the css/skins 
         folder instead of downloading all of them to reduce the load. -->
    <link href="<?php echo base_url(); ?>assets/dist/css/skins/_all-skins.min.css" rel="stylesheet" type="text/css" />
    <!-- fullcalendar -->
    <link href="<?php echo base_url() ?>assets/bower_components/fullcalendar/fullcalendar.min.css" rel="stylesheet" type="text/css"/>
    <style>
    	.error{
    		color:red;
    		font-weight: normal;
    	}
    </style>
    <script src="<?php echo base_url(); ?>assets/bower_components/jquery/dist/jquery.min.js"></script>
    <script src="<?php echo base_url(); ?>assets/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
    <script type="text/javascript">
        var baseURL = "<?php echo base_url(); ?>";
    </script>
    
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
  </head>
  <body class="hold-transition skin-blue sidebar-mini">
    <div class="wrapper">
      
      <header class="main-header">
        <!-- Logo -->
        <a href="<?php echo base_url(); ?>" class="logo" style="background-color: #fff">
          <!-- mini logo for sidebar mini 50x50 pixels -->
          <span class="logo-mini" ><img src="http://localhost/cias/assets/images/logo.png" height="50" width="50"></span style="background-color: #fbb414">
          <!-- logo for regular state and mobile devices -->
          <span class="logo" style="background-color: #fff"><h4><b style="color:  #1A1851"> Mechanical And Electrical Unit</b></h4></span>
        </a>
        <!-- Header Navbar: style can be found in header.less -->
        <nav class="navbar navbar-static-top" role="navigation" style="background-color: #fbb414">
          <!-- Sidebar toggle button-->
          <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
            <span class="sr-only">Toggle navigation</span>
          </a>
          <div class="navbar-custom-menu">
            <ul class="nav navbar-nav">
              <li class="dropdown tasks-menu">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true">
                  <i class="fa fa-history"></i>
                </a>
                <ul class="dropdown-menu">
                  <li class="header"> Last Login : <i class="fa fa-clock-o"></i> <?= empty($last_login) ? "First Time Login" : $last_login; ?></li>
                </ul>
              </li>
              <!-- User Account: style can be found in dropdown.less -->
              <li class="dropdown user user-menu" style="background-color: #1A1851">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                  <img src="<?php echo base_url(); ?>assets/dist/img/avatar.png" class="user-image" alt="User Image"/>
                  <span class="hidden-xs"><?php echo $name; ?></span>
                </a>
                <ul class="dropdown-menu">
                  <!-- User image -->
                  <li class="user-header">
                    
                    <img src="<?php echo base_url(); ?>assets/dist/img/avatar.png" class="img-circle" alt="User Image" />
                    <p>
                      <?php echo $name; ?>
                      <small><?php echo $role_text; ?></small>
                    </p>
                    
                  </li>
                  <!-- Menu Footer-->
                  <li class="user-footer">
                    <div class="pull-left">
                      <a href="<?php echo base_url(); ?>profile" class="btn btn-warning btn-flat"><i class="fa fa-user-circle"></i> Profile</a>
                    </div>
                    <div class="pull-right">
                      <a href="<?php echo base_url(); ?>logout" class="btn btn-default btn-flat"><i class="fa fa-sign-out"></i> Sign out</a>
                    </div>
                  </li>
                </ul>
              </li>
            </ul>
          </div>
        </nav>
      </header>
      <!-- Left side column. contains the logo and sidebar -->
      <aside class="main-sidebar" style="background-color: #1A1851">
        <!-- sidebar: style can be found in sidebar.less -->
        <section class="sidebar">
          <!-- sidebar menu: : style can be found in sidebar.less -->
          <ul class="sidebar-menu">
            <li class="header">MAIN NAVIGATION</li>
            <li class="treeview">
              <a href="<?php echo base_url(); ?>dashboard">
                <i class="fa fa-dashboard"></i> <span>Dashboard</span></i>
              </a>
            </li>
           <!--  <li class="treeview">
              <a href="#" >
                <i class="fa fa-plane"></i>
                <span>New Task</span>
              </a>
            </li>
            <li class="treeview">
              <a href="#" >
                <i class="fa fa-ticket"></i>
                <span>My Tasks</span>
              </a>
            </li> -->
            <?php
            if($role == ROLE_ADMIN )
            {
            ?>
            <li class="treeview">
               <a href="javascript:;" data-toggle="collapse" data-target="#demo"><i class="fa fa-fw fa-thumb-tack"></i> View Requests <i class="fa fa-fw fa-caret-down"></i></a>
                        <ul id="demo" class="collapse">
                            <li>
                                <a href="<?php echo base_url(); ?>userListing">  View Event Requests</a>
                            </li>
                            <li>
                                <a href="<?php echo base_url(); ?>blank_page/blank_page2"> View Repair Requests</a>
                            </li>
                          </ul>
            </li>
            <li class="treeview">
               <a href="javascript:;" data-toggle="collapse" data-target="#demo1"><i class="fa fa-fw fa-file"></i> Set Schedules <i class="fa fa-fw fa-caret-down"></i></a>
                        <ul id="demo1" class="collapse">
                            <li>
                                <a href="<?php echo base_url(); ?>Main/viewAddNewEventRequest"> Set Event Schedule</a>
                            </li>
                            <li>
                                <a href="<?php echo base_url(); ?>Main/viewAddjobRequest"> Set Repair Schedule</a>
                            </li>
                          </ul>
              </li>
             <li class="treeview">
               <a href="javascript:;" data-toggle="collapse" data-target="#demo2"><i class="fa fa-fw fa-file"></i> View Schedules<i class="fa fa-fw fa-caret-down"></i></a>
                        <ul id="demo2" class="collapse">
                            <li>
                                <a href="<?php echo base_url(); ?>main/viewEventSchedule"> Event Schedules</a>
                            </li>
                            <li>
                                <a href="<?php echo base_url(); ?>blank_page/blank_page2"> Repair Schedules</a>
                            </li>
                            <li>
                                <a href="<?php echo base_url(); ?>Calendar/get_events"> Troubleshot</a>
                            </li>
                          </ul>
            </li>
            <li class="treeview">
               <a href="javascript:;" data-toggle="collapse" data-target="#demo3"><i class="fa fa-fw fa-file"></i> Equipments <i class="fa fa-fw fa-caret-down"></i></a>
                        <ul id="demo3" class="collapse">
                            <li>
                                <a href="<?php echo base_url(); ?>Main/viewAddNewEquipment"> Add Equipments</a>
                            </li>
                            <li>
                                <a href="<?php echo base_url(); ?>User/viewEquipment"> View Equipments</a>
                            </li>
                          </ul>
              </li>
             <li class="treeview">
               <a href="javascript:;" data-toggle="collapse" data-target="#demo4"><i class="fa fa-fw fa-file"></i> Event Equipments <i class="fa fa-fw fa-caret-down"></i></a>
                        <ul id="demo4" class="collapse">
                            <li>
                                <a href="<?php echo base_url(); ?>Main/viewAddNewEventEquipment"> Add Event Equipments</a>
                            </li>
                            <li>
                                <a href="<?php echo base_url(); ?>User/viewEventEquipment"> View Event Equipments</a>
                            </li>
                          </ul>
            </li>
            <li class="treeview">
               <a href="javascript:;" data-toggle="collapse" data-target="#demo5"><i class="fa fa-fw fa-file"></i> Venue <i class="fa fa-fw fa-caret-down"></i></a>
                        <ul id="demo5" class="collapse">
                            <li>
                                <a href="<?php echo base_url(); ?>Main/viewAddNewVenue"> Add Venue</a>
                            </li>
                            <li>
                                <a href="<?php echo base_url(); ?>User/viewVenue"> View Venue</a>
                            </li>
                          </ul>
              </li>
              <li class="treeview">
               <a href="javascript:;" data-toggle="collapse" data-target="#demo20"><i class="fa fa-fw fa-file"></i> Department <i class="fa fa-fw fa-caret-down"></i></a>
                        <ul id="demo20" class="collapse">
                            <li>
                                <a href="<?php echo base_url(); ?>Main/viewAddNewDepartment"> Add Department</a>
                            </li>
                            <li>
                                <a href="<?php echo base_url(); ?>User/viewDepartment"> View Department</a>
                            </li>
                          </ul>
              </li>
             <li class="treeview">
               <a href="javascript:;" data-toggle="collapse" data-target="#demo6"><i class="fa fa-fw fa-file"></i> Forecasts <i class="fa fa-fw fa-caret-down"></i></a>
                        <ul id="demo6" class="collapse">
                            <li>
                                <a href="<?php echo base_url(); ?>blank_page/blank_page1"> View Forecasts</a>
                            </li>
                        </ul>
              </li>
           <li class="treeview">
              <a href="<?php echo base_url(); ?>userListing">
                <i class="fa fa-users"></i>
                <span>Accounts</span>
              </a>
            </li>
              <!-- <a href="#" >
                <i class="fa fa-thumb-tack"></i>
                <span>View Requests</span>
              </a>
            </li>
            <li class="treeview">
              <a href="#" >
                <i class="fa fa-upload"></i>
                <span>Set Schedules</span>
              </a>
            </li>
             <li class="treeview">
              <a href="#" >
                <i class="fa fa-thumb-tack"></i>
                <span>View Schedules</span>
              </a>
            </li>
            <li class="treeview">
              <a href="#" >
                <i class="fa fa-upload"></i>
                <span>Equipment</span>
              </a>
            </li>
             <li class="treeview">
              <a href="#" >
                <i class="fa fa-thumb-tack"></i>
                <span>Event Equipment</span>
              </a>
            </li>
            <li class="treeview">
              <a href="#" >
                <i class="fa fa-upload"></i>
                <span>Venue</span>
              </a>
            </li>
             <li class="treeview">
              <a href="#" >
                <i class="fa fa-thumb-tack"></i>
                <span>Forecast</span>
              </a>
            </li>
             <li class="treeview">
              <a href="<?php echo base_url(); ?>userListing">
                <i class="fa fa-users"></i>
                <span>Accounts</span>
              </a>
            </li>-->
            <?php
            }
            if($role ==ROLE_MANAGER)
            {
            ?>
            <li class="treeview">
               <a href="javascript:;" data-toggle="collapse" data-target="#demo"><i class="fa fa-fw fa-thumb-tack"></i>Request <i class="fa fa-fw fa-caret-down"></i></a>
                        <ul id="demo" class="collapse">
                            <li>
                                <a href="<?php echo base_url(); ?>Main/viewAddNewEventRequest">  Add Event Requests</a>
                            </li>
                            <li>
                                <a href="<?php echo base_url(); ?>Main/jobRequest"> Add Repair Requests</a>
                            </li>
                          </ul>
            </li>
            <li class="treeview">
               <a href="javascript:;" data-toggle="collapse" data-target="#demo1"><i class="fa fa-fw fa-file"></i> View Requests <i class="fa fa-fw fa-caret-down"></i></a>
                        <ul id="demo1" class="collapse">
                            <li>
                                <a href="<?php echo base_url(); ?>blank_page/blank_page1"> Approved Event Requests</a>
                            </li>
                            <li>
                                <a href="<?php echo base_url(); ?>blank_page/blank_page2"> Approved Repair Requests</a>
                            </li>
                            <li>
                                <a href="<?php echo base_url(); ?>blank_page/blank_page1"> Declined Event Requests</a>
                            </li>
                            <li>
                                <a href="<?php echo base_url(); ?>blank_page/blank_page2"> Declined Repair Requests</a>
                            </li>
                            <li>
                                <a href="<?php echo base_url(); ?>blank_page/blank_page1"> Pending Event Requests</a>
                            </li>
                            <li>
                                <a href="<?php echo base_url(); ?>blank_page/blank_page2"> Pending Repair Requests</a>
                            </li>
                          </ul>
             <li class="treeview">
              <a href="<?php echo base_url(); ?>userListing">
                <i class="fa fa-users"></i>
                <span>Event Schedules</span>
              </a>
            </li>
            <?php
            }
            if($role ==ROLE_STUDENT)
            {
            ?>
            <li class="treeview">
               <a href="javascript:;" data-toggle="collapse" data-target="#demo"><i class="fa fa-fw fa-thumb-tack"></i>Request <i class="fa fa-fw fa-caret-down"></i></a>
                        <ul id="demo" class="collapse">
                            <li>
                                <a href="<?php echo base_url(); ?>Main/viewAddNewEventRequest">  Add Event Requests</a>
                            </li>
                          </ul>
            <li class="treeview">
               <a href="javascript:;" data-toggle="collapse" data-target="#demo1"><i class="fa fa-fw fa-file"></i> View Requests <i class="fa fa-fw fa-caret-down"></i></a>
                        <ul id="demo1" class="collapse">
                            <li>
                                <a href="<?php echo base_url(); ?>blank_page/blank_page1"> All Requests</a>
                            </li>
                            <li>
                                <a href="<?php echo base_url(); ?>blank_page/blank_page2"> Approved Requests</a>
                            </li>
                            <li>
                                <a href="<?php echo base_url(); ?>blank_page/blank_page1"> Pending Requests</a>
                            </li>
                            <li>
                                <a href="<?php echo base_url(); ?>blank_page/blank_page2"> Declined Requests</a>
                            </li>
                          </ul>
             <li class="treeview">
              <a href="<?php echo base_url(); ?>userListing">
                <i class="fa fa-users"></i>
                <span>Event Schedules</span>
              </a>
            </li>-->
            <?php
            }
            ?>
          </ul>
        </section>
        <!-- /.sidebar -->
      </aside>