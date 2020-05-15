<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="leftside.aspx.cs" Inherits="BookDonate.AdminASP.leftside" %>

      <aside class="main-sidebar">
        <!-- sidebar: style can be found in sidebar.less -->
        <section class="sidebar">
          <!-- Sidebar user panel -->
          <div class="user-panel">
            <div class="pull-left image">
              
                    <img class="img-circle circle" src="" style="width: 50px; height: 50px;"> 
                    <span class="hidden-xs font-weight-bold" style="font-weight: bold;">
                    
            </div>
            <div class="pull-left info">
              <p></p>

              <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
            </div>
          </div>
          <!-- search form -->
          <form action="#" method="get" class="sidebar-form">
            <div class="input-group">
              <input type="text" name="q" class="form-control" placeholder="Search..."/>
              <span class="input-group-btn">
                <button type='submit' name='search' id='search-btn' class="btn btn-flat"><i class="fa fa-search"></i></button>
              </span>
            </div>
          </form>
          <!-- /.search form -->
          <!-- sidebar menu: : style can be found in sidebar.less -->
          <ul class="sidebar-menu">
            <li class="active treeview">
              <a href="#">
                <i class="fa fa-dashboard"></i> <span>Dashboard</span> 
              </a>
            </li>
            
            <li>
              
            </li>
            <li class="treeview">
              <a href="edit_profile.php">
                <i class="fa fa-pie-chart"></i>
                <span>Edit Profile</span>
              </a>
              
            </li>
            <li class="treeview">
              <a href="#">
                <i class="fa fa-laptop"></i>
                <span>Lecture</span>
              </a>
              
            </li>
            <li class="treeview">
              <a href="#">
                <i class="fa fa-edit"></i> <span>Free Service</span>
              </a>
              
            </li>
            <li class="treeview">
              <a href="#">
                <i class="fa fa-table"></i> <span>Paid Service</span>
              </a>
              <ul class="treeview-menu">
                <li><a href="pages/tables/simple.html"><i class="fa fa-circle-o"></i> Simple tables</a></li>
                <li><a href="pages/tables/data.html"><i class="fa fa-circle-o"></i> Data tables</a></li>
              </ul>
            </li>
            
          </ul>
        </section>
        <!-- /.sidebar -->
      </aside>
