<?php
  require_once ('php/connect.php');
  $sql = "SELECT * FROM articles WHERE id ='".$_GET['id']."' AND `status` = 'true' ";
  $result = $conn->query($sql) or die ($conn->error);

  if ($result->num_rows > 0) {
    $row = $result->fetch_assoc();
  } else {
    header ('location: blog.php');
  }
  $sql_RAND ="SELECT * FROM `articles` WHERE `status` = 'true' ORDER BY RAND() LIMIT 6";
  $result_RAND = $conn -> query ($sql_RAND) or die ($conn->error) ;

?>


<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title><?php echo $row ['subject']; ?></title>
  
  

  <!-- Search Engine -->
  <meta name="description" content="<?php echo $row['sub_title']; ?>">
  <meta name="image" content="https://psy-cru.com/<?php echo $base_path_blog.$row['image']; ?>">
  <meta name="keywords" content="จิตวิทยาจันทรเกษม,จิตวิทยามหาวิทยาลัยราชภัฏจันทรเกษม,จิตวิทยา,psycru">
  <meta name="robots" content="index, follow">
  <meta name="author" content="PsyCRU">

  <!-- Open Graph general (Facebook, Pinterest & Google+) -->
  <meta name="fb:app_id" content="640630160233968">
  <meta name="og:title" content="<?php echo $row['subject']; ?>">
  <meta name="og:description" content="<?php echo $row['sub_title']; ?>">
  <meta name="og:image" content="https://psy-cru.com/<?php echo $base_path_blog.$row['image']; ?>">
  <meta name="og:site_name" content="https://psy-cru.com/">
  <meta name="og:type" content="website">

  <!-- Favicons -->
  <link rel="apple-touch-icon" sizes="180x180" href="img/favicons/apple-touch-icon.png">
  <link rel="icon" type="image/png" sizes="32x32" href="img/favicons/favicon-32x32.png">
  <link rel="icon" type="image/png" sizes="16x16" href="img/favicons/favicon-16x16.png">
  <link rel="manifest" href="img/favicons/site.webmanifest">
  <link rel="mask-icon" href="img/favicons/safari-pinned-tab.svg" color="#5bbad5">
  <link rel="shortcut icon" href="img/favicons/favicon.ico">
  <meta name="msapplication-TileColor" content="#da532c">
  <meta name="msapplication-config" content="img/favicons/browserconfig.xml">
  <meta name="theme-color" content="#ffffff">



    <!-- css -->
    <link rel="stylesheet"href="node_modules/bootstrap/dist/css/bootstrap.min.css"/>
    <link rel="stylesheet"href="node_modules/@fortawesome/fontawesome-free/css/all.css"/>
    <link rel="stylesheet" href="node_modules/owl.carousel/dist/assets/owl.carousel.min.css"/>
    <link rel="stylesheet" href="style.css" />
  </head>

  <body>
    <!-- section Navbar-->
    <?php include_once('includes/navbar.php')?>

    <!-- section Page title -->

    <header
      class="jarallax"
      data-jarallax='{"speed": 0.6 }'
      style="background-image: url(<?php echo $base_path_blog.$row ['image']; ?>);">
      <div class="page-image">
            <h1 class="display-4 font-weight-bold"><?php echo $row ['subject']; ?></h1>
            <p class="lead"><?php echo $row ['sub_title']; ?></</p>
          </div>
    </header>

    <!-- section blog -->
    <section class="container blog-content">
        <div class="row">
            <div class="col-12">
                <?php echo $row ['detail']; ?>
            </div>
            <div class="col-12">
              <hr>
              <div class="sharethis-inline-share-buttons"></div><!-- ShareThis END -->
              <p class="text-end "> 
              <?php echo date_format(new DateTime($row['update_at']),"j F Y");?> 
              </p>
            </div>
            <div class="col-12">
              <div class="owl-carousel owl-theme">

                <?php while($row_RAND = $result_RAND ->fetch_assoc ()) { ?>
                <section class="col-12 p-3">
                  <div class="card h-100">
                    <a href="blog-detail.php?id=<?php echo $row_RAND ['id'] ?>" class="warpper-card-img">
                        <img class="card-img-top" src="<?php echo $base_path_blog.$row_RAND ['image'] ?>"  alt="...">
                    </a>
                    <div class="card-body">
                      <h4 class="card-title"><?php echo $row_RAND['subject'] ?> </h4>
                      <p class="card-text"><?php echo $row_RAND['sub_title'] ?> </p>
                    </div>
                      <div class="p-3">
                        <a href="blog-detail.php?id=<?php echo $row_RAND ['id'] ?>" class="btn btn-primary">อ่านเพิ่มเติม</a>
                      </div>
                  </div>
                </section>

                <?php } ?>
                

              </div>
            </div>
          <div class="col-12">
              <div class="fb-comments text-end" 
              
              data-href="http://localhost/blog/blog-detail.php?id_psyCru=<?php echo $row['id']; ?>" 
              data-numposts="5"></div>
              <div id="fb-root"></div>
              
            <script  async defer crossorigin="anonymous" src="https://connect.facebook.net/th_TH/sdk.js#xfbml=1&version=v10.0" nonce="zpuC13Ur">
            </script>
              
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
    <script src="node_modules/bootstrap/dist/js/bootstrap.min.js"></script>
    <script src="node_modules/popper.js/dist/umd/popper.min.js"></script>
    <script src="node_modules/jarallax/dist/jarallax.min.js"></script>
    <script src="node_modules/owl.carousel/dist/owl.carousel.min.js"></script>
    <script type='text/javascript' src='https://platform-api.sharethis.com/js/sharethis.js#property=60b2214f754a1200139911f6&product=inline-share-buttons' async='async'></script>
    <script src="main.js"></script>
    <script>
      $(document).ready(function(){
    $('.owl-carousel').owlCarousel({
        loop:true ,
        responsive:{
            0:{
                items:1
                
            },
            600:{
                items:2
            },
            1000:{
                items:3
            }
        }
    });
  });
    </script>
  </body>
</html>
