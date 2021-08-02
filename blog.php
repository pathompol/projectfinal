<?php 
  require_once ('php/connect.php');
  
  $tag = isset ($_GET['tag']) ? $_GET['tag'] : 'all';
  
  $sql ="SELECT * FROM `articles` WHERE `tag` LIKE '%".$tag."%'AND `status` = 'true'";
  $result = $conn -> query ($sql); 
  if(!$result) {
      header('location: blog.php');
  }
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
  
  
    <!-- css -->
    <link rel="stylesheet" href="node_modules/bootstrap/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="node_modules/@fortawesome/fontawesome-free/css/all.css">
    <link rel="stylesheet" href="style.css">
  </head>

  <body>
    
    <!-- section Navbar-->
    <?php include_once('includes/navbar.php')?>
    
    <!-- section Pagetitle -->
    <header
      class="jarallax"
      data-jarallax='{"speed": 0.6 }'
      style="background-image: url(img/carosel.jpg);">
      <div class="page-image">
            <h1 class="display-4 font-weight-bold">ข่าวสารต่างๆ</h1>
            <p class="lead">สาขาจิตวิทยา มหาวิทยาลัยราชภัฎจันทรเกษม</p>
          </div>
    </header>

    <!-- Section blog -->
    <section class="container py-5">
        <div class="row pb-4">
            <div class="col-12 text-center">
                <div class="btn-group-custom">
                <a href="blog.php?tag=all">
                <button class="btn btn-info <?php echo $tag == 'all' ? 'active': '' ?>">ทั้งหมด</button>
                </a>
                <a href="blog.php?tag=activity">
                <button class="btn btn-info <?php echo $tag == 'activity' ? 'active': '' ?>">กิจกรรม</button>
                </a>
                <a href="blog.php?tag=post">
                <button class="btn btn-info <?php echo $tag == 'post' ? 'active': '' ?>">บทความ</button>
                </a>
                <a href="blog.php?tag=news">
                <button class="btn btn-info <?php echo $tag == 'news' ? 'active': '' ?>">ข่าวสาร</button>
                </a>
                <a href="blog.php?tag=man">
                <button class="btn btn-info <?php echo $tag == 'man' ? 'active': '' ?>">man</button>
                </a>
            </div>
            </div>
        </div>
        <div class="row">
        <?php 
            if($result->num_rows){
              while ($row = $result->fetch_assoc()) { 
          ?>
            <section class="col-12 col-sm-6 col-md-4 p-3">
              <div class="card h-100">
                <a href="blog-detail.php?id=<?php echo $row['id'] ?>" class="warpper-card-img">
                  <img class="card-img-top" src="<?php echo $base_path_blog. $row['image'] ?>"  alt="...">
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
            <?php 
                } 
            } else {

            
            ?>

            <section class="col-12">
            <p class="text-center">ไม่มีข้อมูล</p>
            </section>
              <?php 
            } 
          ?>

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
