<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>จิตวิทยา มหาวิทยาลัยราชภัฏจันทรเกษม</title>
    
  <?php include_once('includes/meta.php')?>


  <!-- css -->
  <link rel="stylesheet" href="node_modules/bootstrap/dist/css/bootstrap.min.css">
  <link rel="stylesheet" href="node_modules/@fortawesome/fontawesome-free/css/all.css">
  <link rel="stylesheet" href="style.css">
  </head>

  <body>
    
    <!-- section Navbar-->
    <?php include_once('includes/navbar.php')?>

    <!-- section Page title -->
    <header
      class="jarallax"
      data-jarallax='{"speed": 0.6 }'
      style="background-image: url(img/contact.jpg);">
      <div class="page-image">
            <h1 class="display-4 font-weight-bold">ติดต่อเรา </h1>
            <p class="lead">สาขาจิตวิทยา มหาวิทยาลัยราชภัฎจันทรเกษม</p>
          </div>
    </header>
    <!-- section blog -->
    <section class="container py-5">
        <div class="row text-center">
            <div class="col-12">
                <h2 class="border-short-bottom">รายละเอียด</h2>
            </div>
            <div class="col-sm-4 mb-3">
                <div class="card h-100">
                    <div class="card-body">
                        <i class="fas fa-map-marker-alt py-4 text-danger fa-4x"></i>
                        <h4 class="card-title">ที่อยู่</h4>
                        <p class="card-text">อาคาร 4 คณะมนุษยศาสตร์ มหาวิทยาลัยราชภัฏจันทรเกษม 39/1 ถ. รัชดาภิเษก แขวง จันทรเกษม เขตจตุจักร กรุงเทพมหานคร 10900</p>
                    </div>
                </div>
            </div>
            <div class="col-sm-4 mb-3">
                <div class="card h-100">
                    <div class="card-body">
                        <i class="fas fa-phone-square-alt py-4 text-dark fa-4x"></i>
                        <h4 class="card-title">เบอร์โทรศัพท์</h4>
                        <p class="card-text">0909290349</p>
                    </div>
                </div>
            </div>
            <div class="col-sm-4 mb-3">
                <div class="card h-100">
                    <div class="card-body">
                        <i class="fas fa-envelope py-4 text-success fa-4x"></i>
                        <h4 class="card-title">อีเมล์</h4>
                        <p class="card-text">psychochandra59@gmail.com</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
          <div class="col-12 text-center">
            <h2 class="border-short-bottom">ติดต่อเรา</h2>
        </div>
            <div class="col-12">
                <div class="card">
                    <div class="card-body">
                        <form method="post" action="php/contact.php">
                            <div class="row">
                                <div class="form-group col-md-4 py-2">
                                    <label for="name">ชื่อ</label>
                                  <input type="text" id="name" name="name" class="form-control" required placeholder="ชื่อของคุณ">
                                </div>
                                <div class="form-group col-md-4 py-2">
                                    <label for="phone">เบอร์โทรศัพท์</label>
                                  <input type="text" id="phone" name="phone"  class="form-control" required placeholder="เบอร์โทรศัพท์ของคุณ">
                                </div>
                                <div class="form-group col-md-4 py-2">
                                    <label for="email">อีเมล์</label>
                                  <input type="email" id="email" name="email" class="form-control" required placeholder="example@email.com">
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="message">ข้อความของคุณ</label>
                                <textarea id="message" name="message" cols="30" rows="5" class="form-control" required placeholder="ข้อความของคุณ"></textarea>
                            </div>
                            <br>

                            <div id="recaptcha-wrapper" class="text-center">
                              <div class="g-recaptcha d-inline-block my-2" data-callback="recaptchaCallback" data-sitekey="6Lehm_UaAAAAANlMN4vfRbSBitLIgzIizOPT0wKY"></div>
                            </div>

                            <button type="submit" id="btn-submit" name="btn-submit"  class="btn btn-primary d-block mx-auto" disabled>ส่งข้อความ</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
    
    <!--Section Footer-->
    <?php include_once ('includes/footer.php') ?>

    <!-- section on to top -->
    <div class="to-top">
    <i class="fas fa-angle-up"></i>
    </div>

    <script src="node_modules/jquery/dist/jquery.min.js"></script>
    <script src="node_modules/popper.js/dist/umd/popper.min.js"></script>
    <script src="node_modules/bootstrap/dist/js/bootstrap.min.js"></script>
    <script src="node_modules/jarallax/dist/jarallax.min.js"></script>
    <script src="node_modules/owl.carousel/dist/owl.carousel.min.js"></script>
    <script src="https://www.google.com/recaptcha/api.js"></script>
    <script src="main.js"></script>


    <script>


            $(function(){
                // global variables
                captchaResized = false;
                captchaWidth = 304;
                captchaHeight = 78;
                captchaWrapper = $('#recaptcha-wrapper');
                captchaElements = $('#rc-imageselect, .g-recaptcha');

                $(window).on('resize', function() {
                    resizeCaptcha();
                });

                resizeCaptcha();
            });

            function resizeCaptcha() {
                if (captchaWrapper.width() >= captchaWidth) {
                    if (captchaResized) {
                        captchaElements.css('transform', '').css('-webkit-transform', '').css('-ms-transform', '').css('-o-transform', '').css('transform-origin', '').css('-webkit-transform-origin', '').css('-ms-transform-origin', '').css('-o-transform-origin', '');
                        captchaWrapper.height(captchaHeight);
                        captchaResized = false;
                    }
                } else {
                    var scale = (1 - (captchaWidth - captchaWrapper.width()) * (0.05/15));
                    captchaElements.css('transform', 'scale('+scale+')').css('-webkit-transform', 'scale('+scale+')').css('-ms-transform', 'scale('+scale+')').css('-o-transform', 'scale('+scale+')').css('transform-origin', '0 0').css('-webkit-transform-origin', '0 0').css('-ms-transform-origin', '0 0').css('-o-transform-origin', '0 0');
                    captchaWrapper.height(captchaHeight * scale);
                    if (captchaResized == false) captchaResized = true;
                }
            }
            // resizeCaptcha();

            function recaptchaCallback () {
                $('#btn-submit').removeAttr('disabled');
                }

    </script>
  </body>
</html>
