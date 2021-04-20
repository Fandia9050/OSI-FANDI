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
              This page has been enhanced for generate QR Code for Digital Certificate Identity.
            </div>
          
    <!-- Main content -->
    <div class="invoice p-3 mb-3">
              <!-- title row -->
              <!-- this row will not appear when printing -->
              <div class="row no-print">
                <div class="col-12">
                <div class="col-sm-12">
                      <div class="form-group">
                        <label>Hash Value</label>
                        <?php foreach($pemilik as $p): ?>
                        <input type="text" id="hash_value" class="form-control" value="<?= $p['hash_value']; ?>" disabled>
                        <?php endforeach; ?>
                      </div>
                      <div class="card-body col-2" id="qr_img" style="border: 10px solid #2e2626; border-radius:10px;">
                          
                    </div>
                    <div class="mt-3">
                      <button class="btn btn-default" onclick="tampil()">Download</button>
                    </div>
                  </form>
                  </div>
                </div>
                </div>
              </div>
            </div>
    </div>
  </div>
    <!-- /.content -->
  </div> 

<?= $this->endSection(); ?>
<!-- ./wrapper -->

