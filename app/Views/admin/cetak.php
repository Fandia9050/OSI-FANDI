<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.5.3/jspdf.min.js"></script>
		<style>
        #sertifikat{
            position : relative;
        }
        #qr{
            position: absolute;
            left: 30px;
            top: 30px;
        }
        #template{
            width : 100%;
            height : 100vh;
        }
        img{
            border : 2px solid #ffffff;
            border-radius : 5px;
        }
		</style>
</head>
<body>
    <h1><? $title; ?></h1>
    <div id="sertifikat">
        <img src="<?= base_url(); ?>/img/<?= $sertifikat; ?>" alt="" id="template">
        <img src="<?= base_url(); ?>/img/qrcode/<?= $imageQr; ?>" alt="" id="qr">
    </div>
    <div id="editor"></div>
</body>
</html>

    
	