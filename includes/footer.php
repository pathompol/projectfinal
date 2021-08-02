<?php $file_name = basename($_SERVER['SCRIPT_FILENAME'],".php"); ?>


<section
      class="position-relative py-5 jarallax"
      data-jarallax='{"speed": 0.6 }'
      style="background-image: url(img/carosel2.jpg);">
      <div class="container">
        <div class="row">
          <div class="col-12 text-center text-white">
            <img class="img-fluid" src="img/logopsy.png" alt="" width="150px" />
            <h1 class="text-white display-5">Psychology Chandrakasem Rajabhat university</h1>
            <div class="star-rating">
              <span>☆</span>
              <span>☆</span>
              <span>☆</span>
              <span>☆</span>
              <span>☆</span>
              <div class="star-current" style="width: 100%;">
                <span>★</span>
                <span>★</span>
                <span>★</span>
                <span>★</span>
                <span>★</span>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

<footer class="semi-footer p-5 text-center text-md-left">
    <div class="row">
      <div class="col-md-4">
        <a class="navbar-brand" href="#">
          <img src="img/logopsy.png" alt="" width="35" height="35" class="d-inline-block align-text-top">
          สาขาจิตวิทยา มหาวิทยาลัยราชภัฏจันทรเกษม
        </a>
        <p>
          <i class="fas fa-phone-square-alt"></i> 02-942-5800 <br>
          <i class="fas fa-envelope"></i> psychochandra59@gmail.com <br>
          <i class="fas fa-map-marker-alt"></i> อาคาร 4 คณะมนุษยศาสตร์ มหาวิทยาลัยราชภัฏจันทรเกษม
          39/1 ถ. รัชดาภิเษก แขวง จันทรเกษม เขตจตุจักร กรุงเทพมหานคร 10900
          
        </p>

        <a href="https://www.facebook.com/%E0%B8%88%E0%B8%B4%E0%B8%95%E0%B8%A7%E0%B8%B4%E0%B8%97%E0%B8%A2%E0%B8%B2-%E0%B8%88%E0%B8%B1%E0%B8%99%E0%B8%97%E0%B8%A3%E0%B9%80%E0%B8%81%E0%B8%A9%E0%B8%A1-1032817933498186/" target="_blank">
          <i class="fab fa-facebook-square fa-2x"></i>
        </a>
      </div>
      <div class="col-md-4">
        <h4>เมนู</h4>
        <ul class="navbar-nav">
          <li class="nav-item <?php echo $file_name == 'index' ? 'active': '' ?>">
            <a class="nav-link " 
            aria-current="page" href="index.php">Home</a>
          </li>
          <li li class="nav-item <?php echo $file_name == 'about' ? 'active': '' ?>">
            <a class="nav-link" href="about.php">เกี่ยวกับเรา</a>
          </li>
          <li li class="nav-item <?php echo $file_name == 'blog' ? 'active': '' ?>">
            <a class="nav-link" href="blog.php">ข่าวสารต่างๆ</a>
          </li>
          <li li class="nav-item">
            <a class="nav-link" href="#">บุคลากร</a>
          </li>
          <li class="nav-item <?php echo $file_name == 'contact' ? 'active': '' ?>">
            <a class="nav-link" href="contact.php">ติดต่อเรา</a>
          </li>
      </ul>
      </div>
      <div class="col-md-4">
        <h4>แผนที่</h4>
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d791.1243970001495!2d100.57690975615837!3d13.820812754855293!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x30e29dcae733faf5%3A0xcacfdd4d31d72f86!2z4Lit4Liy4LiE4Liy4LijIDQg4LiE4LiT4Liw4Lih4LiZ4Li44Lip4Lii4Lio4Liy4Liq4LiV4Lij4LmMIOC4oeC4q-C4suC4p-C4tOC4l-C4ouC4suC4peC4seC4ouC4o-C4suC4iuC4oOC4seC4j-C4iOC4seC4meC4l-C4o-C5gOC4geC4qeC4oQ!5e1!3m2!1sth!2sth!4v1621340607742!5m2!1sth!2sth" 
        width="100%" height="300" style="border: 0;" allowfullscreen="" loading="lazy"></iframe>
      </div>
    </div>
  </footer>

  <footer class="footer">
    <span>COPYRIGHT @ 2021 
      <a href="../../blog/Admin/login.php" target="_blank">Admin</a></span>
      ALL Right Reserved
  </footer>