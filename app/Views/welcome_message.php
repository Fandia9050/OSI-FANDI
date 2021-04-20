<!DOCTYPE HTML>
<!--
  Fractal by HTML5 UP
  html5up.net | @ajlkn
  Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
  <head>
    <title>OSI</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
    <link rel="stylesheet" href="assets/css/main.css" />
    <noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
    <script src="https://rawgit.com/schmich/instascan-builds/master/instascan.min.js"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

  </head>
  <body class="is-preload">
    
    <!-- Header -->
      <header id="header">
        <div class="content">
          <h1><a href="#">OSI</a></h1>
          <p>Online Sertificate Identification<br />
          scan your qr code to approve</p>
          <ul class="actions">
            <li><button class="button primary" onclick="scan()">Scan QR Code</button></li>
            <li><a href="<?= base_url(); ?>/login" class="button">Login</a></li>
          </ul>
        </div>
        <div class="image phone"><div class="inner"><video id="preview" width="320" height="240"></video></div></div>
      </header>

    

    <!-- Footer -->
      <footer id="footer">
        <ul class="icons">
          <li><a href="#" class="icon brands fa-facebook-f"><span class="label">Facebook</span></a></li>
          <li><a href="#" class="icon brands fa-twitter"><span class="label">Twitter</span></a></li>
          <li><a href="#" class="icon brands fa-instagram"><span class="label">Instagram</span></a></li>
        </ul>
      </footer>

      <!-- Button trigger modal -->

<!-- Modal -->
<div class="modal" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Informasi Pemilik</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <div id="user_not_found" class="alert alert-danger" role="alert">
          Pemilik tidak ditemukan!
        </div>
        <table class="table-light" id="info_user" style="display:none;">
          <tbody>
            <tr>
              <th>Nama</th>
              <td id="full_name">Abdil</td>
            </tr>
            <tr>
              <th>Email</th>
              <td id="email">abdil@gmail.com</td>
            </tr>
            <tr>
              <th>No Hp</th>
              <td id="no_hp">abdil@gmail.com</td>
            </tr>

            <tr>
              <th>Nama Event</th>
              <td id="nama_event">abdil@gmail.com</td>
            </tr>
          </tbody>
        </table>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-danger" style="color:white !important;" data-dismiss="modal">Tutup</button>
      </div>
    </div>
  </div>
</div>

    <!-- Scripts -->
      <script src="<?= base_url(); ?>/assets_fractal/js/jquery.min.js"></script>
      <script src="<?= base_url(); ?>/assets_fractal/js/jquery.scrolly.min.js"></script>
      <script src="<?= base_url(); ?>/assets_fractal/js/browser.min.js"></script>
      <script src="<?= base_url(); ?>/assets_fractal/js/breakpoints.min.js"></script>
      <script src="<?= base_url(); ?>/assets_fractal/js/util.js"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

      <script src="<?= base_url(); ?>/assets_fractal/js/main.js"></script>
      <script type="text/javascript">
      //var hash = [];
      //hash = [<?php echo '"'.implode('","', $hash).'"' ?>];
      //var dataPemilik = [];
      function scan(){
        let scanner = new Instascan.Scanner({ video: document.getElementById('preview') });
        scanner.addListener('scan', function (content) {
            $.get("<?= base_url()?>/main/searchByHash/"+content, function(result){
              if(result.status){
                $("#user_not_found").hide();
                $("#info_user").show('slow');
                $("#full_name").text(result.data.nama);
                $("#no_hp").text(result.data.no_hp);
                $("#email").text(result.data.email);
                $("#nama_event").text(result.event.nama_event);
              }else{
                $("#info_user").hide();
                $("#user_not_found").show('slow');
              }

              $('#exampleModal').modal('show');


            })
        });
        Instascan.Camera.getCameras().then(function (cameras) {
          if (cameras.length > 0) {
            scanner.start(cameras[0]);
          } else {
            console.error('No cameras found.');
          }
        }).catch(function (e) {
          console.error(e);
        });
      }
    </script>
  </body>
</html>
