-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 26, 2024 at 04:18 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `commentId` bigint(20) NOT NULL,
  `username` varchar(255) NOT NULL,
  `id` bigint(20) NOT NULL,
  `content` varchar(255) NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `id` bigint(20) NOT NULL,
  `tieude` varchar(255) NOT NULL,
  `tacgia` varchar(255) NOT NULL,
  `theloai` varchar(255) NOT NULL,
  `noidung` text NOT NULL,
  `anh` varchar(255) NOT NULL,
  `phanloai` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`id`, `tieude`, `tacgia`, `theloai`, `noidung`, `anh`, `phanloai`) VALUES
(18, 'Vừa lười vừa bận vẫn giỏi tiếng Anh', 'Nguyễn Hiệp', 'sach_tamlykynang', '<p style=\"text-align: justify;\">\r\n	1. Nội dung cuốn s&aacute;ch &ldquo;Vừa lười vừa bận vẫn giỏi tiếng Anh&rdquo; c&oacute; g&igrave; đặc biệt? <span font-size:=\"\" new=\"\" style=\"color: rgb(0, 0, 0); font-family: \" text-decoration-skip-ink:=\"\" times=\"\" white-space-collapse:=\"\"> Cuốn s&aacute;ch n&agrave;y l&agrave; t&agrave;i liệu học ph&aacute;t &acirc;m, ngữ ph&aacute;p, giao tiếp cho những người bận rộn, ngại ngồi v&agrave;o b&agrave;n học v&agrave; kh&ocirc;ng biết ch&uacute;t g&igrave; về tiếng Anh. Đ&acirc;y c&oacute; thể n&oacute;i l&agrave; cuốn s&aacute;ch đầu ti&ecirc;n trong thể loại luyện nghe được l&agrave;m ri&ecirc;ng cho người Việt với nội dung 95% l&agrave; tiếng Việt. B&igrave;a s&aacute;ch được thiết kế kh&aacute; đẹp ấn tượng, chất gi&agrave;y d&agrave;y v&agrave; mịn. C&aacute;c b&agrave;i học c&oacute; nhiều m&agrave;u sắc in rất r&otilde; n&eacute;t v&agrave; h&igrave;nh ảnh minh họa gi&uacute;p người học hứng thứ v&agrave; dễ d&agrave;ng tiếp thu hơn. Gi&aacute; cả của s&aacute;ch cũng kh&aacute; rẻ chỉ với khoảng 168.000đ n&ecirc;n bạn c&ograve;n chần chờ g&igrave; nữa m&agrave; kh&ocirc;ng sở hữu ngay. Điểm g&acirc;y ấn tượng của cuốn s&aacute;ch l&agrave; một sản phẩm học bằng &acirc;m thanh. Người học sẽ được trải nghiệm phương ph&aacute;p học c&ocirc;ng nghệ tr&ecirc;n nền tảng di động MCPlatform. Bạn qu&aacute; bận, bạn qu&aacute; lười th&igrave; chỉ cần với một chiếc tai nghe v&agrave; điện thoại l&agrave; bạn đ&atilde; c&oacute; thể luyện nghe tiếng Anh mọi l&uacute;c mọi nơi rất tiện lợi. Để thực hiện được điều đ&oacute;, ứng dụng học tr&ecirc;n di động đ&atilde; được t&iacute;ch hợp 150 b&agrave;i học tiếng Anh được chọn lọc kĩ c&agrave;ng. Bắt đầu từ những b&agrave;i c&oacute; độ kh&oacute; cơ bản đến n&acirc;ng cao, đưa ra rất nhiều t&igrave;nh huống cần thiết thường gặp trong giao tiếp v&agrave; c&ocirc;ng việc. C&oacute; một hệ thống video đi k&egrave;m phụ đề cũng được bổ dung để b&agrave;i nghe trở n&ecirc;n sinh động gi&uacute;p người học dễ nhớ, dễ thuộc. Nhờ vậy m&agrave; việc học tiếng Anh của bạn sẽ trở n&ecirc;n dễ d&agrave;ng, nhẹ nh&agrave;ng, tự nhi&ecirc;n v&agrave; hiệu quả hơn bao giờ hết. Khi mới học lần đầu th&igrave; n&ecirc;n đọc qua s&aacute;ch nh&igrave;n kỹ c&aacute;c d&ograve;ng in đậm, chỗ n&agrave;o kh&ocirc;ng hiểu như từ mới, c&acirc;u tr&uacute;c c&acirc;u chưa r&otilde; n&ecirc;n ghi ch&uacute; lại để nghi&ecirc;n cứu th&ecirc;m. C&oacute; thể tra phi&ecirc;n &acirc;m trong từ điển trước để đọc cho chuẩn sau đ&oacute; mới được ph&eacute;p lười bằng c&aacute;ch nghe đi nghe lại bằng ứng dụng tr&ecirc;n điện thoại. Người học c&oacute; thể nghe đi nghe lại nhiều lần đến khi ho&agrave;n to&agrave;n hiểu nội dung to&agrave;n b&agrave;i nhờ chế độ tua th&ocirc;ng minh. Đ&oacute; l&agrave; một c&aacute;ch luyện nghe s&acirc;u, gi&uacute;p kiến thức từ từ thẩm thấu v&agrave;o s&acirc;u trong bộ n&atilde;o v&agrave; kh&ocirc;ng bao giờ qu&ecirc;n những g&igrave; đ&atilde; học. Với những phần qu&aacute; kh&oacute; th&igrave; bạn kh&ocirc;ng cần phải lo v&igrave; trong s&aacute;ch lu&ocirc;n c&oacute; phần giải th&iacute;ch một c&aacute;ch chi tiết. Bạn ho&agrave;n to&agrave;n c&oacute; thể giỏi tiếng Anh chỉ trong 4 th&aacute;ng với 45 ph&uacute;t mỗi ng&agrave;y theo phương ph&aacute;p n&agrave;y giống như tr&ecirc;n b&igrave;a s&aacute;ch đ&atilde; n&oacute;i. Về nội dung kiến thức trong s&aacute;ch, t&aacute;c giả chia th&agrave;nh 5 phần rất hệ thống v&agrave; c&oacute; logic: Phần 1 &ndash; Ph&aacute;t &acirc;m cơ bản, phần 2 &ndash; Những kh&aacute;i niệm căn bản cho người mới học tiếng Anh, phần 3 &ndash; Giao tiếp trong c&aacute;c t&igrave;nh huống h&agrave;ng ng&agrave;y, phần 4 &ndash; Giao tiếp trong c&ocirc;ng việc v&agrave; phần 5 &ndash; Cụm động từ v&agrave; c&aacute;c th&agrave;nh ngữ. </span></p>\r\n<p style=\"text-align: justify;\">\r\n	&nbsp;</p>\r\n<p style=\"text-align: justify;\">\r\n	<span font-size:=\"\" font-weight:=\"\" new=\"\" style=\"color: rgb(0, 0, 0); font-family: \" text-decoration-skip-ink:=\"\" times=\"\" white-space-collapse:=\"\">2. V&igrave; sao bạn n&ecirc;n chọn s&aacute;ch Vừa lười vừa bận vẫn giỏi tiếng Anh? </span><span font-size:=\"\" new=\"\" style=\"color: rgb(0, 0, 0); font-family: \" text-decoration-skip-ink:=\"\" times=\"\" white-space-collapse:=\"\"> Chỉ với v&agrave;i thủ thuật đơn giản như vậy đ&atilde; biến việc học tiếng Anh trở n&ecirc;n đơn giản hơn bao giờ hết như ch&iacute;nh những sự vật hiện tượng m&agrave; bạn đ&atilde; quen thuộc h&agrave;ng ng&agrave;y. C&aacute;c phần b&agrave;i giảng được t&aacute;c giả tr&igrave;nh b&agrave;y rất chi tiết, dễ hiểu sao cho ai cũng c&oacute; thể học được. Hơn hết, bạn c&oacute; thể tự tin trong giao tiếp h&agrave;ng ng&agrave;y nhờ ứng dụng c&aacute;c t&igrave;nh huống hữu &iacute;ch được liệt k&ecirc; trong s&aacute;ch. Việc học đ&atilde; kh&ocirc;ng c&ograve;n bị giới hạn v&agrave; g&ograve; b&oacute; ở việc đọc s&aacute;ch hay ghi ch&eacute;p c&ugrave;ng với sự hỗ trợ đắc lực của c&ocirc;ng nghệ nghe tr&ecirc;n ứng dụng điện thoại. Người học c&oacute; thể thoải m&aacute;i nghe v&agrave; r&egrave;n luyện tiếng Anh mọi l&uacute;c mọi nơi, song song với thời gian l&agrave;m những việc kh&aacute;c như nấu ăn, tập thể dục, dọn dẹp nh&agrave; cửa,&hellip; Hơn nữa, kết quả được ghi nhận sẽ nhanh v&agrave; hiệu quả hơn gấp nhiều lần so với c&aacute;ch học th&ocirc;ng thường nhờ sự &ocirc;n luyện li&ecirc;n tục v&agrave; chăm chỉ. Đ&acirc;y c&oacute; thể được coi l&agrave; giải ph&aacute;p đột ph&aacute; ho&agrave;n hảo d&agrave;nh cho những người &iacute;t thời gian, lười nhưng vẫn muốn học nhanh, nhớ l&acirc;u, hiểu s&acirc;u tiếng Anh. D&ugrave; nhận được rất nhiều phản hồi t&iacute;ch cực về sự tiện lợi của phương ph&aacute;p học n&agrave;y nhưng quyển s&aacute;ch cũng vấp phải nhiều &yacute; kiến tr&aacute;i chiều. Một số người học đ&atilde; cho rằng việc học với điện thoại sẽ khiến cho người học phải phụ thuộc v&agrave;o thiết bị di động hoặc dễ mất tập trung khi học. B&ecirc;n cạnh đ&oacute;, với phần phi&ecirc;n &acirc;m c&oacute; phần độc đ&aacute;o v&agrave; kh&aacute;c lạ, l&agrave;m cho nhiều người học cảm thấy lo ngại về vấn đề ph&aacute;t &acirc;m kh&ocirc;ng chuẩn</span></p>\r\n<p style=\"text-align: justify;\">\r\n	&quot;&gt;</p>\r\n', 'sach1.jpg', 'sach'),
(21, 'Tuổi trẻ đáng giá bao nhiêu', 'Rosie Nguyễn', 'sach_tamlykynang', '<div>\r\n	<span style=\"font-family:comic sans ms,cursive;\">&nbsp; &nbsp;T&aacute;c giả Rosie Nguyễn đ&atilde; chia cuốn s&aacute;ch n&agrave;y th&agrave;nh 5 phần, mỗi phần l&agrave; một c&acirc;u chuyện định hướng bản th&acirc;n th&ocirc;ng qua những sự lựa chọn Học - L&agrave;m - Đi, từ đ&oacute; gi&uacute;p lan tỏa th&ocirc;ng điệp tự kh&aacute;m ph&aacute; bản th&acirc;n d&agrave;nh cho người trẻ theo hướng t&iacute;ch cực nhất.</span></div>\r\n<div>\r\n	<span style=\"font-family:comic sans ms,cursive;\">&nbsp; &nbsp;Thật ra tr&ecirc;n thị trường s&aacute;ch hiện nay c&oacute; đầy rẫy những cuốn s&aacute;ch &ldquo;dạy l&agrave;m người&rdquo; d&agrave;nh cho c&aacute;c độc giả trẻ, tuy nhi&ecirc;n hầu hết điều l&agrave; kiến thức chung chung v&agrave; l&yacute; thuyết, rất kh&oacute; để c&aacute;c bạn trẻ c&oacute; thể thấm v&agrave; thực hiện theo được.</span></div>\r\n<div>\r\n	<span style=\"font-family:comic sans ms,cursive;\">&nbsp; &nbsp;Tuy nhi&ecirc;n, đối với cuốn s&aacute;ch n&agrave;y, th&igrave; đ&acirc;y lại l&agrave; ch&iacute;nh những d&ograve;ng tự sự của t&aacute;c giả về ch&iacute;nh bản th&acirc;n m&igrave;nh, khi tuổi trẻ đ&atilde; qua đi, c&ocirc; đ&atilde; c&oacute; dịp để nh&igrave;n nhận lại bản th&acirc;n v&agrave; từ đ&oacute; đưa ra những lời khuy&ecirc;n ch&acirc;n t&igrave;nh nhất của m&igrave;nh d&agrave;nh cho c&aacute;c bạn trẻ - những c&ocirc; cậu vừa mới 18 tuổi chập chững bước v&agrave;o đời.</span></div>\r\n<div>\r\n	<span style=\"font-family:comic sans ms,cursive;\">&nbsp; <strong>&nbsp;Ở phần 1 cuốn s&aacute;ch sẽ l&agrave; chủ đề &ldquo;T&ocirc;i đ&atilde; học như thế n&agrave;o&rdquo;. </strong>Trong phần n&agrave;y, t&aacute;c giả sẽ tập trung đưa ra những phương ph&aacute;p học tập tốt nhất d&agrave;nh cho c&aacute;c bạn trẻ c&ograve;n đang ngồi tr&ecirc;n ghế nh&agrave; trường, c&oacute; thể kể đến như việc c&aacute;c bạn n&ecirc;n thường xuy&ecirc;n đọc s&aacute;ch. S&aacute;ch ch&iacute;nh l&agrave; nguồn kiến thức v&ocirc; tận m&agrave; c&aacute;c bạn c&oacute; thể dễ d&agrave;ng tiếp cận nhất.&nbsp;</span></div>\r\n<div>\r\n	<span style=\"font-family:comic sans ms,cursive;\">&nbsp; &nbsp;Do đ&oacute; bạn h&atilde;y d&agrave;nh nhiều thời gian để đọc s&aacute;ch thay v&igrave; l&agrave;m những điều v&ocirc; bổ như chơi game hay xem phim giết thời gian. Ch&iacute;nh Rosie Nguyễn đ&atilde; t&acirc;m sự về qu&atilde;ng thời gian c&ograve;n l&agrave; học sinh của m&igrave;nh, c&ocirc; cho rằng hệ thống gi&aacute;o dục hiện đang c&oacute; vấn đề v&agrave; rất dễ khiến cho học sinh học tập với những điểm số ảo v&agrave; kh&ocirc;ng c&oacute; gi&aacute; trị thực tiễn cao.</span></div>\r\n<div>\r\n	<span style=\"font-family:comic sans ms,cursive;\">&nbsp; &nbsp;Qua đ&oacute;, t&aacute;c giả muốn n&oacute;i l&ecirc;n th&ocirc;ng đi&ecirc;̣p: &rdquo;Mục ti&ecirc;u lớn nhất của đời người l&agrave; sống đ&uacute;ng với tiềm năng của bản th&acirc;n&rdquo; để kết th&uacute;c phần 1 của cuốn s&aacute;ch.</span></div>\r\n<div>\r\n	<span style=\"font-family:comic sans ms,cursive;\">&nbsp; &nbsp;<strong>Phần 2 với chủ đề &ldquo;Học đi đ&ocirc;i với h&agrave;nh&rdquo;,</strong> t&aacute;c giả đ&atilde; chia sẻ rất nhi&ecirc;̀u những c&acirc;u chuy&ecirc;̣n trong việc th&ocirc;i th&uacute;c tiềm năng của bản th&acirc;n để biết r&otilde; bản th&acirc;n đang đam m&ecirc; v&agrave; muốn theo đuổi điều g&igrave;, đ&acirc;y l&agrave; phần d&agrave;nh cho những bạn trẻ sắp ra trường v&agrave; đang t&igrave;m cho m&igrave;nh một hướng đi đ&uacute;ng đắn cho m&igrave;nh.</span></div>\r\n<div>\r\n	<span style=\"font-family:comic sans ms,cursive;\">&nbsp; &nbsp;Bằng những c&acirc;u chuy&ecirc;̣n thực tế v&agrave; gần gũi, độc giả sẽ cảm nhận r&otilde; n&eacute;t hơn về c&aacute;ch tạo dựng đam m&ecirc; v&agrave; th&oacute;i quen như ch&iacute;nh t&aacute;c giả đ&atilde; n&oacute;i rằng &ldquo;Nếu bạn muốn c&oacute; một kết quả kh&aacute;c, h&atilde;y thử h&agrave;nh động kh&aacute;c đi.&rdquo;</span></div>\r\n<div>\r\n	<span style=\"font-family:comic sans ms,cursive;\">&nbsp; &nbsp;<strong>Phần 3 của cuốn s&aacute;ch tiếp tục l&agrave; chủ đề&nbsp; &ldquo;Đi l&agrave; một c&aacute;ch tự học&rdquo;. </strong>Học với những kiến thức l&yacute; thuyết kh&ocirc; khan l&agrave; chưa đủ, c&aacute;c bạn trẻ cũng n&ecirc;n tự l&agrave;m mới bản th&acirc;n bằng c&aacute;ch h&atilde;y đi du lịch bụi để trải nghiệm v&agrave; học hỏi th&ecirc;m những đi&ecirc;̀u mới mẻ m&agrave; chỉ c&oacute; cuộc sống mới đem lại được.&nbsp;</span></div>\r\n<div>\r\n	<span style=\"font-family:comic sans ms,cursive;\">&nbsp; &nbsp;L&uacute;c n&agrave;y ch&iacute;nh bạn l&agrave; người sẽ cảm nhận r&otilde; nhất l&agrave; m&agrave; đ&atilde; học hỏi v&agrave; nhận được những g&igrave; từ những chuyến đi bụi đ&oacute;. Những th&ocirc;ng đi&ecirc;̣p như &ldquo;Những người trẻ hãy sống thật với ch&iacute;nh bản th&acirc;n v&agrave; những gi&aacute; trị của m&igrave;nh&rdquo; hay &ldquo;Chỉ việc sống như c&aacute;ch m&igrave;nh muốn th&ocirc;i cũng đ&atilde; l&agrave; một sự nỗ lực phi thường rồi.&rdquo; ch&iacute;nh l&agrave; mục đ&iacute;ch ch&iacute;nh m&agrave; t&aacute;c giả muốn nhắn gửi ở phần 3 n&agrave;y.</span></div>\r\n<div>\r\n	<span style=\"font-family:comic sans ms,cursive;\">&nbsp;<strong> &nbsp;Phần 4 với chủ đề: &rdquo; Lấp l&aacute;nh trước khi tỏa s&aacute;ng&rdquo;,</strong> sẽ l&agrave; phần để c&aacute;c bạn trẻ sống v&agrave; theo đuổi đam m&ecirc; của m&igrave;nh để dần tạo n&ecirc;n sự trưởng th&agrave;nh cho bản th&acirc;n. Rosie Nguyễn đ&atilde; kh&ocirc;ng qu&ecirc;n đưa ra những lời khuy&ecirc;n, c&aacute;c b&agrave;i học động vi&ecirc;n v&agrave; lời cổ vũ cho những bạn trẻ của x&atilde; hội hiện đại h&atilde;y lu&ocirc;n sống v&agrave; ch&aacute;y hết m&igrave;nh với đam m&ecirc; của m&igrave;nh.</span></div>\r\n<div>\r\n	<span style=\"font-family:comic sans ms,cursive;\">&nbsp; &nbsp;<strong>Phần 5 cũng l&agrave; phần cuối c&ugrave;ng của cuốn s&aacute;ch với chủ đề &ldquo;Qu&agrave; tặng k&egrave;m&rdquo;,</strong> phần cuối n&agrave;y bao gồm những lời khuy&ecirc;n hữu &iacute;ch v&agrave; ch&acirc;n th&agrave;nh của Rosie muốn d&agrave;nh cho những độc giả trẻ của m&igrave;nh, gi&uacute;p c&aacute;c bạn c&oacute; thể giải quyết được những vấn đề v&agrave; khủng hoảng m&agrave; một người trẻ thường hay gặp phải.&nbsp;</span></div>\r\n<div>\r\n	<span style=\"font-family:comic sans ms,cursive;\">&nbsp; &nbsp;Giống như một tr&iacute;ch đoạn m&agrave; Rosie Nguyễn đ&atilde; chia sẻ trong cuốn s&aacute;ch rằng:</span></div>\r\n<div>\r\n	<span style=\"font-family:comic sans ms,cursive;\">&nbsp; &nbsp;&ldquo;Sau những lần thất bại trong cuộc sống, sau những va vấp của tuổi trẻ, từ bao giờ ch&uacute;ng ta đ&atilde; tự thuyết phục bản th&acirc;n rằng m&igrave;nh l&agrave; một người b&igrave;nh thường, m&igrave;nh kh&ocirc;ng c&oacute; g&igrave; đặc biệt, rằng h&atilde;y th&ocirc;i mơ mộng viển v&ocirc;ng, h&atilde;y chấp nhận sống một cuộc đời b&igrave;nh thường, c&oacute; những c&ocirc;ng việc b&igrave;nh thường. V&agrave; rồi ch&uacute;ng ta chết đi, tr&ecirc;n tấm bia mộ ghi: &lsquo;Đ&acirc;y l&agrave; nơi y&ecirc;n nghỉ của một người ho&agrave;n to&agrave;n b&igrave;nh thường.&#39;&rdquo;</span></div>\r\n<div>\r\n	<span style=\"font-family:comic sans ms,cursive;\">&nbsp; &nbsp;Thay v&igrave; phải tr&aacute;nh n&eacute; v&agrave; sợ h&atilde;i, t&aacute;c giả đ&atilde; truyền th&ecirc;m một sức mạnh cho người trẻ, h&atilde;y d&aacute;m nghĩ d&aacute;m l&agrave;m v&agrave; đương đầu với mọi kh&oacute; khăn, đơn giản v&igrave; đ&oacute; l&agrave; Tuổi trẻ v&agrave; đừng l&atilde;ng ph&iacute; n&oacute;, để rồi sau n&agrave;y phải hối tiếc trong muộn m&agrave;ng.&nbsp;</span></div>\r\n', 'sach6.jpg', 'sach');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `roleId` bigint(20) NOT NULL,
  `rolename` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`roleId`, `rolename`) VALUES
(1, 'USER'),
(2, 'ADMIN');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `username` varchar(255) NOT NULL,
  `accountname` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `userId` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `accountname`, `password`, `userId`) VALUES
('Trâm Anh', 'b@gmail.com', '$2a$10$Y683Ua.rBa2KCzz.YUqdDOcdR/DqPmzPCbPjFhf5CxxuGsbgKYpGm', 2),
('Hà Anh', 'ha@gmail.com', '$2a$10$Icqn6G.9ylbrwMHDNtNnKumCi1KE9G8EN9dweq/AX5JDlvYiAdiki', 3);

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `user_roleId` bigint(20) NOT NULL,
  `roleId` bigint(20) NOT NULL,
  `userId` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`user_roleId`, `roleId`, `userId`) VALUES
(2, 2, 2),
(3, 1, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`commentId`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`roleId`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userId`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`user_roleId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `commentId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `roleId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `user_roleId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
