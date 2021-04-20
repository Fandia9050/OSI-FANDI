<?= $this->extend('template/template'); ?>

<?= $this->section('content'); ?>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1><?= $title; ?></h1>
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
              <form action="/admin/save" method="post">
                <?= csrf_field(); ?>
                <div class="card-body">
                  <div class="form-group">
                    <label for="nim">NIM/NIS</label>
                    <input type="text" class="form-control" id="nim" name="nim" placeholder="Enter nim" required>
                  </div>
                  <div class="form-group">
                    <label for="nama">Name</label>
                    <input type="text" class="form-control" id="nama" name="nama" placeholder="Enter name" required>
                  </div>
                  <div class="form-group">
                    <label for="email">Email address</label>
                    <input type="email" class="form-control" id="email" name="email" placeholder="Enter email" required>
                  </div>
                  <div class="form-group">
                    <label for="phone">No. Hp</label>
                    <input type="text" class="form-control" id="phone" name="no_hp" placeholder="Enter Phone" required>
                  </div>
                      <!-- select -->
                      <div class="form-group">
                        <label>Select</label>
                        <select class="form-control" name="event">
                          <?php foreach($listEvent as $le): ?>
                          <option value="<?= $le['id']; ?>"><?= $le['nama_event']; ?></option>
                          <?php endforeach; ?>
                        </select>
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