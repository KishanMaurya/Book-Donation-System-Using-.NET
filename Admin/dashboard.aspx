<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dashboard.aspx.cs" Inherits="BookDonate.AdminASP.dashboard" %>



<!--#include file= 'header.aspx'-->
<!-- #include file= 'leftside.aspx'--->


<!------Log out Modal----->
<div class="modal bs-example-modal-sm" tabindex="-1" role="dialog" aria-hidden="true">
  <div class="modal-dialog modal-sm">
    <div class="modal-content">
      <div class="modal-header">
        <h4>Logout <i class="fa fa-lock">
        </i></h4></div>
      <div class="modal-body">
        <i class="fa fa-question-circle">
          
        </i> Are you sure you want to log-off?</div>
      <div class="modal-footer">
        <a href="logout.php" class="btn btn-primary btn-block">Logout</a></div>
    </div>
  </div>
</div>
<!-----end logout modal ------>
      <!-- Left side column. contains the logo and sidebar -->


      <!-- Right side column. Contains the navbar and content of the page -->
      <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
          <h1>
            Dashboard
            <small>Control panel</small>
          </h1>
          <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li class="active">Dashboard</li>
          </ol>
        </section>

        <!-- Main content -->
        <section class="content">
          <!-- Small boxes (Stat box) -->
          <div class="row">
           <!-- ./col -->
          </div><!-- /.row -->
          <!-- Main row -->
          <div class="row">
            <!-- Left col -->
            <section class="col-lg-7 connectedSortable">
              <!-- Custom tabs (Charts with tabs)-->


              <!-- Chat box -->
              <!-- /.box (chat box) -->

              <!-- TO DO List -->
              <!-- /.box -->

              <!-- quick email widget -->
              

            </section><!-- /.Left col -->
            <!-- right col (We are only adding the ID to make the widgets sortable)-->
            <section class="col-lg-5 connectedSortable">

             <!-- /.box -->

              <!-- Calendar -->
              <!-- /.box -->

            </section><!-- right col -->
          </div><!-- /.row (main row) -->

        </section><!-- /.content -->
      </div><!-- /.content-wrapper -->
<!---- #include file = 'footer.aspx'------>