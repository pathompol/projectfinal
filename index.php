<?php 
  require_once ('php/connect.php');
  $sql ="SELECT * FROM `articles` WHERE `status` = 'true' ORDER BY RAND() LIMIT 6";
  $result = $conn -> query ($sql); 
?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>จิตวิทยา มหาวิทยาลัยราชภัฏจันทรเกษม</title>
  
  

  <!-- COMMON TAGS -->
  <meta charset="utf-8">
  
 <?php include_once('includes/meta.php')?>

  <!-- Schema.org for Google
  <meta itemprop="name" content="จิตวิทยา มหาวิทยาลัยราชภัฏจันทรเกษม">
  <meta itemprop="description" content="สาขาจิตวิทยา มหาลัยราชภัฏจันทรเกษม พัฒนาบัณฑิตจิตวิทยาให้รู้จักและเข้าใจมนุษย์ เพื่อช่วยเหลือและพัฒนาสังคมให้อยู่ร่วมกันได้อย่างเป็นสุขบนความหลากหลาย">
  <meta itemprop="image" content="https://scontent.fbkk22-2.fna.fbcdn.net/v/t1.6435-9/88100353_2702428649870431_4510597447650639872_n.jpg?_nc_cat=107&ccb=1-3&_nc_sid=e3f864&_nc_eui2=AeECLQ--uR7i4KGfZNrMimj2l3OERYv-XQ6Xc4RFi_5dDnYOV2xk0bDkcQEECY2a8O-DyQH4_rlMwOBRtUqHmlvU&_nc_ohc=7ClIicpdAicAX-v0Xm4&_nc_ht=scontent.fbkk22-2.fna&oh=2325329edc8a977e8cbd6bdaddafcc2e&oe=60D8BDA9"> -->
  


  <!-- css -->
  <link rel="stylesheet" href="node_modules/bootstrap/dist/css/bootstrap.min.css">
  <link rel="stylesheet" href="node_modules/@fortawesome/fontawesome-free/css/all.css">
  <link rel="stylesheet" href="style.css">
</head>

<body>

  <!-- section Navbar-->
  <?php include_once('includes/navbar.php')?>
  <!-- section corosel -->
  <section id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
    <div class="carousel-indicators">
      <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active"
        aria-current="true" aria-label="Slide 1"></button>
      <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1"
        aria-label="Slide 2"></button>
      <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2"
        aria-label="Slide 3"></button>
    </div>
    <div class="carousel-inner">
      <div class="carousel-item active">
        <div class="carousel-img"
          style="background-image: url(img/carosel3.jpg);">
        </div>
        <div class="carousel-caption">
          <h5 class="display-5">Psychology Chandrakasem Rajabhat university</h5>
          <p class="lead">สาขาจิตวิทยา มหาวิทยาลัยราชภัฏจันทรเกษม</p>
        </div>
        <div class="backscreen">

        </div>
      </div>

      <div class="carousel-item">
        <div class="carousel-img"
          style="background-image: url(img/carosel2.jpg);">

        </div>
        
        <div class="backscreen"></div>
      </div>
      <div class="carousel-item">
        <div class="carousel-img"
          style="background-image: url(img/carosel.jpg);">

        </div>
        
        <div class="backscreen"></div>
      </div>
    </div>
    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Next</span>
    </button>
  </section>
  <!--Section Jumbotron -->
  <section class="jumbotron jumbotron-fluid text-center">
    <div class="container">
      <h2 class="border-short-bottom">ปรัชญา</h2>
      <p class="lead">พัฒนาบัณฑิตจิตวิทยาให้รู้จักและเข้าใจมนุษย์  เพื่อช่วยเหลือและพัฒนาสังคมให้อยู่ร่วมกันได้อย่างเป็นสุขบนความหลากหลาย</p>
    </div>
  </section>
<!-- section blog -->
<section class="container">
  <h2 class="border-short-bottom text-center">บทความ</h2>
  <div class="row">
  <?php while ($row = $result->fetch_assoc()) { ?>
  <section class="col-12 col-sm-6 col-md-4 p-3">
              <div class="card h-100">
                <a href="blog-detail.php?id=<?php echo $row['id'] ?>" class="warpper-card-img">
                  <img class="card-img-top" src="<?php echo $base_path_blog.$row['image'] ?>"  alt="...">
                  </a>
                <div class="card-body">
                  <h5 class="card-title"><?php echo $row['subject'] ?></h5>
                  <p class="card-text"><?php echo $row['sub_title'] ?></p>
                </div>
                <div class="p-3">
                  <a href="blog-detail.php?id=<?php echo $row['id'] ?>" class="btn btn-primary">อ่านเพิ่มเติม</a>
                </div>
              </div>
    </section>
    <?php } ?>

    
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
  <script src="main.js"></script>
</body>

</html>