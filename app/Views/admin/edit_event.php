<?= $this->extend('template/template'); ?>

<?= $this->section('content'); ?>

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1><?= $title ?></h1>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="card card-primary">
              <div class="card-header">
                <h3 class="card-title">Please Fill The Form</h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <?php foreach($dataEvent as $de): ?>
              <form action="/admin/editEvent/<?= $de['id']; ?>" method="post" enctype="multipart/form-data">
              <?php endforeach; ?>
                <?= csrf_field(); ?>
                <div class="card-body">
                  <div class="form-group">
                    <label for="event">Event Name</label>
                    <input type="text" class="form-control <?= ($validation->hasError('event')) ? 'is-invalid' : ''; ?>" id="event" name="event" placeholder="Enter your event">
                    <div class="invalid-feedback">
                        <?= $validation->getError('event'); ?>
                    </div>  
                </div>
                  <div class="form-group">
                    <label for="organisation">Organisation</label>
                    <input type="text" class="form-control <?= ($validation->hasError('organisation')) ? 'is-invalid' : ''; ?>" id="organisation" name="organisation" placeholder="Enter your organisation">
                    <div class="invalid-feedback">
                        <?= $validation->getError('organisation'); ?>
                    </div>   
                </div>
                <div class="form-group">
                <label for="file">File Sertifikat</label>
                  <div class="custom-file"> 
                    <input type="file" class="custom-file-input <?= ($validation->hasError('file')) ? 'is-invalid' : ''; ?>" id="file" name="file">
                    <label class="custom-file-label" for="customFile">Choose file</label>
                    <div class="invalid-feedback">
                        <?= $validation->getError('file'); ?>
                    </div>
                  </div>
                </div>
                <!-- /.card-body -->
                
                <div class="card-footer">
                  <button type="submit" class="btn btn-primary">Submit</button>
                </div>
              </form>
            </div>   
      </div>
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->


<?= $this->endSection(); ?>