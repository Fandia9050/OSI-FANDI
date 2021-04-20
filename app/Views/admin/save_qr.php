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
                      <th>QR Code</th>
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
                        <td><img src="<?= base_url(); ?>/img/qrcode/<?= $p['qr_code']; ?>" alt=""></td>
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
 