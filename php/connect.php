<?php
    error_reporting(E_ALL);
    // ปิด error ในกรณ๊ที่เราต้องการแสดง error ของเราเอง
    //เชื่อมต่อ Database
    // $conn = new mysqli('localhost','root','','blog');
    $conn = new mysqli('localhost','psycruco_blog','pUy3J2ZMTf','psycruco_blog');
    $conn->set_charset('utf8');
        if ($conn->connect_errno) {
            echo "Conect Error :".$conn->connect_error;
            exit();
     }
     $base_path_blog = 'img/blog/';
    //  ตั้งค่า TimeZone
    date_default_timezone_set('Asia/Bangkok');
?>


