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
                      <th>Event</th>
                      <th>Organisasi</th>
                      <th>Sertifikat</th>
                      <th>Tanggal Pelaksanaan</th>
                      <th>Action</th>
                    </tr>
                  </thead>
                  <tbody>
                    <?php $no = 0; ?>
                    <?php foreach ($event as $e) : ?>
                      <tr>
                        <th><?= $no += 1 ?></th>
                        <td><?= $e['nama_event']; ?></td>
                        <td><?= $e['nama_organisasi']; ?></td>
                        <td><img src="<?= base_url(); ?>/img/<?= $e['sertifikat']; ?>" style="width:150px; height:80px;"></td>
                        <td><?= $e['created_at']; ?></td>
                        <td>
                            <a href="<?= base_url();?>/admin/add" class="btn-xs btn-block btn-primary" style="text-align: center; text-decoration: none;">Tambah Pemilik Sertifikat</a>
                            <a href="<?= base_url();?>/admin/list_owner/<?= $e['id'] ?>" class="btn-xs btn-block btn-info" style="text-align: center; text-decoration: none;">Daftar Pemilik Sertifikat</a>
                            <a href="<?= base_url();?>/admin/editPage/<?= $e['id']; ?>" class="btn-xs btn-block btn-warning" style="text-align: center; text-decoration: none;">Edit Event</a>
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

<?= $this->endSection(); ?>