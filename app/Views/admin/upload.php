<?= $this->extend('template/template'); ?>

<?= $this->section('content'); ?>

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

    <section class="content">
      <div class="container-fluid">
        <div class="card card-primary">
              <div class="card-header">
                <h3 class="card-title">Please Fill The Form </h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <form action="/admin/save_qr/<?= $pemilik[0]['id']; ?>" method="post" enctype="multipart/form-data">
                <?= csrf_field(); ?>
                </div>
                <div class="form-group">
                <label for="qrcode">File QR Code</label>
                  <div class="custom-file"> 
                    <input type="file" class="custom-file-input <?= ($validation->hasError('qrcode')) ? 'is-invalid' : ''; ?>" id="qrcode" name="qrcode">
                    <label class="custom-file-label" for="customFile">Choose file</label>
                    <div class="invalid-feedback">
                        <?= $validation->getError('qrcode'); ?>
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

<?= $this->endSection(); ?>