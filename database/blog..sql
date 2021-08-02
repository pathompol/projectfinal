-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 01, 2021 at 01:10 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` enum('superadmin','admin') NOT NULL,
  `last_login` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `first_name`, `last_name`, `username`, `password`, `status`, `last_login`, `updated_at`, `created_at`) VALUES
(1, 'pathompol', 'ruchaudom', 'ruchaudom', '$2y$10$O1cswdcJpa/88iCyDhQdkeKcAA2oYijML7HYwJ84mkazZAl3bc992', 'superadmin', '2021-07-19 17:18:05', '2021-07-19 17:18:07', '2021-07-19 17:18:07'),
(2, 'tee', 'pp', 'admin', '$2y$10$.PM4Hk.lWpMfIfrrjYPXXutmEMlUYRxynC2XiYs/uSe8u8oH1ebmq', 'superadmin', '2021-08-01 17:29:47', '2021-07-19 20:11:42', '2021-07-19 20:11:42'),
(3, 'pathompu', 'ruchadom', 'pathompoltee27@gmail.com', '$2y$10$Nt9N7ZI1R66WmIA56almF.ANbcnIA.n6vDcBQ8gkM54M/1SuUp18e', 'admin', '2021-07-28 16:55:50', '2021-07-20 15:36:37', '2021-07-19 20:41:10');

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `sub_title` varchar(255) NOT NULL,
  `detail` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `tag` varchar(255) NOT NULL,
  `status` enum('true','false') NOT NULL,
  `update_at` datetime NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `subject`, `sub_title`, `detail`, `image`, `tag`, `status`, `update_at`, `created_at`) VALUES
(1, 'จิตวิทยาคืออะไร ? ', 'จิตวิทยาคือศาสตร์ที่ศึกษาเกี่ยวกับกระบวนความคิด พฤติกรรมของมนุษย์และสัตว์ ด้วยกระบวนการทางวิทยาศาสตร์ เพื่อ อธิบาย ควบคุมและเปลี่ยนแปลง...', '<p><span style=\"font-size:16px\"><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<img alt=\"\" class=\"img-fluid\" src=\"./img/upload/source/blog3.jpg\" style=\"width:60%\" />&nbsp;</strong></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:14px\">จิตวิทยาคือศาสตร์ที่ศึกษาเกี่ยวกับกระบวนความคิด พฤติกรรมของมนุษย์และสัตว์ ด้วยกระบวนการทางวิทยาศาสตร์ เพื่อ อธิบาย ควบคุมและเปลี่ยนแปลงพฤติกรรมให้ไปในทิศทางที่ดีขึ้น</span></p>\r\n\r\n<h4><span style=\"font-size:20px\"><strong>เรียนจิตวิทยาแล้วมีประโยชน์อย่างไรบ้าง?</strong></span></h4>\r\n\r\n<p>1.ทำให้เกิดความรู้ความเข้าใจเกี่ยวกับธรรมชาติของมนุษย์ เช่น ความต้องการ การแก้ปัญหา การปรับตัว อารมณ์และความรู่สึกในสถานการณ์ต่างๆ<br />\r\n2.ช่วยในการป้องกันปัญหาทางจิต รู้จักวิธีรักษาสุขภาพจิตได้ดี สามารถเอาชนะปมด้อยต่างๆ รู้วิธีแก้ปัญหาและปรับตัวอย่างเหมาะสม ขจัดความขัดแย้งในใจได้และความวิตกกังวลได้<br />\r\n3.สามารถเข้าใจ ตัดสินใจ และมีมนุษย์สัมพันธ์ที่ดีกับบุคคลในสังคม อยู่ร่วมกับคนหลาย เจเนอเรชั่น (Generation) ได้อย่างมีความสุข<br />\r\n4.ช่วยในการวางแผนการใช้ชีวิตได้อย่างเหมาะสม</p>\r\n\r\n<h4><strong><span style=\"font-size:20px\">ทำอาชีพอะไรได้บ้าง?</span></strong></h4>\r\n\r\n<p>1.นักจิตวิทยาคลินิก<br />\r\n2.นักจิตวิทยาองค์การ<br />\r\n3.นักจิตวิทยาพัฒนาการ<br />\r\n4.นักจิตวิทยาการปรึกษา<br />\r\n5.นักจิตวิทยาโรงเรียน<br />\r\n6.คูณครูแนะแนว<br />\r\n7.ที่ปรึกษาทางด้านทรัพยากรมนุษย์<br />\r\n8.นักฝึกอบรม<br />\r\n9.ฝ่ายทรัพยากรมนุษย์<br />\r\n10.ผู้จัดการโครงการ<br />\r\n11.นักการตลาดดิจิตอล<br />\r\n12.นักวิเคราะห์การตลาด<br />\r\n13.นักวิจัยประสบการณ์ผู้ใช้งาน<br />\r\n14.ผู้ให้คำปรึกษาแก่พนักงาน<br />\r\n15.นักจิตวิทยาสื่อ<br />\r\n16.นักจิตวิทยาการกีฬา<br />\r\n17.อาจารย์สอนในมหาลัย</p>\r\n\r\n<h4><span style=\"font-size:20px\"><strong>เงินเดือนเท่าไหร่?</strong></span></h4>\r\n\r\n<p>อย่างที่บอกไปข้างต้นว่าอาชีพของนักจิตวิทยามีหลากหลายด้านมากๆแต่ละด้านก็จะทำงานแตกต่างกัน ความยากง่ายก็ย่อมแตกต่างกัน แต่ละด้านเงินเดือนก็จะแตกต่างกันไป โดยเงินเดือนเฉลี่ยของสายงานรัฐทั่วไปจะเริ่มต้นที่ 15,000 บาท</p>\r\n\r\n<h4><span style=\"font-size:20px\"><strong>จบไปเพื่อรักษาผู้ป่วยทางจิตเวช?</strong></span></h4>\r\n\r\n<p>เชื่อว่าถ้าพูดถึงจิตวิทยาหลายๆคนคงเข้าใจว่าจบจากสาขานี้ไปต้องทำอาชีพรักษาผู้ป่วยทางจิตเวช และนั้นคือสิ่งที่ใครหลายๆคนเข้าใจผิดหรืออาจจะสับสนมาตลอดกับ อาชีพ นักจิตวิทยาและ จิตแพทย์</p>\r\n\r\n<h4><strong><span style=\"font-size:20px\">ความแตกต่างของอาชีพ&nbsp;นักจิตวิทยาและ จิตแพทย์ คือ!!</span></strong></h4>\r\n\r\n<h5><span style=\"font-size:16px\"><strong>หน้าที่ของจิตแพทย์ ?</strong></span></h5>\r\n\r\n<p>จิตแพทย์ คือ แพทย์เฉพาะทางด้านจิตเวช มีความเชี่ยวชาญด้านการวินิจฉัยและรักษาอาการป่วยทางจิต เส้นทางสู่การเป็นจิตแพทย์นั้น เริ่มต้นจากการเรียนหมอทั่วไปที่คณะแพทยศาสตร์ 6 ปี และเรียนต่อแพทย์เฉพาะทางในภาควิชาจิตเวชศาสตร์ โดยเรียนเป็นเวลา 3 ปี สำหรับหลักสูตรจิตแพทย์ทั่วไป และ 4 ปี สำหรับหลักสูตรจิตแพทย์เด็กและวัยรุ่น</p>\r\n\r\n<h4><strong><span style=\"font-size:16px\">หน้าที่ของนักจิตวิทยา?</span></strong></h4>\r\n\r\n<p>นักจิตวิทยา คือ ผู้ที่เรียนทางจิตวิทยาและได้รับการฝึกจนเป็นนักจิตวิทยาคลินิก มีหน้าที่ให้คำปรึกษาหรือบำบัดผู้ป่วยด้วยการพูดคุย แต่นักจิตวิทยาจะไม่สามารถสั่งจ่ายยาหรือวินิจฉัยอาการทางการแพทย์ได้ โดยทั่วไป นักจิตวิทยาและจิตแพทย์มักทำงานร่วมกันเพื่อช่วยฟื้นฟูสุขภาพจิตของผู้ป่วย</p>\r\n', '16276511798810.jpg', 'all,post', 'true', '2021-08-01 17:37:15', '2021-06-03 19:20:32'),
(2, 'โครงการเสริมสร้างสมรรถนะและทักษะการเรียนรู้', 'ภาพบรรยากาศในงาน...', '<h1 style=\"text-align:center\">&nbsp;</h1>\r\n\r\n<h1 style=\"text-align:center\"><strong><span style=\"font-size:16px\">โครงการเสริมสร้างสมรรถนะและทักษะการเรียนรู้ในศตวรรษที่ 21 ของนักศึกษาสาขาจิตวิทยา </span></strong></h1>\r\n\r\n<h1 style=\"text-align:center\"><strong><span style=\"font-size:16px\">ชั้นปีที่3 วันศุกร์ ที่26 มีนาคมพ.ศ. 2564 ณ ห้องประชุมคณะศึกษาศาสตร์ มหาวิทยาลัยราชภัฎจันทรเกษม</span></strong></h1>\r\n\r\n<h1 style=\"text-align:center\"><img alt=\"\" class=\"img-fluid\" src=\"./img/upload/source/1.jpg\" style=\"width:100%\" /></h1>\r\n\r\n<h1 style=\"text-align:center\"><strong><span style=\"font-size:16px\">ภาพบรรยากาศโครงการเสริมสร้างสมรรถนะและทักษะการเรียนรู้ในศตวรรษที่ 21</span></strong></h1>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:12px\">&nbsp; &nbsp;<img alt=\"\" class=\"img-fluid\" src=\"./img/upload/source/2.jpg\" style=\"width:100%\" /></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:12px\">&nbsp; &nbsp;&nbsp;<img alt=\"\" class=\"img-fluid\" src=\"./img/upload/source/3.jpg\" style=\"width:100%\" /></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:12px\">&nbsp; &nbsp; &nbsp;</span></p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n', 'blog4.jpg', 'all,activity', 'true', '2021-08-01 17:57:13', '2021-06-03 20:01:02'),
(3, 'มอบทุนการศึกษา นศ.ภาคในเวลาราชการฯ ทุกชั้นปี ', 'สนใจขอรับทุน ได้ตั้งแต่วันนี้ -​17 ส.ค. 63 เวลา 08.30​-16.30 น. ', '<p style=\"text-align:center\"><img alt=\"\" class=\"img-fluid\" src=\"./img/upload/source/blog5.jpg\" style=\"width:50%\" /></p>\r\n\r\n<p style=\"text-align:center\"><strong><span style=\"font-size:18px\">มหาวิทยาลัย มอบทุนการศึกษา นศ.ภาคในเวลาราชการฯ ทุกชั้นปี ปีการศึกษา 2563</span></strong></p>\r\n\r\n<p style=\"text-align:center\"><strong><span style=\"font-size:16px\">สนใจขอรับทุน ได้ตั้งแต่วันนี้ -​17 ส.ค. 63 เวลา 08.30​-16.30 น. <img alt=\"????\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t29/1.5/16/1f448.png\" style=\"height:16px; width:16px\" /></span></strong></p>\r\n\r\n<p style=\"text-align:center\"><strong><span style=\"font-size:16px\"><img alt=\"????\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t86/1.5/16/1f4cd.png\" style=\"height:16px; width:16px\" /> ขอรับใบสมัคร <img alt=\"????\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t86/1.5/16/1f4cd.png\" style=\"height:16px; width:16px\" /></span></strong></p>\r\n\r\n<p style=\"text-align:center\"><strong><span style=\"font-size:16px\">- กองพัฒนานักศึกษา อาค<img alt=\"????\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/taa/1.5/16/1f449.png\" style=\"height:16px; width:16px\" />ารกิจการนักศึกษา ชั้น 3 ห้อง 32-303</span></strong></p>\r\n\r\n<p style=\"text-align:center\"><strong><span style=\"font-size:16px\">- งานประชาสัมพันธ์ ชั้น 1 อาคารสำนักงานอธิการบดี</span></strong></p>\r\n\r\n<p style=\"text-align:center\"><strong><span style=\"font-size:16px\">- ศูนย์ One Stop Service ชั้น 1 อาคารสำนักงานอธิการบดี</span></strong></p>\r\n\r\n<p style=\"text-align:center\"><strong><span style=\"font-size:16px\">- สำนักงานทุกคณะ</span></strong></p>\r\n\r\n<p style=\"text-align:center\"><strong><span style=\"font-size:16px\">ดูรายละเอียดได้ที่นี่ : <img alt=\"????\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/tf7/1.5/16/1f53d.png\" style=\"height:16px; width:16px\" />&nbsp;</span><a href=\"https://op.chandra.ac.th/dsd/index.php/2017-05-22-09-30-36/764-2563-5?fbclid=IwAR1mpWqVMhfGOf0n0owPysokoqRslWdg83VekUMxurDPi3hnBDINWrpyrG0\" rel=\"nofollow\" tabindex=\"0\" target=\"_blank\">https://op.chandra.ac.th/.../2017-05-22-09-30-36/764-2563-5</a></strong></p>\r\n', 'blog5.jpg', 'all,news', 'true', '2021-08-01 17:47:09', '2021-06-15 20:29:10'),
(4, 'หยุดร้องไห้เดี๋ยวนี้ ถ้าไม่หยุดร้องแม่จะตีแล้วนะ', 'คิดให้ดีก่อนจะพูดขู่ลูก', '<p><img alt=\"\" class=\"img-fluid\" src=\"./img/upload/source/blog1.png\" style=\"width:100%\" /></p>\r\n\r\n<p><span style=\"font-size:16px\">หยุดร้องไห้เดี๋ยวนี้ ถ้าไม่หยุดร้องแม่จะตีแล้วนะ<br />\r\nเมื่อไหร่จะเลิกเสียใจซะที เรื่องแค่นี้เอง<br />\r\nถ้ายังเป็นแบบนี้อยู่ วันนี้ก็ไม่ต้องกินข้าว<br />\r\n<br />\r\nเป็น 3 ประโยคติดหูของผู้รับบริการคนหนึ่งของผม<br />\r\nเธอเป็นเด็กหญิงอายุ 16 ปี ที่รู้สึกถูกกดดันจากพ่อแม่<br />\r\n<br />\r\nเธอรู้สึกว่าการใช้ชีวิตเป็นเรื่องที่ยาก<br />\r\nเพราะพ่อแม่ของเธอชอบทำให้ทุกอย่างดูง่ายไปหมด<br />\r\nซึ่งบางครั้งด้วยข้อเท็จจริง เธอก็รู้ดีว่ามันไม่ได้ง่ายเสมอไป<br />\r\n.<br />\r\n.<br />\r\nพ่อกับแม่ชอบพูดเสียงดัง ชอบสั่งให้หยุดเสียใจ<br />\r\nทำไมพวกผู้ใหญ่ชอบคิดอะไรกันง่าย ๆ<br />\r\nเหมือนพวกเขาไม่เคยเป็นเด็กมาก่อน<br />\r\n<br />\r\nเป็นคำพูดหนึ่งที่เธอพูดกับผม<br />\r\nทำให้ผมฉุกคิดอะไรได้หลายอย่าง<br />\r\n<br />\r\nบางครั้งผู้ใหญ่ในสังคม พ่อแม่ หรือ ผู้ปกครอง<br />\r\nก็ไม่ได้ตอบสนองเด็ก ๆ หรือ วัยรุ่นตามแบบที่เขาเป็น<br />\r\nหากแต่ทำไปเพียงเพื่อความสบายใจของตัวเอง<br />\r\n.<br />\r\n.<br />\r\nไม่ชอบที่ลูกร้องไห้เสียงดัง<br />\r\nก็พยายามทำให้ลูกหยุดร้อง<br />\r\nโดยไม่ได้ตระหนักว่าในใจของลูกนั้น<br />\r\n<a href=\"https://www.facebook.com/hashtag/%E0%B9%80%E0%B8%82%E0%B8%B2%E0%B8%A1%E0%B8%B5%E0%B8%84%E0%B8%A7%E0%B8%B2%E0%B8%A1%E0%B8%A3%E0%B8%B9%E0%B9%89%E0%B8%AA%E0%B8%B6%E0%B8%81%E0%B8%AD%E0%B8%A2%E0%B9%88%E0%B8%B2%E0%B8%87%E0%B9%84%E0%B8%A3?__eep__=6&amp;__cft__[0]=AZXMnK64Swp0VpCTgEDNxLwHcxs358xF0q5p5HDRP5HdDGgvnXd-Qr8uLG_CZ67g2WsjsodgFC0H1njapKf3iMNjDqLbAYmiVPjJS67dqJcIaKPijW3ObxzAnIJbNDZ3nJXPNgSEg0T8D6rOdpS48bMkb-f1eANUm9pGYCgneULbsA&amp;__tn__=*NK*F\" tabindex=\"0\">#เขามีความรู้สึกอย่างไร</a><br />\r\n<br />\r\nไม่ชอบที่ลูกเสียใจ<br />\r\nยอมรับไม่ได้ที่เห็นลูกเป็นทุกข์<br />\r\nแต่ก็ไม่ได้เยียวยาจิตใจที่เจ็บปวดของเขา<br />\r\nเราเพียงยอมรับไม่ได้กับสิ่งที่เกิดขึ้น<br />\r\n<br />\r\nการเปลี่ยนสิ่งที่อยู่ตรงหน้าเป็นไปตามที่เราต้องการ<br />\r\nดูจะง่ายและสบายใจสำหรับเรา<br />\r\nแต่ต่อให้เขาไม่แสดงออกแล้วว่า เสียใจ<br />\r\nก็ไม่ได้แปลว่าในใจของเขาสบายดี<br />\r\n.<br />\r\n.<br />\r\nเราจึงกลายเป็นผู้ใหญ่ที่ทำอะไรเพียงแค่ความสบายใจของตัวเอง แต่ละเลยจิตใจของเด็ก ๆ ไปโดยไม่รู้ตัว<br />\r\n<br />\r\nบางทีคำพูดที่ขาดการตระหนักคิด<br />\r\nก็สร้างบาดแผลที่เจ็บช้ำในจิตใจของเหล่าเด็ก ๆ<br />\r\n<br />\r\nเหมือนกับที่เธอคนที่กำลังรู้สึก<br />\r\nเธอที่พ่อแม่พยายามทำให้ทุกอย่างดูง่าย<br />\r\nแต่กลับทำให้เธอรู้สึกว่าชีวิตมันยาก<br />\r\nเพราะต้องทำให้ทุกอย่างให้ง่ายตามที่พ่อแม่บอก<br />\r\n.<br />\r\n.<br />\r\nพ่อแม่หลายคนไม่อยากให้ลูกเจ็บ<br />\r\nไม่อยากเห็นลูกเป็นทุกข์<br />\r\nเลยพยายามทำทุกอย่างเพื่อความสุขของลูก<br />\r\n<br />\r\nแต่ถ้าย้อนกลับมาดูกันดี ๆ ในวันตัวคุณเป็นเด็ก<br />\r\nตัวคุณเองก็มีความทุกข์ มีความเจ็บปวด<br />\r\n<br />\r\nลองถามตัวเองดูว่า รู้สึกยังไงถ้ามีคนมาบอกว่า<br />\r\nหยุดร้องไห้เดี๋ยวนี้ ถ้าร้องไม่หยุดจะตีแล้วนะ<br />\r\n.<br />\r\n.<br />\r\nความเจ็บปวด ไม่อาจจะระงับความเจ็บปวดได้<br />\r\nการสร้างความเจ็บปวดให้อีกฝ่าย เพราะเขาเจ็บปวด<br />\r\nไม่มีทางที่จะมีอะไรดีขึ้นมาได้เลย<br />\r\n<br />\r\nถ้าคุณเป็นผู้ใหญ่ที่เอาความเจ็บปวดหรือการลงโทษ<br />\r\nมาขู่เด็กทุกครั้งที่เขาผิดพลาด ล้มเหลว เสียใจ<br />\r\nเขาอาจจะไม่รู้สึกหรือแสดงออกว่าตัวเองเจ็บ<br />\r\n<br />\r\nแต่เขาจะเป็นคนที่เจ็บปวดไม่เป็น<br />\r\nเพราะคนที่เขารัก นับถือไม่อนุญาตให้เขาเจ็บปวด<br />\r\nเขาจะไม่คุ้นชินกับมัน ไม่มีภูมิต้านทาน รับมือไม่ได้<br />\r\nและสิ่งที่ตามมาก็คือ เขาจะใช้ชีวิตในสังคมยากขึ้น<br />\r\n.<br />\r\n.<br />\r\nทุกคนเกิดมาต้องทุกข์ใจ ต้องผิดหวัง ต้องเจ็บปวด<br />\r\nคุณเองก็เช่นกัน สิ่งสำคัญเวลาที่เราเจ็บปวด<br />\r\nไม่ใช่การห้ามตัวเองไม่ให้เจ็บ (เพราะความเจ็บมันเกิดขึ้นมาแล้ว ห้ามตอนนี้คงไม่ทัน)<br />\r\n<br />\r\nแต่เป็นการเรียนรู้ที่จะอยู่กับมัน จะทำยังไงในวันที่เจ็บปวด<br />\r\nผู้ใหญ่มีหน้าที่ที่จะสอนวิธีการต่าง ๆ เหล่านี้ให้เด็ก ๆ<br />\r\nด้วยรูปแบบการสอนที่อบอุ่นต่อจิตใจของเด็ก ๆ<br />\r\n<br />\r\nบางครั้งคุณก็ไม่ต้องทำอะไรหรอก แค่ไม่ซ้ำเติมก็พอ<br />\r\nเขาจะได้มีโอกาสเจอความเจ็บปวดบ้าง<br />\r\nได้รู้จักมันบ้าง จะได้มีภูมิต้านทานกับมัน<br />\r\n<br />\r\nคุณแค่ไม่ต้องหนีไปไหน อยู่ข้าง ๆ เขา<br />\r\nไม่ว่าเขาจะรู้สึกยังไงก็ตาม นั่นจะทำให้...<br />\r\nเขาได้ค้นพบว่า ไม่ว่าจะรู้สึกยังไง เขาก็ไม่ถูกทอดทิ้ง<br />\r\n<br />\r\nเขาก็กล้าที่จะรู้สึก กล้าที่จะลองเยียวยาตัวเอง<br />\r\nมันอาจจะไม่ได้ดีที่สุดในทีเดียว แต่เขามีโอกาสที่สำคัญแล้ว โอกาสที่จะได้รู้จักความเจ็บปวด แล้วค่อย ๆ เรียนรู้ที่จะจัดการมัน<br />\r\n<br />\r\nโดยมีคนที่เขารักและเชื่อใจอยู่เคียงข้าง นั่นก็คือคุณในฐานะพ่อแม่ , ผู้ปกครอง หรือ ผู้ใหญ่ที่เขาเคารพนับถือ</span><br />\r\n<br />\r\n<span style=\"font-size:18px\"><strong>Trust.นักจิตวิทยาการปรึกษา</strong></span></p>\r\n', '16276529290300.png', 'all,activity,post', 'true', '2021-08-01 18:01:50', '2021-07-26 15:12:49'),
(5, 'มาทำความรู้จัก \"Defense Mechanism (กลไกป้องกันจิตใจ)\"', 'Defense Mechanism คืออะไร ?', '<p><img alt=\"\" class=\"img-fluid\" src=\"./img/upload/source/blog2.png\" style=\"width:100%\" /></p>\r\n\r\n<p><strong><span style=\"font-size:18px\">Defense Mechanism คืออะไร ?</span></strong></p>\r\n\r\n<p><span style=\"font-size:16px\"><strong>มันคือกลไกสำคัญที่เรามีไว้เพื่อปกป้องจิตใจของตัวเองจากความเจ็บปวดทางจิตใจทั้งหมดในชีวิตของเรา</strong></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><strong>Defense Mechanism เป็นกลไกที่มีความสำคัญกับจิตใจของมนุษย์อย่างมาก เพราะเมื่อเวลาผ่านไป เราจะใช้ Defense Mechanism บ่อยครั้ง มันจะกลายเป็นวิธีคิดของเรา จนในที่สุดนำมาซึ่งรูปแบบบุคลิกภาพและพฤติกรรมของมนุษย์</strong></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><strong>.</strong></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><strong>ผู้ที่ได้ริเริ่มศึกษาเรื่องนี้และนับว่าเป็นผู้ค้นพบกลไกอันมีความสำคัญของมนุษย์คนแรกในโลกก็คือ Sigmund Freud ผู้เป็นบิดาแห่งศาสตร์จิตวิเคราะห์</strong></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><strong>Sigmund Freud ได้เริ่มศึกษาจิตใจของมนุษย์ลึกซึ้งมากขึ้น และได้นิยามโครงสร้างทางจิตใจของมนุษย์ประกอบด้วย Id , Ego และ Super Ego</strong></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><strong>ซึ่ง Sigmund Freud ได้ให้ข้อสรุปไว้ว่า Ego คือสิ่งที่ที่ส่งสัญญาณเตือนภัยถึงอันตรายต่าง ๆ ทำให้จิตใจของมนุษย์ &#39; สร้าง &#39; และ &#39; เรียกใช้ &#39; Defense Mechanism และเมื่อมนุษย์เติบโตขึ้น Ego จะมีส่วนเข้ามาตัดสินใจในการเลือกใช้ Defense Mechanism มากยิ่งขึ้น</strong></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><strong>.</strong></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><strong>เมื่อ Sigmund Freud ได้เสียชีวิตลง ผู้ที่มีบทบาทสำคัญในการสานต่องานของเขาในเรื่อง Defense Mechanism ก็คือ Anna Freud ผู้ซึ่งเป็นลูกสาวของเขานั้นเอง</strong></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><strong>Anna Freud ได้ทำการศึกษาเรื่องนี้อย่างจริงจัง และมีการวางรากฐานทางความรู้ไว้อย่างเป็นระบบ</strong></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><strong>ซึ่งเดิมทีนั้น Sigmund Freud ได้กล่าวถึง Defense Mechanism อย่างไม่ละเอียดนัก และค้นพบจำนวน Defense Mechanism ต่าง ๆ ได้ไม่มากเท่าไหร่</strong></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><strong>เมื่อ Anna Freud ได้มาสานต่องานของคุณพ่อ เธอได้ทำให้เรื่อง Defense Mechanism พัฒนามาอย่างก้าวไกล และเป็นรากฐานสำคัญสำหรับการศึกษาทางจิตวิเคราะห์มาจนถึงวันนี้</strong></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><strong>.</strong></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><strong>ในบางครั้ง มนุษย์เราก็ไม่ได้ใช้ Defense Mechanism ได้เหมาะสมเสมอไป หากเกิดการใช้ Defense Mechanism ที่ไม่เหมาะสมซ้ำกันหลายครั้ง ก็อาจจะทำให้บุคคลนั้นเกิด Psychopathology (พยาธิสภาพทางจิตใจ-อาการทางจิตเวช)</strong></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><strong>ซึ่งในผู้ป่วยจิตเวชแต่ละรายก็จะมีการใช้ Defense Mechanism ที่แตกต่างและหลากหลาย แม้จะป่วยเป็นโรคเดียวกัน ก็ไม่ได้หมายความว่าจะต้องมี Defense Mechanism เหมือนกันทุกอย่าง แต่อาจจะมี Defense Mechanism ที่โดดเด่นเหมือนกัน</strong></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><strong>ยกตัวอย่างผู้ป่วยโรคย้ำคิดย้ำทำ (OCD) มี Defense Mechanism ที่โดดเด่นคือ การแยกอารมณ์ออกหรือไม่รับรู้อารมณ์ของตนเอง (Isolation of affect) , เปลี่ยนแปลงความรู้สึกที่ไม่ดีให้เป็นดีจนเกินเหตุ (Reaction Formation) , มีการถดถอย (Regression) และ การกระทำเพื่อแก้ความคิด (Undoing)</strong></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><strong>แต่ถึงกระนั้น ก็ไม่ได้หมายความว่า ผู้ป่วยโรคย้ำคิดย้ำทำ (OCD) จะมี Defense Mechanism ที่โดดเด่นเหมือนกันทุกคน การที่เราจะมี Defense Mechanism อย่างไรขึ้นอยู่กับปัญหาที่เราเผชิญ และประสบการณ์ในชีวิตของเราว่าเราจะตัดสินใจอย่างไร</strong></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><strong>.</strong></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><strong>Defense Mechanism มีอะไรบ้าง ?</strong></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><strong>ในปัจจุบันได้มีการแบ่ง Defense Mechanism ออกเป็น 4 ระดับตามการพัฒนาทางจิตใจ โดยมีเนื้อหาโดยย่อดังนี้</strong></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><strong>1.กลไกในระยะแรก หรือ ระยะเริ่มต้นของพัฒนาการ (Narcissistic Defenses)</strong></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><strong>-Denial การปฏิเสธความจริง</strong></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><strong>-Projection การโทษหรือโยนความผิดให้ผู้อื่น</strong></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><strong>-Distortion การบิดเบือน</strong></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><strong>2.กลไกที่ยังพัฒนาไม่เต็มที่ (Immature Defenses)</strong></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><strong>-Acting Out การแสดงออกจากระดับจิตไร้สำนึก (Unconscious)</strong></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><strong>-Blocking การหยุดยั้ง(ชั่วคราว) - เมื่อพูดถึงความคิด อารมณ์ ความรู้สึก เราจะลืมสิ่งที่พูดไปทันที</strong></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><strong>-Hypochondriasis การขยายความเจ็บปวด/การเน้นย้ำความเจ็บปวด</strong></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><strong>-Introjection การโทษตัวเอง</strong></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><strong>-Identification การเลียนแบบ</strong></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><strong>-Passive-aggressive Behavior การแสดงความก้าวร้าวต่อผู้อื่นทางอ้อม</strong></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><strong>-Regression การถดถอย</strong></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><strong>-Schizoid Fantasy การใช้จินตนาการและหนีเข้าไปในโลกแห่งจินตนาการที่ได้จินตนาการไว้</strong></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><strong>-Somatization ความเจ็บปวดทางใจที่แสดงออกเป็นความเจ็บปวดทางกาย</strong></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><strong>3.กลไกป้องกันจิตใจแบบโรคประสาท (Neurotic defenses)</strong></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><strong>-Controlling การควบคุม</strong></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><strong>-Displacement การเบียงเบนหรือการแทนที</strong></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><strong>-Dissociation การแตกแยก - การเปลี่ยนแปลงบุคลิกภาพอย่างรุนแรง</strong></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><strong>-Externalization การโอนถ่ายไปยังสิ่งภายนอก</strong></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><strong>-Inhibition การห้าม</strong></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><strong>-Intellectualization การใช้ปัญญากลบเกลือน</strong></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><strong>-Isolation of affect การแยกอารมณ์ออกหรือไม่รับรู้อารมณ์ของตนเอง</strong></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><strong>-Social isolation การแยกตัวเองออกจากสังคม</strong></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><strong>-Rationalization การหาเหตุผลเข้าข้างตัวเอง</strong></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><strong>-Reaction Formation การมีปฏิกิริยาตรงกันข้าม -ในใจรู้สึกแต่แสดงออกตรงกันข้ามกับที่รู้สึก</strong></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><strong>-Repression การเก็บกด</strong></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><strong>-Sexualization การใช้เรื่องทางเพศเพื่อลดความกังวล</strong></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><strong>-Undoing การลบล้าง</strong></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><strong>-Conversion การเปลี่ยนแปลงภาวะภายในจนมีผลทางร่างกาย</strong></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><strong>4.กลไกที่ได้พัฒนาแล้ว (Mature Defenses)</strong></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><strong>-Altruism การเสียสละ</strong></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><strong>-Anticipation การคาดการณ์หรือการวางแผนล่วงหน้า</strong></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><strong>-Asceticism การปฏิเสธความสุขจากสิ่งที่ไม่ถูกต้อง</strong></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><strong>-Humor การมีอารมณ์ขัน</strong></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><strong>-Sublimation การเปลี่ยนความทุกข์ไปสู่สิ่งที่สังคมยอมรับ</strong></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><strong>-Suppression การไม่สนใจหรือเมิดเฉยความต้องการที่ไม่เหมาะสม</strong></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><strong>.</strong></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><strong>ที่กล่าวมาทั้งหมดเป็นรายละเอียดโดยย่อเกี่ยวกับเรื่อง &quot;Defense Mechanism (กลไกป้องกันจิตใจ)&quot; ในอนาคตผมจะพยายามพูดถึงเรื่องนี้โดยละเอียดอีกครั้ง</strong></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><strong>อนึง Defense Mechanism ไม่ใช่สิ่งที่จะมองออกได้โดยง่าย และกลไกทั้งหลายส่วนใหญ่มาจากจิตไร้สำนึก (Unconscious) นั่นหมายถึงคุณไม่รู้สึกตัวของการกระทำดังกล่าว</strong></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><strong>ทั้งนี้ทั้งนั้นยังมีรายละเอียดอีกมากที่ยังไม่ได้พูดถึงเกี่ยวกับ Defense Mechanism หากมีข้อมูลส่วนใดตกหล่นหรือไม่ได้ถูกพูดถึงต้องอภัยทุกท่านไว้ด้วยครับ</strong></span></p>\r\n\r\n<p>.</p>\r\n\r\n<p><span style=\"font-size:16px\"><strong>Reference : คู่มือจิตวิเคราะห์ / การทำจิตบำบัดชนิดอิงจิตวิเคราะห์</strong></span></p>\r\n\r\n<p><span style=\"font-size:18px\"><strong>Trust.นักจิตวิทยาการปรึกษา</strong></span></p>\r\n\r\n<p><img alt=\"\" class=\"img-fluid\" src=\"./img/upload/source/Furious-7-W-Motors-Lykan-Hypersport-HD-Wallpaper-1124x747.jpg\" style=\"width:100%\" /></p>\r\n', '16276531058841.png', 'all,news', 'true', '2021-08-01 18:04:47', '2021-07-26 15:22:52'),
(6, 'โควิดไม่น่ากลัว ?', 'จิงหรือ \"โควิดไม่น่ากลัวเท่ากลัวโควิด\" ', '<p><img alt=\"\" class=\"img-fluid\" src=\"./img/upload/source/5.jpg\" style=\"width:100%\" /></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:18px\"><strong><img alt=\"????\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t13/1.5/16/1f4e3.png\" style=\"height:16px; width:16px\" /><img alt=\"????\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t13/1.5/16/1f4e3.png\" style=\"height:16px; width:16px\" /><img alt=\"????\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t13/1.5/16/1f4e3.png\" style=\"height:16px; width:16px\" /><br />\r\nเข้าร่วมโครงการสัมมนาทางจิตวิทยา<br />\r\nในหัวข้อ &ldquo;โควิดไม่น่ากลัวเท่ากลัวโควิด&rdquo;&nbsp;<img alt=\"????\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t51/1.5/16/1f3e2.png\" style=\"height:16px; width:16px\" /><img alt=\"????\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t39/1.5/16/1f31f.png\" style=\"height:16px; width:16px\" /><img alt=\"????\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t16/1.5/16/1f4a2.png\" style=\"height:16px; width:16px\" /><br />\r\n<img alt=\"????\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t86/1.5/16/1f4cd.png\" style=\"height:16px; width:16px\" />&nbsp;วันจันทร์ ที่ 2 สิงหาคม2564 เวลา 8.00-12.30น.<br />\r\nผ่านทางแอพพลิเคชั่น Zoom<br />\r\n<img alt=\"????\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/taa/1.5/16/1f449.png\" style=\"height:16px; width:16px\" />&nbsp;จะได้พบกับสาระความรู้ที่จะทำให้ท่านเข้าใจในกระเด็นหัวข้อต่างๆดั้งนี้<br />\r\n1.ซัตดาวน์ความกลัว ดูแลใส่ให้แข็งแรงช่วงโควิด<br />\r\n2.ไม่ตีตรา ไม่เลือกปฏิบัติ เพราะเราอยู่ด้วยกันได้<br />\r\n***เข้าร่วมสัมมนาฟรี<img alt=\"❗\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/td7/1.5/16/2757.png\" style=\"height:16px; width:16px\" />ไม่มีค่าใช้จ่าย<br />\r\n<img alt=\"????\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t64/1.5/16/1f388.png\" style=\"height:16px; width:16px\" />โดยวิทยากร อดุลย์ ขวัญมิ่ง&nbsp;<img alt=\"????????‍????\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t4/1.5/16/1f469_1f3fc_200d_1f4bc.png\" style=\"height:16px; width:16px\" /><br />\r\n<img alt=\"????\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t64/1.5/16/1f388.png\" style=\"height:16px; width:16px\" />ภายในงานมีกิจกรรมและของรางวัลอีกมากมาย&nbsp;<img alt=\"????\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/tdd/1.5/16/1f381.png\" style=\"height:16px; width:16px\" /><img alt=\"????\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/td/1.5/16/1f38a.png\" style=\"height:16px; width:16px\" /><br />\r\nสอบถามรายละเอียดเพิ่มเติม<br />\r\nโทร. 0637479027 ฟ้า</strong></span></p>\r\n', '16276533401241.jpg', 'all,news', 'true', '2021-08-01 18:08:41', '2021-08-01 18:08:41');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `detail` text NOT NULL,
  `create_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `phone`, `email`, `detail`, `create_at`) VALUES
(1, 'tee', '0909290349', 'ea@asdasdasd', 'asdasdasd', '2021-07-12'),
(2, 'ๆหกฟหกฟหก', 'ฟหกฟหกผปแ', 'asdasd@asdasd', 'asdasdasdasd', '2021-07-12'),
(3, 'ตี๋', '191', 'asdasd@hotmail.com', 'header', '2021-07-12'),
(4, 'pathompol ruchaudom', '0909290349', 'pathompoltee27@gmail.com', 'สนใจอยากปรึกษาสุขภาพจิต', '2021-07-14'),
(5, 'pathompol ruchaudom', '0909290349', 'pathompoltee27@gmail.com', 'hello word', '2021-07-14'),
(6, 'asdasd', 'asdasdasd', 'asdasdasd@asd', 'asdasdas', '2021-07-14'),
(7, 'asdasd', 'asdasdasd', 'asdasdasd@asd', 'asdasdas', '2021-07-14'),
(8, 'pathompol', '0909290349', 'pathompoltee27@gmail.com', 'hello weed', '2021-07-14'),
(9, 'adasdas', 'asdasdasd', 'asdasdasd@asd', 'asdasdasdas', '2021-07-17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
