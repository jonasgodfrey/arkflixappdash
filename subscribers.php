
<?php
  require('include/header.php');

  require('include/sidebar.php');

?>
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Active Subscribers</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Page</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
       


        <!-- SELECT2 EXAMPLE -->
        <div class="card card-success">
          <div class="card-header">
            <h3 class="card-title">Subscribers</h3>

            <div class="card-tools">
              <button type="button" class="btn btn-tool" data-card-widget="collapse"><i class="fas fa-minus"></i></button>
              <button type="button" class="btn btn-tool" data-card-widget="remove"><i class="fas fa-times"></i></button>
            </div>
          </div>
          <!-- /.card-header -->
          <div class="card-body">
            <table id="example1" class="table table-bordered table-striped">
              <thead>
              <tr>
                <th>id</th>
                <th>Email</th>
                <th>Name</th>
                <th>Action</th>               
              
              </tr>
              </thead>
              <tbody>
              <tr>
                <td>001</td>
                <td>example@gmail.com</td>                
                <td>John Doe</td>
                <td><a href="#" data-toggle="modal" data-target="#exampleModalCenter" class="btn btn-danger">Unsubscribe</a></td>
              
              </tr>
             
            <tfoot>
            <tr>
                <th>id</th>
                <th>Email</th>
                <th>Name</th>
                <th>Action</th>               
              
              </tr>
              </tfoot>
            </table>
          </div>
          <!-- /.card-body -->
         
        </div>
        <!-- /.card -->

      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>

  <?php
  require('include/footer.php');

?>