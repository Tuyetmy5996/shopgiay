-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 02, 2017 lúc 02:35 CH
-- Phiên bản máy phục vụ: 5.7.14
-- Phiên bản PHP: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `shopgiayizo`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `admin_group_id` int(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `name`, `admin_group_id`) VALUES
(10, 'admin', 'e10adc3949ba59abbe56e057f20f883e', 'Phan Xuân Vinh', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `catalog`
--

CREATE TABLE `catalog` (
  `id` int(11) NOT NULL,
  `name` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `site_title` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `meta_desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `meta_key` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `sort_order` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Đang đổ dữ liệu cho bảng `catalog`
--

INSERT INTO `catalog` (`id`, `name`, `site_title`, `meta_desc`, `meta_key`, `parent_id`, `sort_order`) VALUES
(2, 'Giày nữ', '', '', '', 0, 0),
(3, 'Giày nam', '', '', '', 0, 1),
(29, 'Nike', '', '', '', 3, 6),
(30, 'Converse', '', '', '', 2, 0),
(31, 'New Balance', '', '', '', 2, 1),
(32, 'Puma', '', '', '', 2, 2),
(33, 'Vans', '', '', '', 2, 3),
(13, 'Converse', '', '', '', 3, 0),
(14, 'New Balance', '', '', '', 3, 1),
(15, 'Puma', '', '', '', 3, 2),
(16, 'Vans', '', '', '', 3, 3),
(18, 'Adidas', '', '', '', 3, 5),
(36, 'Nike', '', '', '', 2, 6),
(35, 'Adidas', '', '', '', 2, 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contact`
--

CREATE TABLE `contact` (
  `id` int(128) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `created` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `address`, `title`, `content`, `phone`, `created`) VALUES
(17, 'Cao Cầu', 'caocau@gmail.com', 'Bình Định', 'Gửi hàng', 'Mình có mua 1 đôi NIKE vào ngày 20/6 hẹn 24/6 lấy mà đến bây giờ vẫn chưa thấy đâu, mong admin xem lại', '01648462323', 1495638268);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `intro` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `meta_desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `meta_key` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `image_link` varchar(50) COLLATE utf8_bin NOT NULL,
  `created` int(11) NOT NULL DEFAULT '0',
  `feature` enum('0','1') COLLATE utf8_bin NOT NULL,
  `count_view` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`id`, `title`, `intro`, `content`, `meta_desc`, `meta_key`, `image_link`, `created`, `feature`, `count_view`) VALUES
(5, '4 container giày Yeezy 350 V2 bản phối "Cream White" bị đánh cắp ngay trước ngày lên kệ', '', '<h2 class="knc-sapo" style="margin: 0px 0px 20px; padding: 15px 0px 0px; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; font-size: 17px; line-height: 22px; font-family: &quot;Times New Roman&quot;, Georgia, serif; vertical-align: baseline; position: relative; color: rgb(0, 0, 0);">\r\n	Kh&ocirc;ng chỉ tiền hay v&agrave;ng, mẫu sneaker hiếm c&oacute; adidas Yeezy giờ đ&acirc;y cũng đ&atilde; trở th&agrave;nh miếng mồi b&eacute;o bở của hội đạo ch&iacute;ch.</h2>\r\n<p style="margin: 0px 0px 15px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; font-size: 17px; line-height: 25px; font-family: &quot;Times New Roman&quot;, Georgia, serif; vertical-align: baseline; box-sizing: border-box; -webkit-font-smoothing: subpixel-antialiased;">\r\n	<span style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;">Bạn c&oacute; thể ph&aacute; bỏ nguy&ecirc;n tắc của bạn đến đ&acirc;u chỉ v&igrave; 1 đ&ocirc;i gi&agrave;y YEEZY Boost 350 V2? Hy vọng l&agrave; kh&ocirc;ng tới mức như những nh&acirc;n vật trong c&acirc;u chuyện sau đ&acirc;y.</span></p>\r\n<p style="margin: 0px 0px 15px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; font-size: 17px; line-height: 25px; font-family: &quot;Times New Roman&quot;, Georgia, serif; vertical-align: baseline; box-sizing: border-box; -webkit-font-smoothing: subpixel-antialiased;">\r\n	Kh&ocirc;ng chỉ l&agrave; một trong những đ&ocirc;i gi&agrave;y được c&aacute;c t&iacute;n đồ thời trang &quot;th&egrave;m kh&aacute;t&quot; nhất, adidas Yeezy c&ograve;n l&agrave; mẫu sneaker c&oacute; gi&aacute; b&aacute;n lại (resell) cao nhất thị trường. Một đ&ocirc;i Yeezy với gi&aacute; gốc 200 USD ~ 4,5 triệu đồng c&oacute; thể được đẩy l&ecirc;n tận 1.000 USD ~ 22,7 triệu đồng tr&ecirc;n eBay. Do đ&oacute;, kh&ocirc;ng ngạc nhi&ecirc;n khi &quot;em n&oacute;&quot; trở th&agrave;nh mục ti&ecirc;u b&eacute;o bở của đạo ch&iacute;ch.</p>\r\n<p style="margin: 0px 0px 15px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; font-size: 17px; line-height: 25px; font-family: &quot;Times New Roman&quot;, Georgia, serif; vertical-align: baseline; box-sizing: border-box; -webkit-font-smoothing: subpixel-antialiased;">\r\n	<img src="http://kenh14cdn.com/2017/4-1493286627108-1493287240975.jpg" /></p>\r\n<p style="margin: 0px 0px 15px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; font-size: 17px; line-height: 25px; font-family: &quot;Times New Roman&quot;, Georgia, serif; vertical-align: baseline; box-sizing: border-box; -webkit-font-smoothing: subpixel-antialiased;">\r\n	Mới đ&acirc;y, cảnh s&aacute;t Đan Mạch đ&atilde; đang phải k&ecirc;u gọi to&agrave;n bộ d&acirc;n nghiện gi&agrave;y ở đất nước n&agrave;y hỗ trợ truy bắt một nh&oacute;m trộm đ&atilde; cả gan cướp nguy&ecirc;n một xe tải đang tr&ecirc;n đường vận chuyển một l&ocirc; gi&agrave;y Yeezy Boost 350 V2 m&agrave;u &quot;Cream White&quot; nổi tiếng.</p>\r\n<p style="margin: 0px 0px 15px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; font-size: 17px; line-height: 25px; font-family: &quot;Times New Roman&quot;, Georgia, serif; vertical-align: baseline; box-sizing: border-box; -webkit-font-smoothing: subpixel-antialiased;">\r\n	Vụ trộm theo phong c&aacute;ch GTA (một game cướp &ocirc; t&ocirc; rất nổi tiếng) n&agrave;y diễn ra ở Copenhagen, trong l&uacute;c một xe tải đang dỡ h&agrave;ng ở Rezet Store - cửa h&agrave;ng gi&agrave;y nổi tiếng ở thủ đ&ocirc; của Đan Mạch.</p>\r\n<p style="margin: 0px 0px 15px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; font-size: 17px; line-height: 25px; font-family: &quot;Times New Roman&quot;, Georgia, serif; vertical-align: baseline; box-sizing: border-box; -webkit-font-smoothing: subpixel-antialiased;">\r\n	Mặc d&ugrave; cảnh s&aacute;t hiện vẫn chưa x&aacute;c định r&otilde; được lượng gi&agrave;y bị mất, nh&agrave; cung cấp ước t&iacute;nh &iacute;t nhất 4 (!) c&ocirc;ng-ten-nơ đ&atilde; &quot;kh&ocirc;ng c&aacute;nh m&agrave; bay&quot;.</p>\r\n<p style="margin: 0px 0px 15px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; font-size: 17px; line-height: 25px; font-family: &quot;Times New Roman&quot;, Georgia, serif; vertical-align: baseline; box-sizing: border-box; -webkit-font-smoothing: subpixel-antialiased;">\r\n	Đ&acirc;y chắc hẳn l&agrave; một cơn &aacute;c mộng đối với nhiều t&iacute;n đồ Yeezy đang m&oacute;ng ng&oacute;ng mua được bản phối &quot;Cream White&quot; với gi&aacute; gốc tại Rezet Store. Theo lịch, mẫu Yeezy 350 V2 &quot;Cream White&quot; sẽ ch&iacute;nh thức ra mắt v&agrave;o 29/4 tới.</p>\r\n<p style="margin: 0px 0px 15px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; font-size: 17px; line-height: 25px; font-family: &quot;Times New Roman&quot;, Georgia, serif; vertical-align: baseline; box-sizing: border-box; -webkit-font-smoothing: subpixel-antialiased;">\r\n	<span style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;">Vụ việc n&agrave;y khiến nhiều người nhớ lại vụ cướp t&aacute;o tợn đến mức kh&ocirc;ng thể ngờ nhắm v&agrave;o cửa h&agrave;ng Chanel nằm tr&ecirc;n phố Brompton Road, khu vực South Kensington (Anh Quốc) v&agrave;o hồi đầu năm 2016. Bọn cướp đ&atilde; lao thẳng xe v&agrave;o cửa k&iacute;nh cường lực của cửa h&agrave;ng v&agrave; cướp đi nhiều t&uacute;i x&aacute;ch Chanel c&oacute; gi&aacute; trị từ 65 triệu đồng trở l&ecirc;n.&nbsp;</span></p>\r\n<div id="admzone474524" style="margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: &quot;Times New Roman&quot;, Georgia, serif; vertical-align: baseline; box-sizing: border-box;">\r\n	<div id="ads_zone474524" style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;">\r\n		<div id="ads_zone474524_slot1" style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;">\r\n			&nbsp;</div>\r\n	</div>\r\n</div>\r\n<p style="margin: 0px 0px 15px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; font-size: 17px; line-height: 25px; font-family: &quot;Times New Roman&quot;, Georgia, serif; vertical-align: baseline; box-sizing: border-box; -webkit-font-smoothing: subpixel-antialiased;">\r\n	Dẫu vậy, người d&acirc;n Đan Mạch giờ h&atilde;y cứ hy vọng v&igrave; vẫn c&oacute; thể tham gia sự kiện xổ số thắng gi&agrave;y v&agrave; ng&oacute;ng chờ kết quả v&agrave;o thứ bảy, mặc d&ugrave; kết quả n&agrave;y c&oacute; thể bị ảnh hưởng phần n&agrave;o bởi vụ việc vừa xảy ra.</p>\r\n<p style="margin: 0px 0px 15px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; font-size: 17px; line-height: 25px; font-family: &quot;Times New Roman&quot;, Georgia, serif; vertical-align: baseline; box-sizing: border-box; -webkit-font-smoothing: subpixel-antialiased; text-align: right;">\r\n	<i style="margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;">Nguồn:&nbsp;Highsnobiety</i></p>\r\n', '', '', 'yeezy.jpg', 1495550936, '0', 3),
(6, 'David Beckham có đến hơn 1.000 đôi giày, ', '', '<h2 class="knc-sapo" color:="" new="" position:="" style="margin: 0px 0px 20px; padding: 15px 0px 0px; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; font-size: 17px; line-height: 22px; font-family: " times="" vertical-align:="">\r\n	H&oacute;a ra từ trước đến giờ ch&uacute;ng ta đều nhầm hết, cứ ngỡ rằng Vic chịu kh&oacute; mua sắm hơn hẳn đức &ocirc;ng chồng của m&igrave;nh - David Beckham.</h2>\r\n<h1 class="kbwc-title" style="margin: 0px; padding: 0px 50px 0px 0px; border: 0px; font-variant-numeric: inherit; font-weight: inherit; font-stretch: inherit; font-size: 34px; line-height: 38px; font-family: SFD-Bold; vertical-align: baseline;">\r\n	&nbsp;</h1>\r\n<div -webkit-font-smoothing:="" class="knc-content" display:="" new="" position:="" style="margin: 0px 0px 15px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; font-size: 17px; line-height: 25px; font-family: " times="" vertical-align:="" width:="">\r\n	<p style="margin: 0px 0px 15px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: 25px; vertical-align: baseline; box-sizing: border-box; -webkit-font-smoothing: subpixel-antialiased;">\r\n		David Beckham kh&ocirc;ng chỉ l&agrave; &quot;Người đ&agrave;n &ocirc;ng sexy nhất thế giới năm 2015&quot; m&agrave; anh c&ograve;n nhiều lần thống trị c&aacute;c bảng xếp hạng qu&yacute; &ocirc;ng mặc đẹp. Phong c&aacute;ch của anh c&oacute; sự thay đổi linh hoạt theo từng địa điểm. Người ta rất kh&oacute; bắt lỗi thời trang của ng&agrave;i Beck bởi rất hiếm khi anh xuề x&ograve;a trong việc lựa chọn trang phục.</p>\r\n	<p style="margin: 0px 0px 15px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: 25px; vertical-align: baseline; box-sizing: border-box; -webkit-font-smoothing: subpixel-antialiased;">\r\n		Một trong những yếu tố tạo n&ecirc;n độ ho&agrave;n hảo cho mọi trang phục của David Beckham ch&iacute;nh l&agrave; những đ&ocirc;i gi&agrave;y. Lựa chọn gi&agrave;y d&eacute;p ph&ugrave; hợp trang phục lu&ocirc;n l&agrave; b&agrave;i to&aacute;n kh&oacute; nhằn bậc nhất, kh&ocirc;ng chỉ với ph&aacute;i mạnh m&agrave; ngay cả c&aacute;c qu&yacute; c&ocirc; s&agrave;nh điệu cũng hoang mang trường kỳ. Nhưng ri&ecirc;ng với David Beckham th&igrave; c&oacute; vẻ như mọi thứ qu&aacute; dễ d&agrave;ng, bởi trong b&agrave;i phỏng vấn mới nhất, cựu danh thủ tiết lộ anh c&oacute; đến hơn... 1000 đ&ocirc;i gi&agrave;y!</p>\r\n	<p style="margin: 0px 0px 15px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: 25px; vertical-align: baseline; box-sizing: border-box; -webkit-font-smoothing: subpixel-antialiased;">\r\n		<img src="http://kenh14cdn.com/2017/david-beckham-11-1485683129714.jpg" /></p>\r\n	<p style="margin: 0px 0px 15px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; line-height: 25px; vertical-align: baseline; box-sizing: border-box; -webkit-font-smoothing: subpixel-antialiased;">\r\n		Trong số 1.000 đ&ocirc;i gi&agrave;y đ&oacute; c&oacute; đủ loại m&agrave; mọi người đ&agrave;n &ocirc;ng c&oacute; thể h&igrave;nh dung đến: từ những đ&ocirc;i gi&agrave;y da lịch l&atilde;m, gi&agrave;y lười tiện dụng, gi&agrave;y sneaker khỏe khoắn... nhưng nhiều nhất lại l&agrave; loại gi&agrave;y chuy&ecirc;n dụng để đ&aacute; b&oacute;ng. Điều n&agrave;y cũng chẳng mấy ngạc nhi&ecirc;n khi nghiệp t&uacute;c cầu l&agrave; đam m&ecirc; lớn nhất đời của David Beckham.</p>\r\n	<p style="margin: 0px 0px 15px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; line-height: 25px; vertical-align: baseline; box-sizing: border-box; -webkit-font-smoothing: subpixel-antialiased;">\r\n		&Ocirc;ng bố 4 con c&ograve;n tiết lộ rằng, mọi đ&ocirc;i gi&agrave;y đều được anh bảo quản kỹ lưỡng trong những chiếc hộp từ ch&iacute;nh h&atilde;ng. Dựa tr&ecirc;n chi tiết n&agrave;y th&igrave; ắt kh&ocirc;ng gian đựng gi&agrave;y d&eacute;p của David Beckham hẳn phải to như một cửa h&agrave;ng tạp h&oacute;a. Chưa kể, anh c&ograve;n vui vẻ chia sẻ l&agrave; số lượng gi&agrave;y của anh &quot;&aacute;t&quot; hẳn tủ gi&agrave;y của c&ocirc; vợ nổi tiếng - Victoria Beckham.</p>\r\n	<p style="margin: 0px 0px 15px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; line-height: 25px; vertical-align: baseline; box-sizing: border-box; -webkit-font-smoothing: subpixel-antialiased;">\r\n		<img src="http://kenh14cdn.com/2017/david-beckham-9-1485683129711.jpg" /></p>\r\n</div>\r\n<p>\r\n	&nbsp;</p>\r\n', '', '', 'david-beckham.jpg', 1495551562, '0', 2),
(7, 'Vì sao những đôi sneaker sock-like lại "đắt xắt ra miếng"?', '', '<h2 class="knc-sapo" style="margin: 0px 0px 20px; padding: 15px 0px 0px; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; font-size: 17px; line-height: 22px; font-family: &quot;Times New Roman&quot;, Georgia, serif; vertical-align: baseline; position: relative; color: rgb(0, 0, 0);">\r\n	Thiết kế tối giản, liền mạch, kh&ocirc;ng nặng nề như boots hay gi&agrave;y da nhưng vẫn đem lại sự thời trang v&agrave; năng động. D&ugrave; kh&ocirc;ng rẻ nhưng những g&igrave; sneakers sock-like đem lại sẽ khiến bạn cảm thấy rất &quot;đ&aacute;ng đồng tiền b&aacute;t gạo&quot;.</h2>\r\n<div class="knc-content" style="margin: 0px 0px 15px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; font-size: 17px; line-height: 25px; font-family: &quot;Times New Roman&quot;, Georgia, serif; vertical-align: baseline; -webkit-font-smoothing: subpixel-antialiased; position: relative; display: inline-block; width: 650px;">\r\n	<p style="margin: 0px 0px 15px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: 25px; vertical-align: baseline; box-sizing: border-box; -webkit-font-smoothing: subpixel-antialiased;">\r\n		<span style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;">Với những người y&ecirc;u thời trang, y&ecirc;u sự năng động v&agrave; khỏe khoắn n&oacute;i chung th&igrave; sneakers l&agrave; thứ kh&ocirc;ng-thể-kh&ocirc;ng c&oacute; mặt trong tủ đồ.</span></p>\r\n	<p style="margin: 0px 0px 15px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: 25px; vertical-align: baseline; box-sizing: border-box; -webkit-font-smoothing: subpixel-antialiased;">\r\n		Khi ranh giới giữa thời trang đường phố v&agrave; thời trang cao cấp dần bị x&oacute;a nh&ograve;a, cũng kh&ocirc;ng c&ograve;n ti&ecirc;u chuẩn n&agrave;o nhất định cho gi&agrave;y d&eacute;p n&oacute;i chung v&agrave; sneakers n&oacute;i ri&ecirc;ng. Ngoại trừ yếu tố thời trang, bạn c&oacute; thấy mệt mỏi với boots, gi&agrave;y da với h&agrave;ng t&aacute; lỗ xỏ d&acirc;y, mang v&agrave;o hay th&aacute;o ra rất bất tiện? Hơn nữa l&agrave; chất liệu truyền thống thường đem đến cảm gi&aacute;c hầm, b&iacute; ch&acirc;n?</p>\r\n	<p style="margin: 0px 0px 15px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; line-height: 25px; vertical-align: baseline; box-sizing: border-box; -webkit-font-smoothing: subpixel-antialiased;">\r\n		Chỉ chung những đ&ocirc;i sneakers với th&acirc;n gi&agrave;y (upper) chỉ với một chất liệu duy nhất. Ng&ocirc;n ngữ thiết kế tối giản, liền mạch v&agrave; hạn chế tối đa đường kim mũi chỉ. Chất liệu thường thấy l&agrave; sợi dệt theo những kết cấu mỏng nhẹ, đơn giản như một đ&ocirc;i tất &ocirc;m s&aacute;t lấy b&agrave;n ch&acirc;n, đem lại cho b&agrave;n ch&acirc;n sự tho&aacute;ng kh&iacute;, linh hoạt tối ưu.</p>\r\n	<p style="margin: 0px 0px 15px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; line-height: 25px; vertical-align: baseline; box-sizing: border-box; -webkit-font-smoothing: subpixel-antialiased;">\r\n		<b style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;">V&igrave; sao n&ecirc;n sắm ngay một đ&ocirc;i sneakers sock-like để mang h&agrave;ng ng&agrave;y?</b></p>\r\n	<p style="margin: 0px 0px 15px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; line-height: 25px; vertical-align: baseline; box-sizing: border-box; -webkit-font-smoothing: subpixel-antialiased;">\r\n		Ch&uacute;ng rất nhẹ, c&oacute; thể nhẹ hơn sneakers th&ocirc;ng thường từ 30-50%, b&agrave;n ch&acirc;n của bạn sẽ bớt được cơ số g&aacute;nh nặng. Đem lại cảm gi&aacute;c kh&aacute; chắc chắn cho b&agrave;n ch&acirc;n nhưng vẫn thoải m&aacute;i v&agrave; năng động. Qu&aacute; tr&igrave;nh mang v&agrave;o hay th&aacute;o những đ&ocirc;i sneakers sock-like ch&iacute;nh x&aacute;c như bạn đi tất, rất nhanh gọn. Cuối c&ugrave;ng, nhờ thiết kế tối giản n&ecirc;n hầu như ai cũng c&oacute; thể đi được hay rất dễ d&agrave;ng kết hợp với nhiều trang phục kh&aacute;c nhau.</p>\r\n	<p style="margin: 0px 0px 15px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; line-height: 25px; vertical-align: baseline; box-sizing: border-box; -webkit-font-smoothing: subpixel-antialiased;">\r\n		<img alt="Vì sao những đôi sneaker sock-like lại đắt xắt ra miếng? - Ảnh 2." src="http://kenh14cdn.com/thumb_w/650/2017/1b-1487609481127.jpg" /></p>\r\n	<p style="margin: 0px 0px 15px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; line-height: 25px; vertical-align: baseline; box-sizing: border-box; -webkit-font-smoothing: subpixel-antialiased;">\r\n		&nbsp;</p>\r\n</div>\r\n<p>\r\n	&nbsp;</p>\r\n', '', '', '1a-1487609481126.jpg', 1495633056, '0', 1),
(8, 'Muốn mix đồ vừa điệu vừa chất, các nàng "bánh bèo" nên mua giày buộc nơ ngay và luôn', '', '<h2 class="knc-sapo" style="margin: 0px 0px 20px; padding: 15px 0px 0px; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; font-size: 17px; line-height: 22px; font-family: &quot;Times New Roman&quot;, Georgia, serif; vertical-align: baseline; position: relative; color: rgb(0, 0, 0);">\r\n	Vừa bắt mắt, tiện lợi lại ph&aacute; c&aacute;ch, những mẫu gi&agrave;y mới toanh n&agrave;y chắc chắn sẽ gi&uacute;p bạn nổi bần bật giữa phố đấy.</h2>\r\n<div data-check-position="body_start" style="margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; font-size: medium; line-height: inherit; font-family: Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0);">\r\n	&nbsp;</div>\r\n<div class="knc-content" style="margin: 0px 0px 15px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; font-size: 17px; line-height: 25px; font-family: &quot;Times New Roman&quot;, Georgia, serif; vertical-align: baseline; -webkit-font-smoothing: subpixel-antialiased; position: relative; display: inline-block; width: 650px;">\r\n	<p style="margin: 0px 0px 15px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: 25px; vertical-align: baseline; box-sizing: border-box; -webkit-font-smoothing: subpixel-antialiased;">\r\n		Nhiều người vẫn lu&ocirc;n c&oacute; suy nghĩ rằng gi&agrave;y thể thao chỉ d&agrave;nh cho những c&ocirc; g&aacute;i c&aacute; t&iacute;nh, c&oacute; phong c&aacute;ch khỏe khoắn chứ kh&ocirc;ng phải sinh ra để d&agrave;nh cho mấy n&agrave;ng b&aacute;nh b&egrave;o. Thế nhưng, với sự s&aacute;ng tạo v&agrave; tinh tế, c&aacute;c thương hiệu thời trang vẫn kh&ocirc;ng ngừng đổi mới v&agrave; cho ra đời mẫu gi&agrave;y buộc nơ vừa điệu đ&agrave; nhưng phảng phất n&eacute;t c&aacute; t&iacute;nh. M&agrave; điển h&igrave;nh l&agrave; mẫu gi&agrave;y hồng buộc nơ đến từ bộ sưu tập Fenty x Puma của Rihanna, hợp t&aacute;c c&ugrave;ng thương hiệu đồ thể thao đ&igrave;nh đ&aacute;m n&agrave;y.</p>\r\n	<p style="margin: 0px 0px 15px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: 25px; vertical-align: baseline; box-sizing: border-box; -webkit-font-smoothing: subpixel-antialiased;">\r\n		D&ugrave; chỉ xuất hiện trong thời gian ngắn nhưng mẫu gi&agrave;y buộc nơ dường như đ&atilde; tạo th&agrave;nh cơn sốt v&agrave; trở th&agrave;nh tr&agrave;o lưu m&agrave; mọi t&iacute;n đồ thời trang tr&ecirc;n thế giới mải miết theo đuổi. Thừa thắng x&ocirc;ng l&ecirc;n, h&agrave;ng loạt thương hiệu từ b&igrave;nh d&acirc;n tới cao cấp kh&aacute;c cũng theo ch&acirc;n Puma, ra mắt nhiều mẫu gi&agrave;y buộc nơ th&uacute; vị.</p>\r\n	<p style="margin: 0px 0px 15px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: 25px; vertical-align: baseline; box-sizing: border-box; -webkit-font-smoothing: subpixel-antialiased;">\r\n		<img alt="Muốn mix đồ vừa điệu vừa chất, các nàng bánh bèo nên mua giày buộc nơ ngay và luôn - Ảnh 8." src="http://kenh14cdn.com/thumb_w/650/2017/g3-1491381725540.jpg" /></p>\r\n</div>\r\n<p>\r\n	<span style="font-family: &quot;Times New Roman&quot;, Georgia, serif; font-size: 17px;">Từ gi&agrave;y lười (slip on) cho tới sneaker buộc d&acirc;y th&ocirc;ng thường đều được nhiều thương hiệu cải bi&ecirc;n theo phong c&aacute;ch ho&agrave;n to&agrave;n mới. Kh&ocirc;ng chỉ c&oacute; h&igrave;nh d&aacute;ng mới lạ, mẫu gi&agrave;y n&agrave;y c&ograve;n hợp với nhiều kiểu &aacute;o ph&ocirc;ng, quần culottes hay thậm ch&iacute; l&agrave; v&aacute;y liền, v&aacute;y midi d&agrave;i ngang bắp ch&acirc;n.</span></p>\r\n<p>\r\n	<span style="font-family: &quot;Times New Roman&quot;, Georgia, serif; font-size: 17px;">Với những c&ocirc; n&agrave;ng e d&egrave;, ngại đột ph&aacute; th&igrave; mẫu gi&agrave;y nơ đơn giản, v&iacute; dụ như mẫu Puma Basket Heart dưới đ&acirc;y ch&iacute;nh l&agrave; lựa chọn an to&agrave;n. Ngược lại, mẫu gi&agrave;y với phần nơ được c&aacute;ch điệu, to bản lại hợp với những ai th&iacute;ch đột ph&aacute; v&agrave; nổi bật giữa đ&aacute;m đ&ocirc;ng. Th&ocirc;ng thường, c&aacute;c thương hiệu b&igrave;nh d&acirc;n như Zara, Pull &amp; Bear, H&amp;M chỉ c&oacute; gi&agrave;y m&agrave;u trắng, đen, be, hồng pastel cơ bản. V&igrave; thế, nếu muốn mua gi&agrave;y m&agrave;u xanh navy, xanh r&ecirc;u hay hồng neon độc đ&aacute;o, bạn c&oacute; thể tham khảo c&aacute;c sản phẩm của Puma hay cao cấp hơn l&agrave; Joshua Sanders v&agrave; Ports 1961.</span></p>\r\n<p>\r\n	<img alt="Muốn mix đồ vừa điệu vừa chất, các nàng bánh bèo nên mua giày buộc nơ ngay và luôn - Ảnh 9." src="http://kenh14cdn.com/thumb_w/650/2017/g1-1491381735884.jpg" /></p>\r\n<p>\r\n	<span style="font-family: &quot;Times New Roman&quot;, Georgia, serif; font-size: 17px;">B&ecirc;n cạnh những mẫu gi&agrave;y vải, gi&agrave;y da lộn th&ocirc;ng thường, bạn cũng c&oacute; thể chọn gi&agrave;y da b&oacute;ng dễ lau ch&ugrave;i v&agrave; bảo quản. T&ugrave;y v&agrave;o nhu cầu sử dụng v&agrave; điều kiện của m&ocirc;i trường xung quanh, bạn c&oacute; thể c&acirc;n nhắc lựa chọn chất liệu ph&ugrave; hợp. Ngo&agrave;i ra, để c&oacute; thể khoe được hết n&eacute;t th&uacute; vị tr&ecirc;n gi&agrave;y, bạn h&atilde;y mặc quần/v&aacute;y tr&ecirc;n mắt c&aacute; ch&acirc;n nh&eacute;.</span></p>\r\n', '', '', 'g4-1491381714693.png', 1495633195, '0', 6),
(9, 'Sau "dép lau nhà", Zara lại ra đôi dép nhựa hoa đỏ order về thể nào cũng khóc thét', '', '<h2 class="knc-sapo" style="margin: 0px 0px 20px; padding: 15px 0px 0px; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; font-size: 17px; line-height: 22px; font-family: &quot;Times New Roman&quot;, Georgia, serif; vertical-align: baseline; position: relative; color: rgb(0, 0, 0);">\r\n	V&agrave; c&aacute;i hay hớm l&agrave; đ&ocirc;i Zara n&agrave;y c&oacute; gi&aacute; gần bạc triệu chứ &iacute;t ỏi g&igrave; cho cam!</h2>\r\n<div data-check-position="body_start" style="margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; font-size: medium; line-height: inherit; font-family: Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0);">\r\n	&nbsp;</div>\r\n<div class="knc-content" style="margin: 0px 0px 15px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; font-size: 17px; line-height: 25px; font-family: &quot;Times New Roman&quot;, Georgia, serif; vertical-align: baseline; -webkit-font-smoothing: subpixel-antialiased; position: relative; display: inline-block; width: 650px;">\r\n	<p style="margin: 0px 0px 15px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: 25px; vertical-align: baseline; box-sizing: border-box; -webkit-font-smoothing: subpixel-antialiased;">\r\n		L&agrave; thương hiệu thời trang b&igrave;nh d&acirc;n h&agrave;ng đầu thế giới, Zara lu&ocirc;n biết c&aacute;ch chiều l&ograve;ng giới mộ điệu trong mọi khoản. Quần &aacute;o, gi&agrave;y d&eacute;p, t&uacute;i x&aacute;ch... c&oacute; cả một thế giới mang t&ecirc;n Zara khiến ch&uacute;ng ta đắm ch&igrave;m kh&ocirc;ng dứt.</p>\r\n	<p style="margin: 0px 0px 15px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: 25px; vertical-align: baseline; box-sizing: border-box; -webkit-font-smoothing: subpixel-antialiased;">\r\n		Thế nhưng cũng c&oacute; đ&ocirc;i khi, Zara khiến ch&uacute;ng ta phải tỉnh giấc bởi những sản phẩm m&agrave; ngo&agrave;i từ &quot;xấu&quot; hay &quot;dị&quot; ra th&igrave; kh&oacute; c&oacute; t&iacute;nh từ n&agrave;o chuẩn x&aacute;c hơn. Mới tuần trước thương hiệu T&acirc;y Ban Nha c&ograve;n khiến kh&aacute;ch h&agrave;ng hốt hoảng với đ&ocirc;i&nbsp;<a class="link-inline-content" href="http://kenh14.vn/doi-zara-gie-lau-chac-chan-la-doi-dep-hot-nhat-hom-nay-gio-den-ha-ho-cung-dang-dien-no-20170302162611723.chn" style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-decoration-line: none; box-sizing: border-box;" target="_blank" title="dép lau nhà">&quot;d&eacute;p lau nh&agrave;&quot;</a>&nbsp;th&igrave; tuần n&agrave;y, một m&oacute;n thời trang xuất sắc kh&ocirc;ng k&eacute;m đ&atilde; xuất hiện.</p>\r\n	<p style="margin: 0px 0px 15px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: 25px; vertical-align: baseline; box-sizing: border-box; -webkit-font-smoothing: subpixel-antialiased;">\r\n		Đ&ocirc;i n&agrave;y, nếu theo thuật ngữ miền Bắc th&igrave; từa tựa như h&agrave;ng thửa từ chợ Đồng Xu&acirc;n. C&ograve;n miền Nam, để gần gũi hơn th&igrave; n&ecirc;n lấy v&iacute; dụ l&agrave; chợ B&agrave; Chiểu hay chợ Kim Bi&ecirc;n. Đại để l&agrave; tr&ocirc;ng n&oacute; rất &quot;chợ&quot;, chẳng kh&aacute;c g&igrave; mấy đ&ocirc;i m&agrave; c&aacute;c chị em b&aacute;n h&agrave;ng rong mang tr&ecirc;n m&igrave;nh khắp mọi nẻo đường.</p>\r\n	<p style="margin: 0px 0px 15px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: 25px; vertical-align: baseline; box-sizing: border-box; -webkit-font-smoothing: subpixel-antialiased;">\r\n		<img alt="Sau dép lau nhà, Zara lại ra đôi dép nhựa hoa đỏ order về thể nào cũng khóc thét - Ảnh 7." src="http://kenh14cdn.com/thumb_w/650/2017/img-2344-1489302764045.jpg" /></p>\r\n</div>\r\n<p>\r\n	&nbsp;</p>\r\n', '', '', '3682201020-2-4-1-1489303401847.jpg', 1495633298, '0', 6),
(10, 'Thủ phạm lấy cắp hơn 800 đôi giày ở cửa hàng Nike Outlet ở Portland đã bị bắt', '', '<p>\r\n	<span style="color: rgb(51, 51, 50); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 17px;">T&igrave;m thấy những c&uacute; &ldquo;steal&rdquo; (mua được h&agrave;ng ngon gi&aacute; rẻ b&egrave;o) trong c&aacute;c Nike Outlet kh&ocirc;ng c&oacute; g&igrave; l&agrave; đặc biệt. Song, một người đ&agrave;n &ocirc;ng 52 tuổi &ndash; Kelvin Torain Millage cũng đ&atilde; thử vận may của m&igrave;nh xem liệu &ocirc;ng c&oacute; thể hốt được bao nhi&ecirc;u &ldquo;steal deal&rdquo; m&agrave; kh&ocirc;ng phải tốn đồng n&agrave;o.</span></p>\r\n<p>\r\n	<img src="https://i0.wp.com/hnbmg.com/wp-content/uploads/2017/05/P1_FST_Desktop_1600x600_Carousel_Slide-3.jpg?resize=1600%2C600" /></p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 20px; line-height: 1.8em; color: rgb(51, 51, 50); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 17px;">\r\n	Theo KRON 4, Kelvin Torain Millage đ&atilde; bị tố c&aacute;o trộm cắp, chiếm đoạt t&agrave;i sản &ndash; với số lượng gần 800 đ&ocirc;i gi&agrave;y, tổng gi&aacute; trị l&ecirc;n &nbsp;đến $5000. Millage khi bị bắt đ&atilde; khai nhận về h&agrave;nh vi phạm ph&aacute;p của m&igrave;nh v&agrave; số tiền thu được từ việc trộm cắp &ocirc;ng đ&atilde; d&ugrave;ng để mua ma t&uacute;y.</p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 20px; line-height: 1.8em; color: rgb(51, 51, 50); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 17px;">\r\n	<img alt="" class="alignnone size-full wp-image-37128" height="366" src="https://i1.wp.com/hnbmg.com/wp-content/uploads/2017/05/portland-felon.jpg?resize=650%2C366" style="box-sizing: border-box; border: 0px; vertical-align: middle; margin: 10px 0px; max-width: 100%; height: auto;" width="650" /></p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 20px; line-height: 1.8em; color: rgb(51, 51, 50); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 17px;">\r\n	H&agrave;nh vi k&igrave; quặc của Millage bị camera của cửa h&agrave;ng ghi h&igrave;nh lại. Ng&agrave;y khi ph&aacute;t gi&aacute;c, lệnh bắt giữ được triển khai. Theo th&ocirc;ng tin ghi nhận, khi bị bắt, cảnh s&aacute;t ph&aacute;t hiện 3 t&eacute;p heroin c&oacute; tr&ecirc;n người Millage.</p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 20px; line-height: 1.8em; color: rgb(51, 51, 50); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 17px;">\r\n	Đ&acirc;y kh&ocirc;ng phải lần đầu ti&ecirc;n Millage phạm ph&aacute;p, theo th&ocirc;ng tin từ t&ograve;a &aacute;n, Millage c&oacute; d&iacute;nh l&iacute;u đến c&aacute;c vụ trộm sau, với tổng gi&aacute; trị tăng dần:</p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 20px; line-height: 1.8em; color: rgb(51, 51, 50); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 17px;">\r\n	Ng&agrave;y 27/3 &ndash; tổng gi&aacute; trị t&agrave;i sản bị mất l&agrave;&nbsp;$350</p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 20px; line-height: 1.8em; color: rgb(51, 51, 50); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 17px;">\r\n	Ng&agrave;y 3/4 &ndash; tổng gi&aacute; trị t&agrave;i sản bị mất l&agrave; $1,200</p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 20px; line-height: 1.8em; color: rgb(51, 51, 50); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 17px;">\r\n	Ng&agrave;y 4/4 &ndash; tổng gi&aacute; trị t&agrave;i sản bị mất l&agrave; $1,500</p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 20px; line-height: 1.8em; color: rgb(51, 51, 50); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 17px;">\r\n	Ng&agrave;y 5/6 &ndash; tổng gi&aacute; trị t&agrave;i sản bị mất l&agrave; $2,425</p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 20px; line-height: 1.8em; color: rgb(51, 51, 50); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 17px;">\r\n	To&agrave;n bộ t&agrave;i sản bị mất trộm đều l&agrave; gi&agrave;y.</p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 20px; line-height: 1.8em; color: rgb(51, 51, 50); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 17px;">\r\n	Kh&ocirc;ng c&oacute; bất k&igrave; th&ocirc;ng tin n&agrave;o về c&aacute;ch thức m&agrave; Millage đ&atilde; d&ugrave;ng để bước ra khỏi tiệm an to&agrave;n m&agrave; kh&ocirc;ng bị bảo vệ của cửa h&agrave;ng ph&aacute;t hiện. Hồ sơ của Millage cũng kh&aacute; &ldquo;dữ dằn&rdquo; khi phạm ph&aacute;p lần đầu năm 13 tuổi, cũng như c&oacute; tiền &aacute;n tiền sự gồm 23 tội nặng, 22 tội nhẹ v&agrave; 21 &aacute;n t&ugrave; treo, hầu hết đều c&oacute; li&ecirc;n quan đến c&aacute;c loại ma t&uacute;y. Hiện Millage đang bị tạm giam v&agrave; sẽ phải quay trở lại t&ograve;a &aacute;n để x&eacute;t xử v&agrave;o cuối th&aacute;ng n&agrave;y.</p>\r\n', '', '', 'portland-felon.jpg', 1495633411, '0', 1),
(11, 'Phối màu Camo thứ ba của adidas NMD đã xuất hiện', '', '<h1 class="title header-color-change-point" style="box-sizing: border-box; font-size: 36px; margin: 0px 0px 15px; font-family: &quot;Source Sans Pro HB&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif, &quot;Microsoft Yahei&quot;; line-height: 1.2em; color: rgb(0, 0, 0); padding: 0px; height: auto;">\r\n	<span style="box-sizing: border-box;">Phối m&agrave;u Camo thứ ba của adidas NMD đ&atilde; xuất hiện</span></h1>\r\n<p>\r\n	<span style="color: rgb(51, 51, 50); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 17px;">Tiếp tục tiến những bước d&agrave;i, adidas NMD vẫn chưa cho thấy ch&uacute;ng hết hot, &iacute;t nhất l&agrave; trong tương lai gần.&nbsp;Trong v&ograve;ng 1 ng&agrave;y h&ocirc;m qua đ&atilde; c&oacute; 3 phối m&agrave;u với chủ đề Camo được leak ra d&agrave;nh cho adias NMD, lần lượt l&agrave; Red (release ng&agrave;y 23/3) Olive (23/3) v&agrave; đ&acirc;y l&agrave; phối m&agrave;u thứ 3 Trắng-Kem với ng&agrave;y release chưa x&aacute;c định r&otilde;, nhưng c&oacute; thể tr&ocirc;ng đợi n&oacute; xuất hiện c&ugrave;ng l&uacute;c với 2 phối m&agrave;u c&ograve;n lại, với mức gi&aacute; retail cho cả 3 l&agrave; $170 tại c&aacute;c cửa h&agrave;ng của adidas tr&ecirc;n thế giới cũng như webstore của h&atilde;ng. Kh&aacute; fresh với m&agrave;u trắng x&aacute;m tr&ecirc;n upper, ph&aacute;t h&agrave;nh n&agrave;y đi k&egrave;m với 2 chi tiết hỗ trợ b&agrave;n ch&acirc;n m&agrave;u trắng ng&agrave; đơn giản. Kh&ocirc;ng n&ecirc;n qu&aacute; mong chờ v&agrave;o độ hype của c&aacute;c phi&ecirc;n bản&nbsp;adidas NMD, khi việc restock sẽ li&ecirc;n tục xảy ra cho đến khi mọi người ai cũng sở hữu cho m&igrave;nh (ch&iacute; &iacute;t l&agrave;) một đ&ocirc;i NMD</span><img alt="adidas-nmd-white-black-camo-5_o3svkx" class="size-full wp-image-24757 aligncenter" height="502" src="https://i0.wp.com/hnbmg.com/wp-content/uploads/2016/03/adidas-nmd-white-black-camo-5_o3svkx.jpg?resize=800%2C502" style="box-sizing: border-box; border: 0px; vertical-align: middle; margin: 10px 0px; max-width: 100%; height: auto; color: rgb(51, 51, 50); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 17px;" width="800" /><span style="color: rgb(51, 51, 50); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 17px;">&nbsp;</span><img alt="adidas-nmd-white-black-camo-4_o3svkn" class="size-full wp-image-24756 aligncenter" height="496" src="https://i2.wp.com/hnbmg.com/wp-content/uploads/2016/03/adidas-nmd-white-black-camo-4_o3svkn.jpg?resize=800%2C496" style="box-sizing: border-box; border: 0px; vertical-align: middle; margin: 10px 0px; max-width: 100%; height: auto; color: rgb(51, 51, 50); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 17px;" width="800" /><span style="color: rgb(51, 51, 50); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 17px;">&nbsp;</span><img alt="adidas-nmd-white-black-camo-2_o3svk3" class="size-full wp-image-24755 aligncenter" height="956" src="https://i0.wp.com/hnbmg.com/wp-content/uploads/2016/03/adidas-nmd-white-black-camo-2_o3svk3.jpg?resize=800%2C956" style="box-sizing: border-box; border: 0px; vertical-align: middle; margin: 10px 0px; max-width: 100%; height: auto; color: rgb(51, 51, 50); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 17px;" width="800" /><span style="color: rgb(51, 51, 50); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 17px;">&nbsp;</span><img alt="adidas-nmd-white-black-camo_y8crla" class="size-full wp-image-24754 aligncenter" height="407" src="https://i0.wp.com/hnbmg.com/wp-content/uploads/2016/03/adidas-nmd-white-black-camo_y8crla.jpg?resize=800%2C407" style="box-sizing: border-box; border: 0px; vertical-align: middle; margin: 10px 0px; max-width: 100%; height: auto; color: rgb(51, 51, 50); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 17px;" width="800" /><span style="color: rgb(51, 51, 50); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 17px;">&nbsp;</span><img alt="adidas-nmd-r1-olive-camo-3_o3qr3n" class="size-full wp-image-24753 aligncenter" height="451" src="https://i1.wp.com/hnbmg.com/wp-content/uploads/2016/03/adidas-nmd-r1-olive-camo-3_o3qr3n.jpg?resize=800%2C451" style="box-sizing: border-box; border: 0px; vertical-align: middle; margin: 10px 0px; max-width: 100%; height: auto; color: rgb(51, 51, 50); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 17px;" width="800" /><span style="color: rgb(51, 51, 50); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 17px;">&nbsp;</span><img alt="adidas-nmd-r1-olive-camo-2_o3qr4b" class="size-full wp-image-24752 aligncenter" height="451" src="https://i2.wp.com/hnbmg.com/wp-content/uploads/2016/03/adidas-nmd-r1-olive-camo-2_o3qr4b.jpg?resize=800%2C451" style="box-sizing: border-box; border: 0px; vertical-align: middle; margin: 10px 0px; max-width: 100%; height: auto; color: rgb(51, 51, 50); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 17px;" width="800" /><span style="color: rgb(51, 51, 50); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 17px;">&nbsp;</span><img alt="adidas-nmd-r1-olive-camo-1_uychbg" class="size-full wp-image-24751 aligncenter" height="451" src="https://i2.wp.com/hnbmg.com/wp-content/uploads/2016/03/adidas-nmd-r1-olive-camo-1_uychbg.jpg?resize=800%2C451" style="box-sizing: border-box; border: 0px; vertical-align: middle; margin: 10px 0px; max-width: 100%; height: auto; color: rgb(51, 51, 50); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 17px;" width="800" /><img alt="adidas-nmd-white-red-orange-camo-01_o3qhhi" class="size-full wp-image-24758 aligncenter" height="431" src="https://i2.wp.com/hnbmg.com/wp-content/uploads/2016/03/adidas-nmd-white-red-orange-camo-01_o3qhhi.jpg?resize=800%2C431" style="box-sizing: border-box; border: 0px; vertical-align: middle; margin: 10px 0px; max-width: 100%; height: auto; color: rgb(51, 51, 50); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 17px;" width="800" /><span style="color: rgb(51, 51, 50); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 17px;">&nbsp;</span><img alt="adidas-nmd-white-red-orange-camo-02_o3qhhq" class="size-large wp-image-24759 aligncenter" height="426" src="https://i0.wp.com/hnbmg.com/wp-content/uploads/2016/03/adidas-nmd-white-red-orange-camo-02_o3qhhq.jpg?resize=800%2C426" style="box-sizing: border-box; border: 0px; vertical-align: middle; margin: 10px 0px; max-width: 100%; height: auto; color: rgb(51, 51, 50); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 17px;" width="800" /></p>\r\n', '', '', 'adidas-nmd-white-black-camo-5_o3svkx.jpg', 1495633463, '0', 3),
(12, 'KD10 chính thức được Nike tung ra', '', '<h1 class="title header-color-change-point" color:="" height:="" helvetica="" line-height:="" microsoft="" padding:="" pro="" sans="" source="" style="box-sizing: border-box; font-size: 36px; margin: 0px 0px 15px; font-family: ">\r\n	<span style="box-sizing: border-box;">KD10 ch&iacute;nh thức được Nike tung ra</span></h1>\r\n<p>\r\n	<span font-size:="" helvetica="" style="color: rgb(51, 51, 50); font-family: ">Ch&iacute;nh tại thời điểm n&agrave;y 10 năm trước, Kevin Durant đ&atilde; k&iacute; hợp đồng đại diện với Nike v&agrave; ngay lập tức nhận được thiết kế Signature đầu ti&ecirc;n &ndash; mẫu Nike KD1. Trải qua hơn 9 năm thi đấu, c&ugrave;ng với sự th&agrave;nh c&ocirc;ng, thăng trầm trong từng m&ugrave;a giải, Kevin Durant xuất hiện với 9 thiết kế signature trong từng h&igrave;nh h&agrave;i kh&aacute;c nhau. V&agrave; h&ocirc;m nay, nh&agrave; thiết kế Leo Chang c&ugrave;ng với ch&iacute;nh Kevin Durant đ&atilde; giới thiệu thiết kế thứ 10 trong series Nike KD.</span></p>\r\n<p>\r\n	<span font-size:="" helvetica="" style="color: rgb(51, 51, 50); font-family: ">Những điểm nhấn nổi bật của phi&ecirc;n bản n&agrave;y nằm ở chất liệu Flyknit được cải tiến. Đ&acirc;y l&agrave; loại chất liệu m&agrave; Kevin Durant rất muốn đưa l&ecirc;n loạt sản phẩm của m&igrave;nh trong nhiều năm trước.</span></p>\r\n<p font-size:="" helvetica="" style="box-sizing: border-box; margin: 0px 0px 20px; line-height: 1.8em; color: rgb(51, 51, 50); font-family: ">\r\n	<img alt="" class="alignnone size-full wp-image-36939" height="505" sizes="(max-width: 1000px) 100vw, 1000px" src="https://i0.wp.com/hnbmg.com/wp-content/uploads/2017/05/nike-kd-10-sketch.jpg?resize=1200%2C722" srcset="https://i0.wp.com/hnbmg.com/wp-content/uploads/2017/05/nike-kd-10-sketch.jpg?w=1200 1200w, https://i0.wp.com/hnbmg.com/wp-content/uploads/2017/05/nike-kd-10-sketch.jpg?resize=768%2C462 768w, https://i0.wp.com/hnbmg.com/wp-content/uploads/2017/05/nike-kd-10-sketch.jpg?resize=1024%2C616 1024w" style="box-sizing: border-box; border: 0px; vertical-align: middle; margin: 10px 0px; max-width: 100%; height: auto;" width="840" /></p>\r\n<p font-size:="" helvetica="" style="box-sizing: border-box; margin: 0px 0px 20px; line-height: 1.8em; color: rgb(51, 51, 50); font-family: ">\r\n	Durant l&agrave; một fan h&acirc;m mộ của loại chất liệu Flyknit. Anh cho biết khi nhận được đ&ocirc;i Flyknit Racer đầu ti&ecirc;n v&agrave;o năm 2012, đ&ocirc;i gi&agrave;y ngay lập tức trở th&agrave;nh lựa chọn off-court số 1 cho Durant.&nbsp;<em style="box-sizing: border-box;">&ldquo;Đ&ocirc;i gi&agrave;y thật ho&agrave;n hảo, tr&ocirc;ng n&oacute; rất&nbsp;phong c&aacute;ch, hiện đại v&agrave; kh&aacute; thoải m&aacute;i,&rdquo;</em>&nbsp;&ndash; Durant chia sẻ. Kể từ đ&oacute; Durant lu&ocirc;n y&ecirc;u cầu c&aacute;c thiết kế của anh phải sở hữu chất liệu Flyknit, v&agrave; Durant cho biết anh rất h&agrave;i l&ograve;ng với thiết kế KD10 n&agrave;y.</p>\r\n<p font-size:="" helvetica="" style="box-sizing: border-box; margin: 0px 0px 20px; line-height: 1.8em; color: rgb(51, 51, 50); font-family: ">\r\n	<em style="box-sizing: border-box;">&ldquo;I got a pair of the Flyknit Racer during the 2012 games in London and immediately loved them. That shoe is so stylish, so innovative and so comfortable. I&rsquo;ve been asking for Flyknit in my shoe and the KD10 is my best shoe yet,&rdquo;</em></p>\r\n<p font-size:="" helvetica="" style="box-sizing: border-box; margin: 0px 0px 20px; line-height: 1.8em; color: rgb(51, 51, 50); font-family: ">\r\n	Chuyển tải hầu như nguy&ecirc;n bản bộ đệm Zoom Air v&agrave; hệ thống xỏ d&acirc;y độc đ&aacute;o với d&acirc;y gi&agrave;y c&oacute; k&iacute;ch thước to, Durant trực tiếp n&oacute;i về thiết kế d&acirc;y gi&agrave;y to:&nbsp;<em style="box-sizing: border-box;">&ldquo;D&acirc;y gi&agrave;y kh&aacute; to v&agrave; nổi bật, c&oacute; thể nhận biết được đ&oacute; l&agrave; gi&agrave;y của t&ocirc;i từ xa. Đ&acirc;y cũng l&agrave; yếu tố m&agrave; t&ocirc;i v&agrave; Leo đ&atilde; thảo luận trong suốt qu&aacute; tr&igrave;nh thiết kế. Ch&igrave;a kh&oacute;a của thiết kế n&agrave;y ch&iacute;nh l&agrave; chất liệu Flyknit cải tiến v&agrave; d&acirc;y gi&agrave;y với k&iacute;ch thước lớn,&rdquo;.</em></p>\r\n<p font-size:="" helvetica="" style="box-sizing: border-box; margin: 0px 0px 20px; line-height: 1.8em; color: rgb(51, 51, 50); font-family: ">\r\n	<em style="box-sizing: border-box;">&ldquo;They are big and stand out from a mile away. It is one element Leo and I talk about when working designs&mdash;one thing that goes under the radar is the laces. To have Flyknit and a unique lacing pattern was key for us.&rdquo;</em></p>\r\n<p font-size:="" helvetica="" style="box-sizing: border-box; margin: 0px 0px 20px; line-height: 1.8em; color: rgb(51, 51, 50); font-family: ">\r\n	Được giới thiệu trong lần ra mắt l&agrave; phối m&agrave;u mang t&ecirc;n Anniversary. Sở hữu một m&agrave;u xanh mint dịu nhẹ kết hợp với logo Swoosh multi-color, phối m&agrave;u n&agrave;y được giới thiệu l&agrave; lấy cảm hứng từ tất cả những đội b&oacute;ng m&agrave; Kevin Durant đ&atilde; từng thi đấu kể từ thời đại học cho đến nay.</p>\r\n<p font-size:="" helvetica="" style="box-sizing: border-box; margin: 0px 0px 20px; line-height: 1.8em; color: rgb(51, 51, 50); font-family: ">\r\n	<img alt="" class="alignnone size-full wp-image-36934" height="646" sizes="(max-width: 1000px) 100vw, 1000px" src="https://i0.wp.com/hnbmg.com/wp-content/uploads/2017/05/nike-kd-10-anniversary-release-date-1.jpg?resize=1200%2C922" srcset="https://i0.wp.com/hnbmg.com/wp-content/uploads/2017/05/nike-kd-10-anniversary-release-date-1.jpg?w=1200 1200w, https://i0.wp.com/hnbmg.com/wp-content/uploads/2017/05/nike-kd-10-anniversary-release-date-1.jpg?resize=768%2C590 768w, https://i0.wp.com/hnbmg.com/wp-content/uploads/2017/05/nike-kd-10-anniversary-release-date-1.jpg?resize=1024%2C787 1024w" style="box-sizing: border-box; border: 0px; vertical-align: middle; margin: 10px 0px; max-width: 100%; height: auto;" width="840" /><img alt="" class="alignnone size-full wp-image-36938" height="485" sizes="(max-width: 1000px) 100vw, 1000px" src="https://i2.wp.com/hnbmg.com/wp-content/uploads/2017/05/nike-kd-10-anniversary-release-date.jpg?resize=1200%2C692" srcset="https://i2.wp.com/hnbmg.com/wp-content/uploads/2017/05/nike-kd-10-anniversary-release-date.jpg?w=1200 1200w, https://i2.wp.com/hnbmg.com/wp-content/uploads/2017/05/nike-kd-10-anniversary-release-date.jpg?resize=768%2C443 768w, https://i2.wp.com/hnbmg.com/wp-content/uploads/2017/05/nike-kd-10-anniversary-release-date.jpg?resize=1024%2C591 1024w" style="box-sizing: border-box; border: 0px; vertical-align: middle; margin: 10px 0px; max-width: 100%; height: auto;" width="840" /><img alt="" class="alignnone size-full wp-image-36940" height="559" sizes="(max-width: 1000px) 100vw, 1000px" src="https://i0.wp.com/hnbmg.com/wp-content/uploads/2017/05/nike-kd-10-still-release-date.jpg?resize=1200%2C798" srcset="https://i0.wp.com/hnbmg.com/wp-content/uploads/2017/05/nike-kd-10-still-release-date.jpg?w=1200 1200w, https://i0.wp.com/hnbmg.com/wp-content/uploads/2017/05/nike-kd-10-still-release-date.jpg?resize=768%2C511 768w, https://i0.wp.com/hnbmg.com/wp-content/uploads/2017/05/nike-kd-10-still-release-date.jpg?resize=1024%2C681 1024w, https://i0.wp.com/hnbmg.com/wp-content/uploads/2017/05/nike-kd-10-still-release-date.jpg?resize=697%2C465 697w" style="box-sizing: border-box; border: 0px; vertical-align: middle; margin: 10px 0px; max-width: 100%; height: auto;" width="840" /></p>\r\n<p font-size:="" helvetica="" style="box-sizing: border-box; margin: 0px 0px 20px; line-height: 1.8em; color: rgb(51, 51, 50); font-family: ">\r\n	Dự kiến sẽ được ph&aacute;t h&agrave;nh v&agrave;o ng&agrave;y 26 th&aacute;ng 5 sắp tới với mức gi&aacute; $150, giảm $40 so với phi&ecirc;n bản trước đ&acirc;y v&agrave; quay trở về với đ&uacute;ng kh&aacute;i niệm &ldquo;gi&agrave;y b&igrave;nh d&acirc;n&rdquo;. Được ph&aacute;t h&agrave;nh tiếp theo sau đ&oacute; v&agrave;o ng&agrave;y 1/6 sẽ l&agrave; phối m&agrave;u &ldquo;Still&rdquo; với m&agrave;u trắng chủ đạo.</p>\r\n', '', '', 'nike-kd-10-sketch.jpg', 1495633611, '0', 10);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order`
--

CREATE TABLE `order` (
  `transaction_id` int(255) NOT NULL,
  `id` int(255) NOT NULL,
  `product_id` int(255) NOT NULL,
  `qty` int(11) NOT NULL DEFAULT '0',
  `amount` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `data` text COLLATE utf8_bin NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Đang đổ dữ liệu cho bảng `order`
--

INSERT INTO `order` (`transaction_id`, `id`, `product_id`, `qty`, `amount`, `data`, `status`) VALUES
(7, 6, 2, 1, '4000000.0000', '', 1),
(8, 7, 2, 1, '4000000.0000', '', 0),
(9, 8, 8, 1, '10000000.0000', '', 0),
(10, 9, 8, 1, '10000000.0000', '', 0),
(11, 10, 8, 1, '10000000.0000', '', 2),
(12, 11, 8, 1, '10000000.0000', '', 0),
(13, 12, 8, 2, '20000000.0000', '', 0),
(14, 13, 8, 1, '10000000.0000', '', 1),
(15, 14, 3, 1, '5000000.0000', '', 0),
(16, 15, 3, 1, '5000000.0000', '', 0),
(17, 16, 3, 1, '5000000.0000', '', 0),
(18, 17, 3, 1, '5000000.0000', '', 0),
(19, 18, 3, 1, '5000000.0000', '', 0),
(20, 19, 3, 1, '5000000.0000', '', 0),
(21, 20, 8, 1, '10000000.0000', '', 0),
(22, 21, 9, 1, '5400000.0000', '', 0),
(22, 22, 7, 2, '11600000.0000', '', 0),
(23, 23, 8, 1, '9500000.0000', '', 1),
(24, 24, 9, 1, '5400000.0000', '', 2),
(25, 25, 7, 1, '5800000.0000', '', 1),
(26, 26, 7, 1, '5800000.0000', '', 0),
(27, 27, 8, 1, '9500000.0000', '', 0),
(28, 28, 8, 1, '9500000.0000', '', 0),
(29, 29, 8, 1, '9500000.0000', '', 0),
(30, 30, 9, 1, '5400000.0000', '', 0),
(31, 31, 9, 2, '10800000.0000', '', 0),
(32, 32, 8, 1, '9500000.0000', '', 0),
(33, 33, 8, 1, '9500000.0000', '', 0),
(34, 34, 8, 1, '9500000.0000', '', 0),
(35, 35, 9, 1, '5400000.0000', '', 0),
(36, 36, 8, 1, '9500000.0000', '', 0),
(37, 37, 9, 1, '5400000.0000', '', 0),
(38, 38, 9, 1, '5400000.0000', '', 0),
(39, 39, 9, 1, '5400000.0000', '', 0),
(40, 40, 9, 1, '5400000.0000', '', 0),
(41, 41, 9, 1, '5400000.0000', '', 0),
(42, 42, 9, 1, '5400000.0000', '', 0),
(43, 43, 9, 1, '5400000.0000', '', 0),
(44, 44, 9, 1, '5400000.0000', '', 0),
(45, 45, 9, 1, '5400000.0000', '', 0),
(46, 46, 9, 1, '5400000.0000', '', 0),
(47, 47, 42, 1, '3800000.0000', '', 1),
(48, 48, 18, 1, '2900000.0000', '', 1),
(49, 49, 16, 1, '2100000.0000', '', 0),
(50, 50, 42, 1, '3800000.0000', '', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int(255) NOT NULL,
  `catalog_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `maker_id` int(255) NOT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `discount` int(11) NOT NULL,
  `image_link` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `image_list` text COLLATE utf8_unicode_ci NOT NULL,
  `created` int(11) NOT NULL DEFAULT '0',
  `view` int(11) NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `site_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `warranty` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `total` int(255) NOT NULL,
  `buyed` int(255) NOT NULL,
  `rate_total` int(255) NOT NULL,
  `rate_count` int(255) NOT NULL,
  `gifts` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `video` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `meta_desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `feature` enum('0','1') CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `catalog_id`, `name`, `maker_id`, `price`, `content`, `discount`, `image_link`, `image_list`, `created`, `view`, `meta_key`, `site_title`, `warranty`, `total`, `buyed`, `rate_total`, `rate_count`, `gifts`, `video`, `meta_desc`, `feature`) VALUES
(16, 18, 'Nike Free RN 2017', 0, '2100000.0000', '', 0, 'Nike_Free_RN.jpg', '[]', 1495626969, 13, '', '', '', 0, 0, 0, 0, '', '', '', '0'),
(17, 18, 'Nike Roshe One Metallic Platinum', 0, '1700000.0000', '', 0, 'Nike_Roshe_One.jpg', '[]', 1495627619, 1, '', '', '', 0, 0, 0, 0, '', '', '', '0'),
(18, 35, 'ADIDAS ADISTAR BOOST ESM', 0, '2900000.0000', '', 0, 'Giay-adidas.jpg', '["Giay-adidas-adistar-Boost-ES.jpg"]', 1495628710, 2, '', '', '', 0, 2, 0, 0, '', '', '', '0'),
(19, 35, 'ADIDAS SUPERNOVA GLIDE 7', 0, '2300000.0000', '', 0, 'Giay-adidas-Supernova.jpg', '["Giay-adida.jpg"]', 1495628812, 1, '', '', '', 0, 0, 0, 0, '', '', '', '0'),
(20, 36, 'NIKE AIR ZOOM PEGASUS', 0, '2900000.0000', '', 0, 'Giay-Nike-A.jpg', '["Giay-Nike-Air-Zoom-Pegasus.jpg"]', 1495628973, 4, '', '', '', 0, 0, 0, 0, '', '', '', '0'),
(22, 16, 'Black Schoeller Edition Mid Skool Lite LX Sneakers', 0, '1500000.0000', '', 0, '171739M237008_1.jpg', '["171739M237008_2.jpg"]', 1495629937, 3, '', '', '', 0, 0, 0, 0, '', '', '', '0'),
(23, 33, 'Vans Old Skool', 0, '1200000.0000', '', 0, '3713680-3-MULTIVIEW.jpg', '["3713680-p-MULTIVIEW.jpg"]', 1495630058, 2, '', '', '', 0, 0, 0, 0, '', '', '', '0'),
(24, 15, 'IGNITE EVOKNIT LO PAVEMENT MEN’S TRAINING ', 0, '2300000.0000', '', 0, '189926_01_01_PNA.jpg', '["189926_01_02_PNA.jpg"]', 1495630219, 0, '', '', '', 0, 0, 0, 0, '', '', '', '0'),
(25, 15, 'IGNITE LIMITLESS MEN’S TRAINING', 0, '2200000.0000', '', 0, '189495_04_01_PNA.jpg', '["189495_04_02_PNA.jpg"]', 1495630291, 0, '', '', '', 0, 0, 0, 0, '', '', '', '0'),
(26, 15, 'SUEDE CLASSIC BADGE SNEAKERS', 0, '1300000.0000', '', 0, '362594_01_01_PNA.jpg', '["362594_01_02_PNA.jpg"]', 1495630367, 1, '', '', '', 0, 0, 0, 0, '', '', '', '0'),
(27, 32, 'BASKET CLASSIC BADGE SNEAKERS', 0, '1300000.0000', '', 0, '362550_05_01_PNA.jpg', '["362550_05_02_PNA.jpg"]', 1495630422, 3, '', '', '', 0, 0, 0, 0, '', '', '', '0'),
(28, 32, 'SUEDE CLASSIC WOMEN\'S SNEAKERS', 0, '1100000.0000', '', 0, '355462_44_01_PNA.jpg', '["355462_44_04_PNA.jpg"]', 1495630498, 2, '', '', '', 0, 0, 0, 0, '', '', '', '0'),
(29, 14, 'New Balance M990V4', 0, '3300000.0000', '', 0, '3510169-5-MULTIVIEW.jpg', '["3510169-p-MULTIVIEW.jpg"]', 1495630669, 1, '', '', '', 0, 0, 0, 0, '', '', '', '0'),
(30, 14, 'New Balance MX608v4', 0, '1100000.0000', '', 0, '3526380-3-MULTIVIEW.jpg', '["3526380-p-MULTIVIEW.jpg"]', 1495630726, 2, '', '', '', 0, 0, 0, 0, '', '', '', '0'),
(31, 14, 'New Balance M1540v2', 0, '3000000.0000', '', 0, '2964993-p-MULTIVIEW.jpg', '["2964993-5-MULTIVIEW.jpg"]', 1495630830, 2, '', '', '', 0, 0, 0, 0, '', '', '', '0'),
(32, 14, 'New Balance MW928v3', 0, '2700000.0000', '', 0, '4031453-p-MULTIVIEW.jpg', '["4031453-3-MULTIVIEW.jpg"]', 1495630895, 5, '', '', '', 0, 0, 0, 0, '', '', '', '0'),
(33, 31, 'New Balance W1340v2', 0, '3100000.0000', '', 0, '2738635-p-MULTIVIEW.jpg', '[]', 1495631051, 1, '', '', '', 0, 0, 0, 0, '', '', '', '0'),
(34, 31, 'New Balance WW847v2', 0, '2500000.0000', '', 0, '2885562-p-MULTIVIEW.jpg', '["2885562-1-MULTIVIEW.jpg"]', 1495631129, 2, '', '', '', 0, 0, 0, 0, '', '', '', '0'),
(35, 30, 'Chuck Taylor All Star Classic Colours', 0, '1100000.0000', '', 0, 'M7650C_standard.jpg', '["M7650C_shot2.jpg"]', 1495631454, 4, '', '', '', 0, 0, 0, 0, '', '', '', '0'),
(36, 30, 'Chuck Taylor All Star Classic Colours', 0, '900000.0000', '', 0, 'M9696_standard.jpg', '[]', 1495631507, 2, '', '', '', 0, 0, 0, 0, '', '', '', '0'),
(37, 30, 'Converse Custom One Star Suede Low Top', 0, '1800000.0000', '', 0, 'kjhmbcb.png', '[]', 1495631573, 4, '', '', '', 0, 0, 0, 0, '', '', '', '0'),
(38, 30, 'Chuck Taylor All Star Flower Patchwork Denim', 0, '2900000.0000', '', 0, '156917C_standard.jpg', '["156917C_shot2.jpg"]', 1495631616, 5, '', '', '', 0, 0, 0, 0, '', '', '', '0'),
(39, 13, 'Converse x fragment design Chuck Taylor All Star SE', 0, '1500000.0000', '', 0, '156731_standard.jpg', '["156731_shot4.jpg"]', 1495631733, 1, '', '', '', 0, 0, 0, 0, '', '', '', '0'),
(40, 13, 'Chuck II Open Knit', 0, '1300000.0000', '', 0, '155732_standard.jpg', '["155732_shot2.jpg"]', 1495631772, 1, '', '', '', 0, 0, 0, 0, '', '', '', '0'),
(41, 13, 'Chuck Taylor All Star Graffiti', 0, '2100000.0000', '', 0, '156945C_standard.jpg', '[]', 1495631813, 15, '', '', '', 0, 0, 0, 0, '', '', '', '0'),
(42, 29, 'NIKE AIR MAX 2017', 0, '3800000.0000', '', 0, 'air-max-2017-mens-running-shoe.jpg', '["air-max-2017-mens-running-shoe_(1).jpg"]', 1495632693, 5, '', '', '', 0, 1, 0, 0, '', '', '', '0'),
(43, 29, 'NIKE FREE RN 2017', 0, '1900000.0000', '', 0, 'free-rn-2017-mens-running-shoe.jpg', '["free-rn-2017-mens-running-shoe_(1).jpg"]', 1495632886, 5, '', '', '', 0, 0, 0, 0, '', '', '', '0');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slide`
--

CREATE TABLE `slide` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `image_link` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `info` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort_order` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `slide`
--

INSERT INTO `slide` (`id`, `name`, `image_name`, `image_link`, `link`, `info`, `sort_order`) VALUES
(9, 'slide1', '', '12.jpg', '', '', 1),
(8, 'slide2', '', '11.jpg', '', '', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `support`
--

CREATE TABLE `support` (
  `id` int(255) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `yahoo` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `gmail` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `skype` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `sort_order` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `support`
--

INSERT INTO `support` (`id`, `name`, `yahoo`, `gmail`, `skype`, `phone`, `sort_order`) VALUES
(1, 'Phan Xuân Vinh', '', 'kiepvozanh11@gmail.com', '', '01663521068', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `transaction`
--

CREATE TABLE `transaction` (
  `id` bigint(20) NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `user_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `user_email` varchar(50) COLLATE utf8_bin NOT NULL,
  `user_phone` varchar(20) COLLATE utf8_bin NOT NULL,
  `amount` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `payment` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `payment_info` text COLLATE utf8_bin NOT NULL,
  `message` varchar(255) COLLATE utf8_bin NOT NULL,
  `security` varchar(16) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Đang đổ dữ liệu cho bảng `transaction`
--

INSERT INTO `transaction` (`id`, `type`, `status`, `user_id`, `user_name`, `user_email`, `user_phone`, `amount`, `payment`, `payment_info`, `message`, `security`, `created`) VALUES
(47, 0, 0, 0, 'Trương Mẫn', 'anhhoa@gmail.com', '0162357984', '3800000.0000', 'offline', '', 'Công Gô - 12/7/2017', '', 1495634001),
(48, 0, 2, 23, 'Lại Trang', 'kiepvozanh11@gmail.com', '05005163589', '2900000.0000', 'offline', '', 'Gò Vấp, 30/6/2017', '', 1495634056),
(49, 0, 0, 23, 'Lại Trang', 'kiepvozanh11@gmail.com', '05005163589', '2100000.0000', 'nganluong', '', 'Nha Trang', '', 1495634119),
(50, 0, 0, 23, 'Lại Trang', 'kiepvozanh11@gmail.com', '05005163589', '3800000.0000', 'baokim', '', 'Nha trang, 20/7/2017', '', 1495634139);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(255) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `created` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `phone`, `address`, `password`, `created`) VALUES
(21, 'Ngô Tuyền', 'khongbao@gmail.com', '0166345789', 'Nha Trang', '985ae3acc7684c692870900af17ab160', 1495633807),
(22, 'Mao Trương', 'emnao@yahoo.com', '0556622648', 'Khánh Hòa', '985ae3acc7684c692870900af17ab160', 1495633849),
(23, 'Lại Trang', 'kiepvozanh11@gmail.com', '05005163589', 'Hồ Chí Minh', '985ae3acc7684c692870900af17ab160', 1495633895);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `catalog`
--
ALTER TABLE `catalog`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `news` ADD FULLTEXT KEY `title` (`title`);

--
-- Chỉ mục cho bảng `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `product` ADD FULLTEXT KEY `name` (`name`);

--
-- Chỉ mục cho bảng `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `support`
--
ALTER TABLE `support`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT cho bảng `catalog`
--
ALTER TABLE `catalog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT cho bảng `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(128) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT cho bảng `order`
--
ALTER TABLE `order`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT cho bảng `slide`
--
ALTER TABLE `slide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT cho bảng `support`
--
ALTER TABLE `support`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT cho bảng `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
