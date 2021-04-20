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
        <?php if (session()->getFlashdata('pesan')) : ?>
          <div class=" alert alert-success" role="alert">
            <?= session()->getFlashdata('pesan'); ?>
          </div>
        <?php endif ?>
        <div class="card">
              <!-- /.card-header -->
              <div class="card-body p-0">
                <table class="table table-striped">
                  <thead>
                    <tr>
                      <th style="width: 10px">#</th>
                      <th>NIM</th>
                      <th>Nama</th>
                      <th>Email</th>
                      <th>No. HP</th>
                      <th>Action</th>
                    </tr>
                  </thead>
                  <tbody>
                    <?php $no = 0; ?>
                    <?php foreach ($pemilik as $p) : ?>
                      <tr>
                        <th><?= $no += 1 ?></th>
                        <td><?= $p['nim']; ?></td>
                        <td><?= $p['nama']; ?></td>
                        <td><?= $p['email']; ?></td>
                        <td><?= $p['no_hp']; ?></td>
                        <td>
                            <a href="<?= base_url();?>/admin/create_qr/<?= $p['id']; ?>" class="btn-xs btn-block btn-primary" style="text-align: center; text-decoration: none;">Create QR Code</a>
                            <a href="<?= base_url();?>/admin/upload_qr/<?= $p['id']; ?>" class="btn-xs btn-block btn-warning" style="text-align: center; text-decoration: none;">Upload QR Code</a>
                            <a href="<?= base_url();?>/admin/cetak_sertifikat/<?= $p['id']; ?>" class="btn-xs btn-block btn-warning" style="text-align: center; text-decoration: none;" id="download">Download File Sertifikat</a>
                            <a href="<?= base_url();?>/admin/deletePemilik/<?= $p['id']; ?>" class="btn-xs btn-block btn-danger" style="text-align: center; text-decoration: none;">Delete</a>
                        </td>
                      </tr>
                    <?php endforeach; ?>
                  </tbody>
                </table>
              </div>
              <!-- /.card-body -->
            </div>
      </div>
    </section>
    <!-- /.content -->
  </div>

<?= $this->endSection(); ?>
 