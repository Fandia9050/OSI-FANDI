<?= $this->extend('template/template_create_qr'); ?>

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

    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-12">
            <div class="callout callout-info">
              <h5><i class="fas fa-info"></i> Note:</h5>
              Selamat Datang <?= $user[0]['username']; ?> di Website Pembuatan QR Code Untuk Sertifikat Digital
            </div>
          </div>
        </div>
      </div>   
  </div> 

<?= $this->endSection(); ?>
<!-- ./wrapper -->

