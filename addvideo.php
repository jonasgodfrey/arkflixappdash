
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
            <h1>Add Video</h1>
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
        <div class="card card-info">
          <div class="card-header">
            <h3 class="card-title">Add Video</h3>

            <div class="card-tools">
              <button type="button" class="btn btn-tool" data-card-widget="collapse"><i class="fas fa-minus"></i></button>
              <button type="button" class="btn btn-tool" data-card-widget="remove"><i class="fas fa-times"></i></button>
            </div>
          </div>
          <!-- /.card-header -->
          <div class="card-body">
            <div class="row">
              <div class="col-md-4">
                <div class="form-group">
                  <label>Video Category</label>
                  <select class="form-control select2" style="width: 100%;">
                    <option selected="selected">Select category</option>
                    <option></option>                   
                  </select>
                </div>
              </div>  

             

              <div class="col-md-4">
                <div class="form-group">
                  <label>Video Title</label>
                  <input type="text" name="name" class="form-control" placeholder="">
                   
                </div>
              </div> 

              <div class="col-md-4">
                <div class="form-group">
                  <label>Duration</label>
                  <input type="text" name="email" class="form-control" placeholder="">
                   
                </div>
              </div> 
              <div class="col-md-6">
                <div class="form-group">
                  <label>Video Iframe</label>
                  <textarea name="" id="" cols="30" rows="4" class="form-control"></textarea>
                   
                </div>
              </div> 
              <div class="col-md-6">
                <div class="form-group">
                  <label>Video Summary</label>
                  <textarea name="" id="" cols="30" rows="4" class="form-control"></textarea>
                  
                </div>
              </div> 
              <div class="col-md-4">
                <div class="form-group">
                  <label>Upload Poster</label>
                  <input type="file" name="address" >
                   
                </div>
              </div> 
            </div>  
            
              
            <button class="btn btn-primary">Add Video</button>
            <!-- /.row -->
            
          </div>
          <!-- /.card-body -->
          <div class="card-footer">
            <!-- Visit <a href="https://select2.github.io/">Select2 documentation</a> for more examples and information about
            the plugin. -->
          </div>
        </div>
        <!-- /.card -->


        <!-- SELECT2 EXAMPLE -->
        <div class="card card-success">
          <div class="card-header">
            <h3 class="card-title">Videos</h3>

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
                <th>Title</th>
                <th>Category</th>
                <th>Action</th>               
              
              </tr>
              </thead>
              <tbody>
              <tr>
                <td>001</td>
                <td>VIDEO 1</td>                
                <td>MOVIES</td>
                <td><a href="#" data-toggle="modal" data-target="#exampleModalCenter" class="btn btn-primary">Edit</a></td>
              
              </tr>
             
            <tfoot>
              <tr>
              <th>id</th>
                <th>Title</th>
                <th>Category</th>
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