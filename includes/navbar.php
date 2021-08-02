<?php  $file_name = basename($_SERVER['SCRIPT_FILENAME'],".php"); ?>

<nav id="navbar" class="navbar navbar-expand-lg fixed-top navbar-dark bg-alpha">
    <div class="container">
      <a class="navbar-brand" href="index.php">
        <img src="img/logopsy.png" alt="" width="35" height="35" class="d-inline-block align-text-top">
        สาขาจิตวิทยา มหาวิทยาลัยราชภัฏจันทรเกษม
      </a>

      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mx-auto mb-2 mb-lg-0">

            <li class="nav-item <?php echo $file_name == 'index' ? 'active': '' ?>">
              <a class="nav-link" href="index.php">Home</a>
            </li>
            <li li class="nav-item <?php echo $file_name == 'about' ? 'active': '' ?>">
              <a class="nav-link" href="about.php">เกี่ยวกับเรา</a>
            </li>
            <li li class="nav-item <?php echo $file_name == 'blog' ? 'active': '' ?>">
              <a class="nav-link" href="blog.php">ข่าวสารต่างๆ</a>
            </li>
            <li class="nav-item <?php echo $file_name == 'contact' ? 'active': '' ?>">
              <a class="nav-link " href="contact.php">ติดต่อเรา</a>
            </li>
            
        </ul>
      </div>
    </div>
  </nav>