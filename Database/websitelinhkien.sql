-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 06, 2024 at 08:49 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `websitelinhkien`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `idProvince` int(11) NOT NULL,
  `idDistrict` int(11) NOT NULL,
  `wardCode` varchar(255) NOT NULL,
  `WardName` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `idProvince`, `idDistrict`, `wardCode`, `WardName`, `address`, `created_at`, `updated_at`) VALUES
(1, 202, 1461, '21312', 'Phường 16', '715/51/35', '2024-03-31 10:05:38', '2024-03-31 10:05:38'),
(2, 202, 1461, '21312', 'Phường 16', '715/51/35', '2024-04-03 08:11:30', '2024-04-03 08:11:30');

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slide` varchar(255) DEFAULT NULL,
  `slide1` varchar(255) DEFAULT NULL,
  `ads` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id`, `slide`, `slide1`, `ads`, `created_at`, `updated_at`) VALUES
(10, 'pv-banner-1222x465-eada7.jpg', 'banner4.jpg', 'ads1.jpg', NULL, NULL),
(11, NULL, 'banner1.jpg', 'ads2.jpg', NULL, NULL),
(13, NULL, 'banner3.jpg', '', '2020-12-24 02:27:12', '2020-12-24 02:27:12'),
(14, NULL, 'banner.jpg', '', '2020-12-24 02:27:33', '2020-12-24 02:27:33');

-- --------------------------------------------------------

--
-- Table structure for table `bills`
--

CREATE TABLE `bills` (
  `bill_id` int(10) UNSIGNED NOT NULL,
  `customerID` int(11) UNSIGNED NOT NULL,
  `date_order` datetime NOT NULL,
  `total` double NOT NULL,
  `note` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Chưa xử lí',
  `total_received` double NOT NULL DEFAULT 0,
  `total_remain` double NOT NULL DEFAULT 0,
  `payment` varchar(255) DEFAULT NULL,
  `codevnpay` varchar(255) DEFAULT NULL,
  `soldtime` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bills`
--

INSERT INTO `bills` (`bill_id`, `customerID`, `date_order`, `total`, `note`, `status`, `total_received`, `total_remain`, `payment`, `codevnpay`, `soldtime`, `created_at`, `updated_at`) VALUES
(2, 2, '2024-04-03 15:11:30', 8990000, 'abc', 'Chưa xử lí', 0, 8990000, 'Tiền mặt - chưa thành toán 10% giá trị đơn hàng', '', NULL, '2024-04-03 08:11:30', '2024-04-03 08:11:30');

-- --------------------------------------------------------

--
-- Table structure for table `bill_details`
--

CREATE TABLE `bill_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `bill_id` int(10) UNSIGNED NOT NULL,
  `productID` bigint(20) UNSIGNED NOT NULL,
  `quantily` int(11) NOT NULL,
  `price` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bill_details`
--

INSERT INTO `bill_details` (`id`, `bill_id`, `productID`, `quantily`, `price`, `created_at`, `updated_at`) VALUES
(2, 2, 19, 1, 8990000, '2024-04-03 08:11:30', '2024-04-03 08:11:30');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `categoryID` bigint(20) UNSIGNED NOT NULL,
  `categoryName` varchar(255) NOT NULL,
  `cate_description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`categoryID`, `categoryName`, `cate_description`, `created_at`, `updated_at`) VALUES
(1, 'Mainboard', '<h4 class=\"mb-3\" style=\"margin: auto;\">Những điều cơ bản cần lưu ý khi chọn mua mainboard</h4>\r\n      <p>Có thể nói mainboard là cột sống của chiếc máy tính, bởi lẽ toàn bộ các linh kiện đều phải giao tiếp với nhau thông qua mainboard, hơn nữa mainboard cũng là một trong những yếu tố quan trọng quyết định khả năng nâng cấp/ mở rộng về lâu dài của một chiếc máy tính. Tuy nhiên, việc lựa chọn một chiếc mainboard hợp lý không phải là một điều dễ dàng, bởi vì có quá nhiều sự lựa chọn ở các phân khúc khác nhau, khiến cho người mua rất dễ đưa ra quyết định sai lầm.\r\n\r\n      \r\n        Trong bài viết này, Phong Vũ sẽ chỉ ra những điểm cần lưu ý cơ bản khi lựa chọn mainboard, giúp bạn đưa ra được quyết định 1 cách chính xác và dễ dàng hơn khi chọn mua một chiếc mainboard.</p>\r\n      <ul>\r\n        <h5>1. Socket</h5>\r\n      <p>Đầu tiên bạn sẽ phải xác định xem mình muốn mua CPU của Intel hay AMD để lựa chọn mainboard có socket phù hợp. Ở thời điểm hiện tại thì các CPU phổ biến của Intel đang sử dụng socket LGA 1151-v2 và LGA 2066.</p>\r\n      <img src=\"../public/frontend/image/gt/intel.png\" alt=\"\" style=\"height: 400px\" ;=\"\">\r\n      <div class=\"collapse\">\r\n    <p>Đối với AMD thì 2 socket phổ biến sẽ là PGA AM4 và LGA TR4.</p>\r\n    <ul>\r\n<img src=\"../public/frontend/image/gt/amd.png\" alt=\"\" style=\"height: 400px\" ;=\"\">\r\n    </ul>\r\n    \r\n     <p>Việc lựa chọn chính xác loại socket hỗ trợ cho CPU mà bạn muốn mua là rất quan trọng, chọn sai socket với CPU sẽ khiến cho mainboard không nhận diện được CPU, thậm chí là gây ra các hư hại đáng tiếc về phần cứng. Để biết được socket của mainboard có tương thích với CPU hay không, bạn nên tham khảo kĩ thông tin từ các nhà sản xuất CPU là Intel, AMD và các nhà sản xuất mainboard như ASUS, ASRock, GIGABYTE, EVGA, MSI, hoặc tham khảo các kĩ thuật viên để có được thông tin chính xác nhất nhé.</p>\r\n      <h5>2. Chi phí</h5>\r\n      <p>Tiếp đến sẽ là đương nhiên sẽ là việc bạn muốn chi bao nhiêu tiền vào mainboard, tuy nhiên việc này là 1 điều không hề đơn giản. Quá mắc sẽ làm bạn phải cắt giảm chi phí của các linh kiện khác, quá rẻ thì khả năng nâng cấp sẽ bị giới hạn đi đáng kể.\r\n\r\n        Đầu tiên bạn sẽ phải dựa vào nhu cầu sử dụng của mình, bạn có nhu cầu chơi các tựa game cấu hình cao ko, có ép xung ko, có sử dụng để chạy máy ảo, render, biên tập video không hay bạn đơn giản chỉ có nhu cầu giải trí nhẹ nhàng.\r\n        \r\n        Nếu như chỉ sử dụng đơn giản với giải trí nhẹ nhàng thì bất kì mainboard nào sử dụng chipset A320 (AMD) hay H310 (Intel) đều sẽ đáp ứng tốt nhu cầu của bạn. Trong khi đó, nếu bạn là 1 game thủ gạo cội, luôn muốn trải nghiệm những tựa game đình đám nhất thì những dòng mainboard sử dụng chipset B350, B450 (AMD) hoặc B360, B365, H370 (Intel) là đã quá đủ cho nhu cầu chơi game của bạn trong khi vẫn đảm bảo khả năng hỗ trợ phần cứng về lâu dài  </p>\r\n     <p>Còn nếu bạn là một người yêu công nghệ, luôn muốn được trải nghiệm công nghệ mới và đặc biệt yêu thích ép xung thì những mainboard sử dụng chipset X370, X470 (AMD) và Z370, Z390 (Intel) chắc chắn sẽ làm bạn hài lòng. Trường hợp bạn là một người làm việc chuyên nghiệp với các ứng dụng chạy máy ảo, render, biên tập video thì những mainboard sử dụng chipset X399 (AMD) và X299 (Intel) là lựa chọn phù hợp nhất với khả năng hỗ trợ những CPU có khả năng xử lý mạnh mẽ.</p>\r\n      \r\n      \r\n      <h5>3. Khả năng hỗ trợ</h5>\r\n      <p>Khả năng hỗ trợ của mainboard là khá quan trọng, nhưng cũng đừng vì thế mà chọn mua 1 chiếc mainboard cao cấp chuyên dụng cho ép xung và có số lượng lớn các cổng cắm (SATA, PCI) trong khi bạn chỉ sử dụng để chơi game. Hay nếu như chỉ vì cố gắng tiết kiệm càng nhiều càng tốt, bạn vô tình chọn 1 chiếc mainboard có khả năng hỗ trợ rất ít để rồi sau 1 thời gian sử dụng mới phát hiện ra rằng bạn không thể gắn thêm M.2 SSD hay card mở rộng.\r\n\r\n\r\n\r\n        Trong thời gian vừa rồi, ở phân khúc này có rất nhiều lựa chọn khá hấp dẫn như RTX 2070, 2060 thậm chí là ngay cả GTX 1080 và 1070Ti vẫn đem lại hiệu năng trên 1440p rất tốt. Cho tới khi AMD cho ra mắt 2 đại diện của kiến trúc Navi là RX 5700XT và 5700 tại E3 2019 thì cục diện đã thay đổi khá nhiều với hiệu năng chơi game trên 1440p vượt mặt cả RTX 2060 lẫn 2070, tạo nên sức ép khá lớn lên NVIDIA.</p>\r\n      <h5>4. Kích thước</h5>\r\n      <ul>\r\n      <img src=\"../public/frontend/image/gt/mini.jpg\" alt=\"\" style=\"height:400px; float: left;\">  \r\n    </ul>\r\n      <p>Dù bạn có sử dụng platform của AMD, Intel hay bất kì hãng nào đi nữa thì cũng sẽ chỉ có 4 loại kích thước mainboard phổ biến trên thị trường hiện nay là mini-ITX, micro-ATX, ATX và E-ATX. Việc chọn kích thước mainboard náo sẽ phụ thuộc rất nhiều vào khả năng hỗ trợ của case máy tính và số lượng thiết bị mà bạn cần sử dụng.\r\n\r\n        Đối với đa số người sử dụng sẽ lựa chọn 2 loại kích thước micro-ATX và ATX do khả năng hỗ trợ gắn thêm linh kiện rất tốt đồng thời vẫn giữ được kích thước phù hợp và tương thích với hầu hết các case máy tính hiện nay..\r\n             \r\n        Trong khi đó, mini-ITX và E-ATX chỉ phù hợp với một số người dùng nhất định. Mini-ITX thường sẽ chỉ phù hợp với các bộ máy nhỏ gọn, đánh đổi lại khả năng mở rộng rất hạn chế, trong khi E-ATX lại hướng tới những người sử dụng cao cấp và đa phần người sử dụng bình thường gần như không thể sử dụng hết khả năng mở rộng của những chiếc mainboard này.</p>\r\n      </div></ul>', '2020-12-07 14:08:28', '2021-01-14 22:51:06'),
(2, 'CPU', NULL, '2020-12-07 14:15:04', '2024-03-31 10:02:30'),
(4, 'RAM', '<h4 class=\"mb-3\" style=\"margin: auto;\">RAM là gì ? RAM hoạt động thế nào? Nên chọn RAM ra sao ?</h4>\r\n      <h5>Cùng tìm hiểu về RAM - bộ nhớ đệm cực kì quan trọng trong mỗi chiếc máy tính.</h5>\r\n      <p>Có lẽ chúng ta vẫn luôn hiểu rằng một bộ máy tính với lượng RAM trang bị càng lớn thì đương nhiên khả năng đa nhiệm của nó càng cao và đôi khi với các mẫu RAM với các thông số khác nhau về BUS hay CAS chúng ta sẽ có được tốc độ trải nghiệm khác nhau.  Trong bài viết này , nếu bạn nào vẫn còn mơ hồ về các khái niệm này thì hãy để Teknews làm rõ hơn cho các bạn nhé.</p>\r\n      <ul>\r\n      <img src=\"../public/frontend/image/gt/ram.jpg\" alt=\"\" style=\"height: 400px\" ;=\"\">\r\n    <p></p>\r\n    <div class=\"collapse\">\r\n    <h5>RAM là gì ?</h5>\r\n    \r\n     <p>Theo nhiều cách nghĩ, kí ức làm nên con người chúng ta, giúp chúng ta có thể ghi nhớ , học và duy trì các kĩ năng và quá khứ , và mỗi khi chúng ta cần sử dụng những kí ức đó , nó lại chuyển ra và để sẵn vào một nơi nào đó cho tới khi chúng ta sử dụng xong rồi mới tiếp tục biến mất vào sâu trong trí nhớ . Với Máy tính, cách chúng được xây dựng là theo Logic của con người vậy, và nơi để chúng ta để máy tính được tạm ghi nhớ mọi thứ đó là RAM ( Random Access Memory )\r\n\r\n      RAM là một dạng bộ nhớ trong của máy tính, chỉ hoạt động khi thiết bị đang hoạt động. Nếu tắt đi, tất cả các dữ liệu nằm trên đây sẽ được chuyển tới nơi khác hoặc biến mất.</p>\r\n     \r\n      <h5>Chọn RAM sao cho phù hợp với PC?</h5>\r\n      <p>Sau khi đã có  những kiến thức cần thiết về RAM , việc lựa chọn RAM cho PC của mình trở nên dễ dàng hơn nhiều đúng không ? Nhưng để chọn được RAM chúng ta còn phải lưu ý khi chọn các linh kiện khác nữa. Và đôi khi chúng ta chọn RAM lại không tương thích với PC hay không sử dụng tối ưu được nó cũng là một điều khá đáng tiếc. Vậy nên trước khi đi mua RAM, các bạn hãy đọc qua phần dưới đây nhé.\r\n\r\n        Khi chúng ta build PC, điều đầu tiên chúng ta phải chú ý đó là Bus RAM hỗ trợ của Mainboard và CPU. VÍ dụ khi chúng ta mua một chiếc Mainboard và CPU có hỗ trợ Bus RAM là 2400Mhz thế nhưng RAM chúng ta mua lại có BUS 2666Mhz thì chiếc RAM của chúng ta chỉ chạy ở Xung tối đa là 2400Mhz và nếu như ngược lại khi RAM có bus 2400 và Mainboard có bus 2666 thì Bộ nhớ đệm cũng sẽ chỉ chạy ở 2400Mhz mà thôi.\r\n        \r\n        Có nghĩa là khi cả 3 linh kiện này được build trên một dàn PC, thì Tần số Xung Bus của Bộ nhớ đệm sẽ hoạt động là Tần số bé nhất mà cả 3 linh kiện này hỗ trợ. Vì vậy các bạn phải chú ý ngay từ khi Build máy nhé.\r\n        \r\n        Ngoài ra, các bạn nên xác định nhu cầu sử dụng PC của mình ở mức nào để mua RAM cho phù hợp. Về cơ bản, điều đầu tiên chúng ta luôn phải quan tâm là ví tiền của chúng ta sẽ cho phép chúng ta làm gì? Nếu bạn là một người khá dư thừa hầu bao thì đừng ngại đầu tư bộ RAM với dung lượng 16GB để có thể hoàn toàn làm chủ được mọi công việc từ tần suất thấp cho đến cao.\r\n        \r\n        Và đương nhiên một điều không thể không quan tâm mỗi khi build case là tối ưu hóa tốc độ bằng công nghệ Dual Channel. Công nghệ này có thể hiểu đơn giản là khi bạn sử dụng 2 chiếc ram y hệt nhau và cắm vào 2 khe RAM có sử dụng một công nghệ mà có thể tăng gấp đôi tốc độ nhập xuất dữ liệu của RAM và đồng thời là sẽ giảm độ trễ của quá trình này đi đáng kể.\r\n        \r\n        Trên lí thuyết là thế nhưng khi áp dụng 2 thanh 4gb so với 1 thanh 8GB thì sự ảnh hưởng của nó tới các quá trình khác chỉ hơn tầm 5-10% mà giá lại đắt hơn tầm 300k. Liệu có đáng để đầu tư cho sự tối ưu hóa này không , các bạn sẽ là những người quyết định cuối cùng nhé.</p>\r\n      </div></ul>', '2020-12-07 22:39:20', '2021-01-14 22:54:52'),
(5, 'SSD', NULL, '2020-12-07 23:07:43', '2024-03-31 10:02:18'),
(6, 'Card', '<h4 class=\"mb-3\" style=\"margin: auto;\">Những điều cơ bản cần lưu ý khi chọn mua card màn hình</h4>\r\n      <p>Đối với game thủ thì card màn hình được xem là linh kiện quan trọng nhất trong 1 cấu hình chơi game. Tuy nhiên, với sự thay đổi công nghệ liên tục cộng thêm việc có rất nhiều mẫu mã và khiến cho việc lựa chọn card màn hình như hiện nay, việc chọn đúng chiếc card mong muốn không phải là 1 điều dễ dàng.</p>\r\n      <h5>1. Hiệu năng chơi game</h5>\r\n      <p>Đương nhiên đây là một điều cực kì hiển nhiên mà bất kì ai cũng nghĩ tới khi nói về một chiếc card màn hình. Tuy nhiên, không phải ai cũng chọn được cho mình một chiếc card phù hợp, chắc chắn bạn sẽ không muốn rơi vào trường hợp lãng phí như mua RTX 2080 về chỉ để chơi game ở 1080p hoặc quá sức như dùng GTX 1660 để gồng gánh game ở 1440p. Việc biết được các dòng card nào phù hợp cho tùy từng độ phân giải khi chơi game là một điều rất quan trọng mà rất nhiều người bỏ qua.</p>\r\n      <div class=\"collapse\">\r\n      <h5>Độ phân giải 4K (3840 x 2160)</h5>\r\n      <p>Nếu bạn đang sử dụng một chiếc màn hình 4K thì một chiếc card màn hình mạnh mẽ như RTX 2080Ti là rất phù hợp. Với việc là chiếc card chơi game mạnh nhất hiện nay, RTX 2080Ti chắc chắn sẽ đem lại cho bạn trải nghiệm chơi game tuyệt vời với các công nghệ đồ họa mới nhất từ NVIDIA như Ray tracing, DLSS, VRS.Bên cạnh RTX 2080Ti, bạn còn có lựa chọn khác là RTX 2080, tuy hiệu năng chơi game chắc chắn sẽ không thể bằng RTX 2080Ti nhưng bạn sẽ tiết kiệm được 1 số tiền kha khá khi mua RTX 2080 và vẫn đảm bảo đem lại hiệu năng chơi game trên độ phân giải 4K tốt với điều kiện bạn sẽ phải giảm 1 vài thiết lập đồ họa xuống đôi chút.</p>\r\n     \r\n      <img src=\"../public/frontend/image/gt/RTX-2080Ti-wccftech-1.jpg\" alt=\"\" style=\"height:400px; float: left;\"> \r\n      <p>Nếu bạn chủ yếu quan tâm đến hiệu năng chơi game, bạn cần ít nhất là CPU Intel Core i5 hoặc AMD Ryzen 5 tầm trung. Xem xét thêm cả card đồ họa cũng quan trọng ngang ngửa so với bộ xử lý để chơi game, với nhu cầu ở mức chơi game thì cũng không nhất thiết phải sở hữu chip Intel Core i7 hoặc Ryzen 7.</p>\r\n      <h6>Độ phân giải 1440p (2560 x 1440)</h6>\r\n      <p>Mặc dù đem lại trải nghiệm hình ảnh chân thực và sắc nét, nhưng vẫn tồn tại một rào cản khá lớn để có được trải nghiệm chơi game trên độ phân giải 4K chính là giá thành. Cũng vì lý do này mà vẫn rất nhiều người lựa chọn 1440p làm độ phân giải lý tưởng khi chơi game bởi khả năng đem lại chất lượng hình ảnh xuất sắc hơn rất nhiều so với 1080p nhưng lại không yêu cầu phần cứng quá nhiều như 4K.\r\n\r\n        Trong thời gian vừa rồi, ở phân khúc này có rất nhiều lựa chọn khá hấp dẫn như RTX 2070, 2060 thậm chí là ngay cả GTX 1080 và 1070Ti vẫn đem lại hiệu năng trên 1440p rất tốt. Cho tới khi AMD cho ra mắt 2 đại diện của kiến trúc Navi là RX 5700XT và 5700 tại E3 2019 thì cục diện đã thay đổi khá nhiều với hiệu năng chơi game trên 1440p vượt mặt cả RTX 2060 lẫn 2070, tạo nên sức ép khá lớn lên NVIDIA.</p>\r\n      <h6>Độ phân giải 1080p (1920 x 1080)</h6>\r\n      <img src=\"../public/frontend/image/gt/GIGABYTE-GTX-1660Ti-winfuture.jpg\" alt=\"\" style=\"height:400px; float: left;\">  \r\n      <p>Có thể nói độ phân giải 1080p vẫn là lựa chọn của đại đa số game thủ, đặc biệt là những game thủ hard core cần tần số phản hồi nhanh thì độ phân giải 1080p hiện vẫn đang là lựa chọn số 1. Ở phân khúc này, hiện nay GTX 1660Ti là lựa chọn tốt nhất mà game thủ có thể có được, mặc dù không hỗ trợ các công nghệ mới như Ray tracing và DLSS nhưng đổi lại với hiệu năng tương đương với GTX 1070, bạn sẽ có được trải nghiệm chơi game trên 1080p cực kì mượt mà đặc biệt trên những chiếc màn hình có tần số phản hồi nhanh.\r\n             \r\n        Theo sau GTX 1660Ti là GTX 1660 với hiệu năng chơi game trên 1080p rất tốt, tuy hiệu năng sẽ không thể nào bằng được GTX 1660Ti, nhưng GTX 1660 vẫn có hiệu năng được cải thiện rất nhiều so với thế hệ đàn anh GTX 1060 6GB, đủ sức để đem lại cho bạn mãn nhãn khi chơi game ở 1080p.</p>\r\n        <h6>Phân khúc phổ thông</h6>\r\n        <p>Không phải bất kì game thủ nào cũng có điều kiện để tậu cho mình 1 bộ nguồn máy tính có công suất lớn, nên những dòng card màn hình không cần sử dụng nguồn phụ như GTX 1650 là một lựa chọn rất hợp lý. Tuy không thể so sánh với RX 570 về hiệu năng, nhưng với công suất tiêu thụ chỉ ở mức 75W, GTX 1650 vẫn đem lại hiệu năng chơi game khá thuyết phục ở độ phân giải full HD (1080p), cao hơn GTX 1050Ti xấp xỉ 25%. Đem lại trải nghiệm mượt mà ở thiết lập trung bình với phần lớn tựa game ở độ phân giải full HD.</p>\r\n      </div>', '2020-12-07 23:13:53', '2021-01-14 22:57:08'),
(7, 'Vỏ Case', '<h4 class=\"mb-3\" style=\"margin: auto;\">Case máy tính – tầm quan trọng và hướng dẫn chọn lựa</h4>\r\n\r\n      \r\n\r\n      <p>Dạo qua một lượt các mặt báo liên quan đến chủ đề Build PC hiếm khi thấy một bài viết hướng dẫn chọn mua Case máy tính hoàn chỉnh. Phải chăng vì nó vô chi vô giác nhất và vẫn mang tiếng là cái “vỏ” nên anh em build PC quan tâm sau cùng. Biết bao trường hợp dở mếu dở cười đã xảy ra như: vỏ case không khớp main, case máy tính bị bí, case không tương thích với các giải pháp lưu trữ và tản nhiệt…vậy tốt nhất các bạn nên đề phòng.</p>\r\n\r\n      <ul>\r\n\r\n      <img src=\"../public/frontend/image/gt/case.jpg\" alt=\"\" style=\"height: 400px\" ;=\"\">\r\n\r\n    <p>Khác hoàn toàn so với việc bạn mua máy tính đồng bộ, tự build PC là một công việc đem lại rất nhiều trải nghiệm thích thú và đòi hỏi nhiều kinh nghiệm khi phải cân đối từng chút một. Vài yếu tố chủ chốt có thể tạm liệt kê khi chọn mua thùng máy như: kích cỡ, mẫu mã, hình dáng, trường phái, giá thành…cũng khiến newbie cảm thấy đau đầu. Sai một li là đi cả dàn, chính vì vậy bài viết dưới đây sẽ trang bị cho bạn những kiến thức hữu ích giúp cho bạn để tìm mua cho mình một chiếc thùng máy như mong đợi.</p>\r\n\r\n\r\n\r\n    <div class=\"collapse\">\r\n\r\n     <h5>Cách chọn mua Case máy tính</h5>\r\n\r\n\r\n\r\n      <p>Một khi đã lựa chọn đầy đủ linh kiện thiết yếu cho bộ máy tính chơi game, bạn cần một vỏ case để gắn tât cả mọi người vào trong. Chức năng chính của case là để gắn và bảo vệ linh kiện bên trong, hơn nữa là tính thẩm mỹ. Trong phần này, chúng ta sẽ thảo luận 3 bước</p>\r\n\r\n      <h5>BƯỚC 1: CHỌN KÍCH CỠ VỎ CÂY</h5>\r\n\r\n      <p>Yếu tố quan trọng nhất khi chọn vỏ cây là phải xác định vỏ loại nào chứa vừa các linh kiện bạn đã mua. Kích cỡ của case phụ thuộc kích cỡ của mainboard. Có các loại kích cỡ thông thường đối với vỏ cây như sau: ATX, ATX Full Tower, ATX Mid Tower, ATX Mini Tower, MicroATX, MicroATX Mid Tower, Micro ATX Mini Tower, MicroATX Slim Case, Mini-ITX Tower, Mini-ITX Desktop.</p>\r\n\r\n    <ul>\r\n\r\n      <img src=\"../public/frontend/image/gt/case1.PNG\" alt=\"\">\r\n\r\n      <p></p>\r\n\r\n      <h5>BƯỚC 2: XEM XÉT CÁC VỎ CÂY NHIỀU TẢN NHIỆT, LÀM MÁT TỐT</h5>\r\n\r\n      <p>Đừng quá hoảng loạn với cả tá loại vỏ cây như trên vì bạn thông thường chỉ chọn ATX hoặc MicroATX cho các PC chơi game. Thông thường khi chọn mainboard bạn có thể chọn cỡ vỏ case luôn bằng cách nhìn vào tên của main. Ví dụ main Gigabyte B250M Gaming 3 cần vỏ case MicroATX, nhưng main MSI B250 Bazooka cần vỏ case ATX. Khả năng tản nhiệt và thông gió là hai yếu quan trọng khi lựa chọn vỏ case cho máy tính chơi game. Thông thường nếu bạn muốn tản nhiệt đủ làm mát hệ thống, hãy tìm một vỏ Mid Tower đơn giản với vài quạt. Trừ khi bạn định ép xung CPU thì nghiên cứu mua thêm tản nhiệt CPU. Nếu bạn phân vân không biết vỏ cây mình định mua có đủ làm mát cho toàn bộ hệ thống PC hay không thì hãy tìm các review trên mạng để có thêm thông tin.</p>\r\n\r\n      <h5>BƯỚC 3: TÍNH THẨM MỸ – BẠN MUỐN VỎ PC CỦA MÌNH TRÔNG THẾ NÀO?</h5>\r\n\r\n      <p>Một khi đã chọn loại vỏ case PC đạt yêu cầu kỹ thuật thì đến lúc chọn xem vỏ nào đẹp và bạn ưng ý nhất. Vỏ case có nhiều màu sắc, góc cạnh khác nhau và có thể gồm cả hệ thống đèn led sáng.</p>\r\n\r\n    <img src=\"../public/frontend/image/gt/case3.jpg\" alt=\"\">\r\n\r\n    </ul>\r\n\r\n  </div></ul>', '2020-12-07 23:14:14', '2021-01-14 22:59:02'),
(8, 'Tản nhiệt', NULL, '2020-12-07 23:14:29', '2020-12-07 23:14:29'),
(9, 'Màn hình', NULL, '2020-12-11 11:17:31', '2020-12-11 11:17:31');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `comment` text NOT NULL,
  `productID` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) UNSIGNED NOT NULL,
  `userID` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `IdAddress` bigint(20) UNSIGNED NOT NULL,
  `phone_number` int(11) NOT NULL,
  `note` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `userID`, `name`, `email`, `IdAddress`, `phone_number`, `note`, `created_at`, `updated_at`) VALUES
(2, 1, 'admin', 'nguyenhuuminhluan@gmail.com', 2, 328716234, 'abc', '2024-04-03 08:11:30', '2024-04-03 08:11:30');

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `DistrictID` int(11) NOT NULL,
  `ProvinceID` int(11) NOT NULL,
  `DistrictName` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `DistrictID`, `ProvinceID`, `DistrictName`, `created_at`, `updated_at`) VALUES
(1, 3715, 202, '33', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(2, 3713, 202, 'Quận mới', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(3, 3695, 202, 'Thành Phố Thủ Đức', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(4, 3694, 246, 'Huyện Quảng Hòa', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(5, 3451, 268, 'Quận Đặc Biệt', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(6, 3446, 259, 'Huyện Ia H Drai', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(7, 3445, 250, 'Huyện Long Mỹ', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(8, 3444, 239, 'Huyện Phú Riềng', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(9, 3443, 214, 'Thị xã Duyên Hải', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(10, 3441, 236, 'Thị xã Kỳ Anh', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(11, 3440, 201, 'Quận Nam Từ Liêm', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(12, 3418, 210, 'Huyện M Đrắk', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(13, 3329, 211, 'Thị xã Kiến Tường', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(14, 3327, 233, 'Huyện Yên Mô', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(15, 3323, 231, 'Huyện Xuân Trường', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(16, 3320, 236, 'Huyện Vũ Quang', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(17, 3319, 231, 'Huyện Vụ Bản', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(18, 3317, 220, 'Huyện Vĩnh Thạnh', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(19, 3315, 211, 'Huyện Vĩnh Hưng', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(20, 3312, 262, 'Huyện Vân Canh', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(21, 3311, 247, 'Huyện Văn Quan', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(22, 3310, 247, 'Huyện Văn Lãng', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(23, 3308, 231, 'Huyện Trực Ninh', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(24, 3305, 246, 'Huyện Trà Lĩnh', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(25, 3304, 242, 'Huyện Trà Bồng', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(26, 3303, 201, 'Huyện Thường Tín', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(27, 3302, 261, 'Huyện Thuận Nam', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(28, 3301, 261, 'Huyện Thuận Bắc', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(29, 3300, 220, 'Huyện Thới Lai', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(30, 3299, 246, 'Huyện Thông Nông', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(31, 3298, 234, 'Huyện Thiệu Hóa', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(32, 3294, 225, 'Huyện Thanh Miện', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(33, 3293, 211, 'Huyện Thạnh Hóa', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(34, 3292, 225, 'Huyện Thanh Hà', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(35, 3291, 235, 'Huyện Thanh Chương', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(36, 3290, 229, 'Huyện Thanh Ba', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(37, 3289, 246, 'Huyện Thạch An', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(38, 3288, 235, 'Huyện Tương Dương', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(39, 3287, 225, 'Huyện Tứ Kỳ', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(40, 3286, 237, 'Huyện Tuyên Hóa', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(41, 3284, 260, 'Huyện Tuy An', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(42, 3281, 226, 'Huyện Tiền Hải', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(43, 3279, 262, 'Huyện Tây Sơn', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(44, 3278, 260, 'Huyện Tây Hòa', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(45, 3276, 211, 'Huyện Tân Thạnh', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(46, 3275, 212, 'Huyện Tân Phước', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(47, 3273, 211, 'Huyện Tân Hưng', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(48, 3272, 229, 'Huyện Tam Nông', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(49, 3271, 221, 'Huyện Tam Đảo', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(50, 3270, 242, 'Huyện Sơn Tây', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(51, 3267, 228, 'Huyện Sơn Dương', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(52, 3266, 266, 'huyện Sốp Cộp', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(53, 3265, 221, 'Huyện Sông Lô', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(54, 3261, 235, 'Huyện Quỳ Châu', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(55, 3260, 235, 'Huyện Quế Phong', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(56, 3259, 246, 'Huyện Quảng Uyên', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(57, 3258, 237, 'Huyện Quảng Trạch', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(58, 3257, 223, 'Huyện Quảng Điền', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(59, 3255, 201, 'Huyện Phú Xuyên', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(60, 3254, 262, 'Huyện Phù Mỹ', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(61, 3250, 220, 'Huyện Phong Điền', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(62, 3249, 245, 'Huyện Pác Nặm', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(63, 3247, 233, 'Huyện Nho Quan', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(64, 3246, 246, 'Huyện Nguyên Bình', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(65, 3243, 231, 'Huyện Nghĩa Hưng', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(66, 3242, 245, 'Huyện Ngân Sơn', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(67, 3241, 234, 'Huyện Nga Sơn', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(68, 3238, 225, 'Huyện Ninh Giang', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(69, 3234, 223, 'Huyện Nam Đông', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(70, 3233, 235, 'Huyện Nam Đàn', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(71, 3232, 245, 'Huyện Na Rì', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(72, 3230, 266, 'Huyện Mường La', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(73, 3227, 211, 'Huyện Mộc Hóa', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(74, 3226, 242, 'Huyện Mộ Đức', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(75, 3224, 237, 'Huyện Minh Hóa', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(76, 3220, 236, 'Huyện Lộc Hà', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(77, 3218, 250, 'Thị xã Long Mỹ', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(78, 3217, 210, 'Huyện Lắk', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(79, 3216, 234, 'Huyện Lang Chánh', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(80, 3213, 208, 'Huyện Khánh Vĩnh', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(81, 3212, 208, 'Huyện Khánh Sơn', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(82, 3211, 235, 'Huyện Kỳ Sơn', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(83, 3205, 233, 'Huyện Kim Sơn', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(84, 3203, 224, 'Huyện Kiến Thụy', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(85, 3201, 236, 'Huyện Hương Sơn', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(86, 3200, 216, 'Thành phố Hồng Ngự', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(87, 3199, 230, 'Huyện Hoành Bồ', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(88, 3196, 258, 'Huyện Hàm Tân', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(89, 3194, 246, 'Huyện Hạ Lang', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(90, 3193, 231, 'Huyện Giao Thủy', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(91, 3191, 233, 'Huyện Gia Viễn', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(92, 3188, 236, 'Huyện Đức Thọ', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(93, 3186, 260, 'Huyện Đồng Xuân', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(94, 3185, 230, 'Thị xã Đông Triều', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(95, 3184, 260, 'Thị xã Đông Hòa', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(96, 3182, 247, 'Huyện Đình Lập', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(97, 3180, 230, 'Huyện Đầm Hà', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(98, 3160, 209, 'Huyện Di Linh', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(99, 3158, 213, 'Huyện Chợ Lách', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(100, 3157, 228, 'Huyện Chiêm Hóa', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(101, 3156, 247, 'Huyện Chi Lăng', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(102, 3155, 216, 'Huyện Châu Thành', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(103, 3153, 210, 'Huyện Cư Kuin', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(104, 3152, 241, 'Huyện Cư Jút', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(105, 3150, 220, 'Huyện Cờ Đỏ', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(106, 3147, 234, 'Huyện Cẩm Thủy', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(107, 3146, 209, 'Huyện Cát Tiên', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(108, 3143, 236, 'Huyện Can Lộc', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(109, 3141, 239, 'Huyện Bù Gia Mập', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(110, 3140, 239, 'Huyện Bù Đốp', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(111, 3138, 247, 'Huyện Bình Gia', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(112, 3135, 205, 'Huyện Bắc Tân Uyên', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(113, 3134, 247, 'Huyện Bắc Sơn', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(114, 3132, 205, 'Huyện Bàu Bàng', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(115, 3130, 246, 'Huyện Bảo Lạc', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(116, 3129, 261, 'Huyện Bác Ái', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(117, 3127, 242, 'Huyện Ba Tơ', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(118, 3126, 230, 'Huyện Ba Chẽ', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(119, 3125, 219, 'Huyện An Minh', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(120, 2272, 218, 'Thị xã Vĩnh Châu', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(121, 2270, 267, 'Huyện Yên Thủy', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(122, 2268, 229, 'Huyện Yên Lập', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(123, 2267, 266, 'Huyện Yên Châu', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(124, 2266, 263, 'Huyện Yên Bình', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(125, 2264, 269, 'Huyện Xi Ma Cai (test)', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(126, 2263, 215, 'Huyện Vũng Liêm', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(127, 2260, 219, 'Huyện Vĩnh Thuận', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(128, 2258, 262, 'Huyện Vĩnh Thạnh', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(129, 2256, 227, 'Huyện Vị Xuyên', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(130, 2255, 266, 'Huyện Vân Hồ', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(131, 2251, 219, 'Huyện U Minh Thượng', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(132, 2249, 234, 'Huyện Triệu Sơn', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(133, 2248, 263, 'Huyện Trạm Tấu', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(134, 2239, 243, 'Huyện Thăng Bình', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(135, 2238, 218, 'Huyện Thạnh Trị', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(136, 2237, 229, 'Huyện Thanh Thủy', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(137, 2227, 241, 'Huyện Tuy Đức', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(138, 2225, 259, 'Huyện Tu Mơ Rông', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(139, 2224, 243, 'Huyện Tiên Phước', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(140, 2222, 242, 'Huyện Tây Trà', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(141, 2219, 243, 'Huyện Tây Giang', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(142, 2216, 212, 'Huyện Tân Phú Đông', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(143, 2211, 260, 'Huyện Sơn Hòa', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(144, 2210, 242, 'Huyện Sơn Hà', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(145, 2206, 260, 'Huyện Sông Hinh', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(146, 2205, 259, 'Huyện Sa Thầy', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(147, 2204, 266, 'Huyện Quỳnh Nhai', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(148, 2198, 243, 'Huyện Phước Sơn', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(149, 2195, 244, 'Huyện Phú Lương', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(150, 2194, 268, 'Huyện Phù Cừ', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(151, 2193, 223, 'Huyện Phong Điền', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(152, 2190, 234, 'Huyện Như Thanh', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(153, 2187, 259, 'Huyện Ngọc Hồi', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(154, 2186, 252, 'Huyện Ngọc Hiển', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(155, 2182, 243, 'Huyện Nông Sơn', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(156, 2181, 234, 'Huyện Nông Cống', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(157, 2179, 265, 'Huyện Nậm Pồ', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(158, 2178, 243, 'Huyện Nam Trà My', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(159, 2177, 243, 'Huyện Nam Giang', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(160, 2173, 218, 'Huyện Mỹ Tú', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(161, 2171, 269, 'Huyện Mường Khương', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(162, 2170, 265, 'Huyện Mường Ảng', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(163, 2167, 242, 'Huyện Minh Long', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(164, 2165, 207, 'Huyện Mang Yang', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(165, 2164, 215, 'Huyện Mang Thít', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(166, 2163, 267, 'Huyện Mai Châu', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(167, 2161, 218, 'Huyện Long Phú', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(168, 2157, 267, 'Huyện Lạc Thủy', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(169, 2156, 267, 'Huyện Lạc Sơn', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(170, 2152, 207, 'Huyện Krông Pa', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(171, 2151, 241, 'Huyện Krông Nô', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(172, 2150, 210, 'Huyện Krông Búk', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(173, 2149, 207, 'Huyện Kông Chro', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(174, 2148, 259, 'Huyện Kon Rẫy', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(175, 2146, 267, 'Huyện Kim Bôi', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(176, 2144, 207, 'Huyện Kbang', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(177, 2140, 262, 'Huyện Hoài Ân', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(178, 2139, 243, 'Huyện Hiệp Đức', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(179, 2137, 238, 'Huyện Hải Lăng', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(180, 2134, 219, 'Huyện Giang Thành', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(181, 2132, 219, 'Huyện Gò Quao', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(182, 2131, 210, 'Huyện Ea Súp', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(183, 2129, 211, 'Huyện Đức Huệ', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(184, 2125, 243, 'Huyện Đông Giang', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(185, 2123, 265, 'Huyện Điện Biên Đông', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(186, 2121, 259, 'Huyện Đắk Tô', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(187, 2120, 241, 'Huyện Đắk Song', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(188, 2119, 207, 'Huyện Đắk Pơ', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(189, 2118, 207, 'Huyện Đắk Đoa', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(190, 2117, 208, 'Huyện đảo Trường Sa', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(191, 2116, 258, 'Huyện đảo Phú Quý', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(192, 2115, 219, 'Thành phố Phú Quốc', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(193, 2114, 242, 'Huyện đảo Lý Sơn', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(194, 2113, 219, 'Huyện đảo Kiên Hải', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(195, 2112, 203, 'Huyện đảo Hoàng Sa', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(196, 2111, 206, 'Huyện đảo Côn Đảo', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(197, 2110, 238, 'Huyện đảo Cồn Cỏ', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(198, 2109, 230, 'Huyện đảo Cô Tô', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(199, 2108, 224, 'Huyện đảo Cát Hải', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(200, 2107, 224, 'Huyện đảo Bạch Long Vĩ', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(201, 2106, 209, 'Huyện Đạ Tẻh', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(202, 2105, 238, 'Huyện Đa Krông', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(203, 2104, 209, 'Huyện Đạ Huoai', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(204, 2103, 214, 'Huyện Duyên Hải', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(205, 2101, 207, 'Huyện Chư Pưh', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(206, 2096, 250, 'Huyện Châu Thành', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(207, 2093, 218, 'Huyện Cù Lao Dung', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(208, 2091, 214, 'Huyện Cầu Kè', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(209, 2090, 202, 'Huyện Cần Giờ', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(210, 2087, 267, 'Huyện Cao Phong', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(211, 2086, 214, 'Huyện Càng Long', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(212, 2084, 212, 'Huyện Cai Lậy', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(213, 2081, 215, 'Huyện Bình Tân', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(214, 2079, 266, 'Huyện Bắc Yên', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(215, 2078, 243, 'Huyện Bắc Trà My', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(216, 2075, 227, 'Huyện Bắc Mê', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(217, 2073, 269, 'Huyện Bảo Thắng', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(218, 2070, 234, 'Huyện Bá Thước', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(219, 2066, 230, 'Thị xã Quảng Yên', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(220, 2065, 221, 'Thành phố Phúc Yên', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(221, 2064, 229, 'Thị xã Phú Thọ', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(222, 2063, 263, 'Thị xã Nghĩa Lộ', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(223, 2062, 218, 'Thị xã Ngã Năm', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(224, 2061, 208, 'Thị xã Ninh Hòa', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(225, 2060, 265, 'Thị xã Mường Lay', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(226, 2059, 216, 'Thị xã Hồng Ngự', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(227, 2058, 219, 'Thành phố Hà Tiên', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(228, 2057, 212, 'Thị xã Gò Công', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(229, 2056, 225, 'Thành phố Chí Linh', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(230, 2055, 212, 'Thị xã Cai Lậy', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(231, 2054, 215, 'Thị xã Bình Minh', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(232, 2053, 227, 'Huyện Yên Minh', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(233, 2052, 227, 'Huyện Xín Mần', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(234, 2051, 244, 'Huyện Võ Nhai', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(235, 2050, 253, 'Huyện Vĩnh Lợi', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(236, 2049, 204, 'Huyện Vĩnh Cửu', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(237, 2048, 250, 'Huyện Vị Thuỷ', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(238, 2047, 263, 'Huyện Văn Yên', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(239, 2046, 268, 'Huyện Văn Lâm', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(240, 2045, 268, 'Huyện Văn Giang', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(241, 2044, 263, 'Huyện Văn Chấn', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(242, 2043, 269, 'Huyện Văn Bàn', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(243, 2042, 252, 'Huyện U Minh', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(244, 2041, 246, 'Huyện Trùng Khánh', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(245, 2040, 238, 'Huyện Triệu Phong', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(246, 2039, 263, 'Huyện Trấn Yên', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(247, 2038, 252, 'Huyện Trần Văn Thời', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(248, 2037, 218, 'Huyện Trần Đề', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(249, 2036, 247, 'Huyện Tràng Định', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(250, 2035, 240, 'Thị xã Trảng Bàng', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(251, 2034, 215, 'Huyện Trà Ôn', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(252, 2033, 214, 'Huyện Trà Cú', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(253, 2032, 266, 'Huyện Thuận Châu', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(254, 2031, 211, 'Huyện Thủ Thừa', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(255, 2030, 216, 'Huyện Tháp Mười', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(256, 2029, 229, 'Huyện Thanh Sơn', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(257, 2028, 213, 'Huyện Thạnh Phú', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(258, 2027, 232, 'Huyện Thanh Liêm', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(259, 2026, 216, 'Huyện Thanh Bình', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(260, 2025, 264, 'Huyện Than Uyên', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(261, 2024, 236, 'Huyện Thạch Hà', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(262, 2023, 262, 'Huyện Tuy Phước', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(263, 2022, 265, 'Huyện Tuần Giáo', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(264, 2021, 265, 'Huyện Tủa Chùa', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(265, 2020, 214, 'Huyện Tiểu Cần', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(266, 2019, 230, 'Huyện Tiên Yên', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(267, 2018, 268, 'Huyện Tiên Lữ', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(268, 2017, 264, 'Huyện Tân Uyên', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(269, 2016, 211, 'Huyện Tân Trụ', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(270, 2015, 229, 'Huyện Tân Sơn', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(271, 2014, 267, 'Huyện Tân Lạc', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(272, 2013, 216, 'Huyện Tân Hồng', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(273, 2012, 258, 'Huyện Tánh Linh', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(274, 2011, 216, 'Huyện Tam Nông', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(275, 2010, 264, 'Huyện Tam Đường', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(276, 2009, 221, 'Huyện Tam Dương', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(277, 2008, 215, 'Huyện Tam Bình', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(278, 2007, 266, 'Huyện Sông Mã', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(279, 2006, 264, 'Huyện Sìn Hồ', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(280, 2005, 269, 'Thị xã Sa Pa', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(281, 2004, 201, 'Huyện Quốc Oai', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(282, 2003, 243, 'Huyện Quế Sơn', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(283, 2002, 237, 'Huyện Quảng Ninh', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(284, 2001, 227, 'Huyện Quang Bình', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(285, 2000, 234, 'Huyện Quan Sơn', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(286, 1999, 227, 'Huyện Quản Bạ', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(287, 1998, 253, 'Huyện Phước Long', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(288, 1997, 246, 'Huyện Phục Hòa', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(289, 1996, 266, 'Huyện Phù Yên', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(290, 1995, 243, 'Huyện Phú Ninh', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(291, 1994, 229, 'Huyện Phù Ninh', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(292, 1993, 260, 'Huyện Phú Hòa', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(293, 1992, 205, 'Huyện Phú Giáo', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(294, 1991, 244, 'Huyện Phú Bình', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(295, 1990, 244, 'Thị xã Phổ Yên', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(296, 1989, 264, 'Huyện Phong Thổ', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(297, 1988, 242, 'Huyện Nghĩa Hành', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(298, 1987, 243, 'Huyện Núi Thành', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(299, 1986, 261, 'Huyện Ninh Phước', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(300, 1985, 261, 'Huyện Ninh Hải', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(301, 1984, 264, 'Huyện Nậm Nhùn', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(302, 1983, 231, 'Huyện Nam Trực', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(303, 1982, 228, 'Huyện Na Hang', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(304, 1981, 231, 'Huyện Mỹ Lộc', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(305, 1980, 264, 'Huyện Mường Tè', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(306, 1979, 265, 'Huyện Mường Nhé', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(307, 1978, 265, 'Huyện Mường Chà', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(308, 1977, 263, 'Huyện Mù Cang Chải', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(309, 1976, 266, 'Huyện Mộc Châu', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(310, 1975, 213, 'Huyện Mỏ Cày Nam', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(311, 1974, 213, 'Huyện Mỏ Cày Bắc', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(312, 1973, 227, 'Huyện Mèo Vạc', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(313, 1971, 266, 'Huyện Mai Sơn', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(314, 1970, 232, 'Huyện Lý Nhân', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(315, 1969, 249, 'Huyện Lương Tài', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(316, 1968, 267, 'Huyện Lương Sơn', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(317, 1967, 263, 'Huyện Lục Yên', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(318, 1966, 248, 'Huyện Lục Ngạn', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(319, 1965, 248, 'Huyện Lục Nam', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(320, 1964, 239, 'Huyện Lộc Ninh', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(321, 1963, 247, 'Huyện Lộc Bình', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(322, 1962, 215, 'Huyện Long Hồ', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(323, 1961, 216, 'Huyện Lấp Vò', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(324, 1960, 221, 'Huyện Lập Thạch', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(325, 1959, 229, 'Huyện Lâm Thao', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(326, 1958, 209, 'Huyện Lâm Hà', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(327, 1957, 228, 'Huyện Lâm Bình', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(328, 1956, 209, 'Huyện Lạc Dương', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(329, 1955, 267, 'Huyện Kỳ Sơn', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(330, 1954, 210, 'Huyện Krông Pắc', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(331, 1953, 225, 'Huyện Kim Thành', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(332, 1952, 232, 'Huyện Kim Bảng', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(333, 1951, 226, 'Huyện Kiến Xương', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(334, 1950, 219, 'Huyện Kiên Lương', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(335, 1949, 218, 'Huyện Kế Sách', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(336, 1948, 247, 'Huyện Hữu Lũng', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(337, 1947, 235, 'Huyện Hưng Nguyên', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(338, 1946, 253, 'Huyện Hồng Dân', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(339, 1945, 227, 'Huyện Hoàng Su Phì', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(340, 1944, 233, 'Huyện Hoa Lư', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(341, 1943, 246, 'Huyện Hòa An', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(342, 1942, 234, 'Huyện Hậu Lộc', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(343, 1941, 228, 'Huyện Hàm Yên', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(344, 1940, 230, 'Huyện Hải Hà', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(345, 1939, 246, 'Huyện Hà Quảng', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(346, 1938, 229, 'Huyện Hạ Hòa', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(347, 1937, 213, 'Huyện Giồng Trôm', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(348, 1936, 238, 'Huyện Gio Linh', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(349, 1935, 253, 'Thị Xã Giá Rai', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(350, 1934, 225, 'Huyện Gia Lộc', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(351, 1933, 212, 'Huyện Gò Công Tây', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(352, 1932, 212, 'Huyện Gò Công Đông', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(353, 1931, 210, 'Huyện Ea Kar', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(354, 1930, 242, 'Thị xã Đức Phổ', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(355, 1929, 211, 'Huyện Đức Hòa', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(356, 1928, 227, 'Huyện Đồng Văn', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(357, 1927, 234, 'Huyện Đông Sơn', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(358, 1926, 253, 'Huyện Đông Hải', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(359, 1925, 229, 'Huyện Đoan Hùng', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(360, 1924, 244, 'Huyện Định Hóa', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(361, 1923, 265, 'Huyện Điện Biên', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(362, 1922, 252, 'Huyện Đầm Dơi', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(363, 1921, 259, 'Huyện Đắk Glei', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(364, 1920, 230, 'Huyện đảo Vân Đồn', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(365, 1919, 209, 'Huyện Đam Rông', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(366, 1918, 244, 'Huyện Đại Từ', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(367, 1917, 243, 'Huyện Đại Lộc', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(368, 1916, 267, 'Huyện Đà Bắc', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(369, 1915, 201, 'Huyện Chương Mỹ', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(370, 1914, 245, 'Huyện Chợ Mới', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(371, 1913, 245, 'Huyện Chợ Đồn', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(372, 1912, 250, 'Huyện Châu Thành A', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(373, 1911, 214, 'Huyện Châu Thành', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(374, 1910, 218, 'Huyện Châu Thành', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(375, 1909, 211, 'Huyện Châu Thành', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(376, 1908, 214, 'Huyện Cầu Ngang', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(377, 1907, 211, 'Huyện Cần Giuộc', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(378, 1906, 211, 'Huyện Cần Đước', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(379, 1905, 229, 'Huyện Cẩm Khê', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(380, 1904, 247, 'Huyện Cao Lộc', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(381, 1903, 238, 'Huyện Cam Lộ', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(382, 1902, 208, 'Huyện Cam Lâm', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(383, 1901, 252, 'Huyện Cái Nước', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(384, 1900, 212, 'Huyện Cái Bè', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(385, 1899, 239, 'Huyện Bù Đăng', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(386, 1898, 242, 'Huyện Bình Sơn', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(387, 1897, 232, 'Huyện Bình Lục', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(388, 1896, 230, 'Huyện Bình Liêu', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(389, 1895, 213, 'Huyện Bình Đại', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(390, 1894, 211, 'Huyện Bến Lức', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(391, 1893, 227, 'Huyện Bắc Quang', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(392, 1892, 269, 'Huyện Bắc Hà', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(393, 1891, 269, 'Huyện Bảo Yên', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(394, 1890, 246, 'Huyện Bảo Lâm', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(395, 1889, 245, 'Huyện Bạch Thông', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(396, 1888, 213, 'Huyện Ba Tri', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(397, 1887, 245, 'Huyện Ba Bể', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(398, 1886, 262, 'Huyện An Lão', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(399, 1885, 223, 'Huyện A Lưới', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(400, 1884, 210, 'Huyện Krông Ana', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(401, 1883, 252, 'Huyện Phú Tân', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(402, 1882, 223, 'Huyện Phú Lộc', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(403, 1881, 234, 'Huyện Vĩnh Lộc', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(404, 1880, 234, 'Huyện Thạch Thành', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(405, 1879, 234, 'Huyện Quan Hóa', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(406, 1878, 234, 'Huyện Mường Lát', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(407, 1877, 234, 'Huyện Hà Trung', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(408, 1876, 234, 'Thị xã Bỉm Sơn', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(409, 1875, 234, 'Huyện Yên Định', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(410, 1874, 234, 'Huyện Ngọc Lặc', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(411, 1873, 234, 'Huyện Thọ Xuân', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(412, 1872, 234, 'Huyện Thường Xuân', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(413, 1871, 234, 'Huyện Như Xuân', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(414, 1870, 234, 'Thị Xã Nghi Sơn', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(415, 1869, 226, 'Huyện Thái Thụy', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(416, 1868, 226, 'Huyện Quỳnh Phụ', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(417, 1867, 226, 'Huyện Hưng Hà', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(418, 1866, 240, 'Huyện Gò Dầu', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(419, 1865, 240, 'Huyện Bến Cầu', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(420, 1864, 240, 'Huyện Dương Minh Châu', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(421, 1863, 240, 'Huyện Tân Châu', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(422, 1862, 240, 'Huyện Tân Biên', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(423, 1861, 238, 'Huyện Vĩnh Linh', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(424, 1860, 238, 'Huyện Hướng Hóa', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(425, 1859, 237, 'Thị xã Ba Đồn', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(426, 1858, 237, 'Huyện Bố Trạch', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(427, 1857, 237, 'Huyện Lệ Thủy', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(428, 1856, 260, 'Thị Xã Sông Cầu', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(429, 1855, 261, 'Huyện Ninh Sơn', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(430, 1854, 235, 'Huyện Nghi Lộc', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(431, 1853, 235, 'Huyện Con Cuông', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(432, 1852, 235, 'Huyện Quỳ Hợp', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(433, 1851, 235, 'Huyện Nghĩa Đàn', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(434, 1850, 235, 'Thị xã Thái Hòa', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(435, 1849, 235, 'Thị xã Hoàng Mai', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(436, 1848, 235, 'Huyện Quỳnh Lưu', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(437, 1847, 235, 'Huyện Diễn Châu', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(438, 1846, 235, 'Huyện Yên Thành', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(439, 1845, 235, 'Huyện Tân Kỳ', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(440, 1844, 235, 'Huyện Anh Sơn', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(441, 1843, 235, 'Huyện Đô Lương', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(442, 1842, 235, 'Thị xã Cửa Lò', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(443, 1841, 231, 'Huyện Ý Yên', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(444, 1840, 231, 'Huyện Hải Hậu', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(445, 1839, 209, 'Huyện Bảo Lâm', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(446, 1838, 209, 'Thành phố Bảo Lộc', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(447, 1837, 209, 'Huyện Đức Trọng', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(448, 1836, 209, 'Huyện Đơn Dương', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(449, 1835, 259, 'Huyện Đắk Hà', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(450, 1834, 259, 'Huyện Kon Plông', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(451, 1833, 219, 'Huyện An Biên', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(452, 1832, 219, 'Huyện Giồng Riềng', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(453, 1831, 219, 'Huyện Tân Hiệp', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(454, 1830, 219, 'Huyện Hòn Đất', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(455, 1829, 208, 'Huyện Vạn Ninh', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(456, 1828, 268, 'Huyện Yên Mỹ', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(457, 1827, 268, 'Thị xã Mỹ Hào', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(458, 1826, 268, 'Huyện Khoái Châu', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(459, 1825, 268, 'Huyện Ân Thi', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(460, 1824, 250, 'Huyện Phụng Hiệp', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(461, 1823, 250, 'Thành phố Ngã Bảy', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(462, 1822, 224, 'Huyện Vĩnh Bảo', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(463, 1821, 224, 'Huyện Tiên Lãng', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(464, 1820, 224, 'Huyện An Lão', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(465, 1819, 224, 'Huyện An Dương', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(466, 1818, 225, 'Thị xã Kinh Môn', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(467, 1817, 225, 'Huyện Cẩm Giàng', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(468, 1816, 225, 'Huyện Bình Giang', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(469, 1815, 236, 'Huyện Cẩm Xuyên', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(470, 1814, 236, 'Thị xã Hồng Lĩnh', '2023-07-21 00:34:11', '2023-07-21 00:34:11'),
(471, 1813, 236, 'Huyện Nghi Xuân', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(472, 1812, 236, 'Huyện Hương Khê', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(473, 1811, 236, 'Huyện Kỳ Anh', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(474, 1810, 201, 'Huyện Ứng Hòa', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(475, 1809, 201, 'Huyện Thanh Oai', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(476, 1808, 201, 'Huyện Thạch Thất', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(477, 1807, 201, 'Huyện Phúc Thọ', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(478, 1806, 201, 'Huyện Mỹ Đức', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(479, 1805, 201, 'Huyện Hoài Đức', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(480, 1804, 201, 'Huyện Đan Phượng', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(481, 1803, 201, 'Huyện Ba Vì', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(482, 1802, 232, 'Thị xã Duy Tiên', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(483, 1801, 207, 'Huyện Chư Păh', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(484, 1800, 207, 'Thị xã An Khê', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(485, 1799, 207, 'Huyện Ia Pa', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(486, 1798, 207, 'Thị xã Ayun Pa', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(487, 1797, 207, 'Huyện Phú Thiện', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(488, 1796, 207, 'Huyện Chư Sê', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(489, 1795, 207, 'Huyện Chư Prông', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(490, 1794, 207, 'Huyện Đức Cơ', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(491, 1793, 207, 'Huyện Ia Grai', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(492, 1792, 241, 'Huyện Đắk Mil', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(493, 1791, 241, 'Huyện Đắk Glong', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(494, 1790, 241, 'Huyện Đắk R lấp', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(495, 1789, 210, 'Huyện Krông Bông', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(496, 1788, 210, 'Thị xã Buôn Hồ', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(497, 1787, 210, 'Huyện Krông Năng', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(498, 1786, 210, 'Huyện Ea H leo', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(499, 1785, 210, 'Huyện Cư M gar', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(500, 1784, 210, 'Huyện Buôn Ðôn', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(501, 1783, 252, 'Huyện Năm Căn', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(502, 1782, 252, 'Huyện Thới Bình', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(503, 1781, 258, 'Huyện Tuy Phong', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(504, 1780, 258, 'Huyện Bắc Bình', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(505, 1779, 258, 'Huyện Đức Linh', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(506, 1778, 258, 'Thị xã La Gi', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(507, 1777, 258, 'Huyện Hàm Thuận Bắc', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(508, 1776, 258, 'Huyện Hàm Thuận Nam', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(509, 1775, 239, 'Thị xã Phước Long', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(510, 1774, 239, 'Thị xã Bình Long', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(511, 1773, 239, 'Huyện Hớn Quản', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(512, 1772, 239, 'Huyện Chơn Thành', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(513, 1771, 262, 'Thị xã Hoài Nhơn', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(514, 1770, 262, 'Huyện Phù Cát', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(515, 1769, 262, 'Thị xã An Nhơn', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(516, 1768, 249, 'Huyện Yên Phong', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(517, 1767, 249, 'Huyện Thuận Thành', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(518, 1766, 249, 'Huyện Gia Bình', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(519, 1765, 248, 'Huyện Yên Thế', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(520, 1764, 248, 'Huyện Yên Dũng', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(521, 1763, 248, 'Huyện Việt Yên', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(522, 1762, 248, 'Huyện Tân Yên', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(523, 1761, 248, 'Huyện Sơn Động', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(524, 1760, 248, 'Huyện Lạng Giang', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(525, 1759, 248, 'Huyện Hiệp Hòa', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(526, 1758, 217, 'Huyện Châu Phú', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(527, 1757, 217, 'Huyện Chợ Mới', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(528, 1756, 217, 'Huyện Phú Tân', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(529, 1755, 217, 'Huyện Tân Châu', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(530, 1754, 217, 'Huyện An Phú', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(531, 1753, 217, 'Thành phố Châu Đốc', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(532, 1752, 217, 'Huyện Tịnh Biên', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(533, 1751, 217, 'Huyện Tri Tôn', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(534, 1750, 217, 'Huyện Thoại Sơn', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(535, 1749, 223, 'Huyện Phú Vang', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(536, 1748, 234, 'Huyện Hoằng Hóa', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(537, 1747, 234, 'Huyện Quảng Xương', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(538, 1746, 205, 'Huyện Dầu Tiếng', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(539, 1745, 228, 'Huyện Yên Sơn', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(540, 1744, 269, 'Huyện Bát Xát', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(541, 1743, 218, 'Huyện Mỹ Xuyên', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(542, 1742, 213, 'Huyện Châu Thành', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(543, 1741, 212, 'Huyện Chợ Gạo', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(544, 1740, 212, 'Huyện Châu Thành', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(545, 1739, 208, 'Huyện Diên Khánh', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(546, 1738, 242, 'Huyện Tư Nghĩa', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(547, 1737, 242, 'Huyện Sơn Tịnh', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(548, 1736, 243, 'Thị xã Điện Bàn', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(549, 1735, 243, 'Huyện Duy Xuyên', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(550, 1734, 221, 'Huyện Yên Lạc', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(551, 1733, 221, 'Huyện Vĩnh Tường', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(552, 1732, 221, 'Huyện Bình Xuyên', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(553, 1731, 244, 'Huyện Đồng Hỷ', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(554, 1730, 249, 'Thị xã Từ Sơn', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(555, 1729, 249, 'Huyện Tiên Du', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(556, 1728, 249, 'Huyện Quế Võ', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(557, 1727, 225, 'Huyện Nam Sách', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(558, 1726, 224, 'Huyện Thủy Nguyên', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(559, 1725, 216, 'Huyện Lai Vung', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(560, 1724, 216, 'Huyện Cao Lãnh', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(561, 1723, 253, 'Huyện Hòa Bình', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(562, 1722, 239, 'Huyện Đồng Phú', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(563, 1721, 240, 'Thị xã Hòa Thành', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(564, 1720, 240, 'Huyện Châu Thành', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(565, 1719, 219, 'Huyện Châu Thành', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(566, 1718, 217, 'Huyện Châu Thành', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(567, 1717, 268, 'Huyện Kim Động', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(568, 1716, 226, 'Huyện Vũ Thư', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(569, 1715, 226, 'Huyện Đông Hưng', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(570, 1714, 233, 'Huyện Yên Khánh', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(571, 1713, 233, 'Thành phố Tam Điệp', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(572, 1712, 234, 'Thành phố Sầm Sơn', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(573, 1711, 201, 'Thị xã Sơn Tây', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(574, 1710, 201, 'Huyện Thanh Trì', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(575, 1709, 206, 'Huyện Châu Đức', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(576, 1708, 204, 'Huyện Nhơn Trạch', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(577, 1707, 224, 'Quận Đồ Sơn', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(578, 1706, 224, 'Quận Dương Kinh', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(579, 1705, 204, 'Huyện Thống Nhất', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(580, 1704, 204, 'Huyện Xuân Lộc', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(581, 1703, 201, 'Huyện Gia Lâm', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(582, 1702, 204, 'Huyện Cẩm Mỹ', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(583, 1701, 206, 'Thị Xã Phú Mỹ', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(584, 1700, 204, 'Huyện Định Quán', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(585, 1699, 206, 'Huyện Xuyên Mộc', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(586, 1698, 223, 'Thị xã Hương Thủy', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(587, 1697, 223, 'Thị xã Hương Trà', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(588, 1696, 205, 'Thị xã Bến Cát', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(589, 1695, 205, 'Thị xã Tân Uyên', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(590, 1694, 204, 'Huyện Long Thành', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(591, 1693, 204, 'Huyện Tân Phú', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(592, 1692, 204, 'Thành phố Long Khánh', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(593, 1691, 204, 'Huyện Trảng Bom', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(594, 1690, 206, 'Huyện Đất Đỏ', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(595, 1689, 206, 'Huyện Long Điền', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(596, 1688, 206, 'TT Phú Mỹ - cũ', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(597, 1687, 203, 'Huyện Hòa Vang', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(598, 1686, 230, 'Thành phố Uông Bí', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(599, 1684, 244, 'Thành Phố Sông Công', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(600, 1683, 230, 'Thành phố Cẩm Phả', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(601, 1682, 269, 'Thành phố Lào Cai', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(602, 1680, 268, 'Thành phố Hưng Yên', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(603, 1678, 267, 'Thành phố Hòa Bình', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(604, 1677, 266, 'Thành phố Sơn La', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(605, 1676, 265, 'Thành phố Điện Biên Phủ', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(606, 1675, 264, 'Thành phố Lai Châu', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(607, 1674, 263, 'Thành phố Yên Bái', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(608, 1668, 216, 'Thành phố Sa Đéc', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(609, 1667, 206, 'Thành phố Bà Rịa', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(610, 1666, 258, 'Thành phố Phan Thiết', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(611, 1665, 261, 'Thành phố Phan Rang – Tháp Chàm', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(612, 1664, 208, 'Thành phố Cam Ranh', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(613, 1663, 260, 'Thành phố Tuy Hòa', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(614, 1662, 262, 'Thành phố Quy Nhơn', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(615, 1660, 259, 'Thành phố Kon Tum', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(616, 1655, 253, 'Thành phố Bạc Liêu', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(617, 1654, 252, 'Thành phố Cà Mau', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(618, 1653, 250, 'Thành phố Vị Thanh', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(619, 1644, 249, 'Thành phố Bắc Ninh', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(620, 1643, 248, 'Thành phố Bắc Giang', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(621, 1642, 247, 'Thành phố Lạng Sơn', '2023-07-21 00:34:12', '2023-07-21 00:34:12');
INSERT INTO `districts` (`id`, `DistrictID`, `ProvinceID`, `DistrictName`, `created_at`, `updated_at`) VALUES
(622, 1641, 246, 'Thành phố Cao Bằng', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(623, 1640, 245, 'Thành phố Bắc Kạn', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(624, 1639, 244, 'Thành phố Thái Nguyên', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(625, 1632, 243, 'Thành phố Hội An', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(626, 1631, 243, 'Thành phố Tam Kỳ', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(627, 1630, 242, 'Thành phố Quảng Ngãi', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(628, 1627, 241, 'Thành phố Gia Nghĩa', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(629, 1626, 240, 'Thành phố Tây Ninh', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(630, 1625, 239, 'Thành phố Đồng Xoài', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(631, 1621, 238, 'Thị xã Quảng Trị', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(632, 1620, 238, 'Thành phố Đông Hà', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(633, 1619, 237, 'Thành phố Đồng Hới', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(634, 1618, 236, 'Thành phố Hà Tĩnh', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(635, 1617, 235, 'Thành phố Vinh', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(636, 1616, 234, 'Thành phố Thanh Hóa', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(637, 1615, 233, 'Thành phố Ninh Bình', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(638, 1614, 232, 'Thành phố Phủ Lý', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(639, 1613, 231, 'Thành phố Nam Định', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(640, 1604, 230, 'Thành phố Hạ Long', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(641, 1603, 230, 'Thành phố Móng Cái', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(642, 1602, 229, 'Thành phố Việt Trì', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(643, 1601, 228, 'Thành phố Tuyên Quang', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(644, 1600, 227, 'Thành phố Hà Giang', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(645, 1599, 226, 'Thành phố Thái Bình', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(646, 1598, 225, 'Thành phố Hải Dương', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(647, 1591, 224, 'Quận Hải An', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(648, 1590, 224, 'Quận Kiến An', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(649, 1589, 224, 'Quận Hồng Bàng', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(650, 1588, 224, 'Quận Lê Chân', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(651, 1587, 224, 'Quận Ngô Quyền', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(652, 1585, 223, 'Thành phố Huế', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(653, 1583, 201, 'Huyện Sóc Sơn', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(654, 1582, 201, 'Huyện Đông Anh', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(655, 1581, 201, 'Huyện Mê Linh', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(656, 1578, 221, 'Thành phố Vĩnh Yên', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(657, 1576, 220, 'Quận Thốt Nốt', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(658, 1575, 220, 'Quận Ô Môn', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(659, 1574, 220, 'Quận Cái Răng', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(660, 1573, 220, 'Quận Bình Thủy', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(661, 1572, 220, 'Quận Ninh Kiều', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(662, 1570, 219, 'Thành phố Rạch Giá', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(663, 1568, 218, 'Thành phố Sóc Trăng', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(664, 1566, 217, 'Thành phố Long Xuyên', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(665, 1564, 216, 'Thành phố Cao Lãnh', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(666, 1562, 215, 'Thành phố Vĩnh Long', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(667, 1560, 214, 'Thành phố Trà Vinh', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(668, 1558, 213, 'Thành phố Bến Tre', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(669, 1556, 212, 'Thành phố Mỹ Tho', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(670, 1554, 211, 'Thành phố Tân An', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(671, 1552, 210, 'Thành phố Buôn Ma Thuột', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(672, 1550, 209, 'Thành phố Đà Lạt', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(673, 1548, 208, 'Thành phố Nha Trang', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(674, 1546, 207, 'Thành phố Pleiku', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(675, 1544, 206, 'Thành phố Vũng Tàu', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(676, 1542, 201, 'Quận Hà Đông', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(677, 1541, 205, 'Thành phố Thuận An', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(678, 1540, 205, 'Thành phố Dĩ An', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(679, 1538, 205, 'Thành phố Thủ Dầu Một', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(680, 1536, 204, 'Thành phố Biên Hòa', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(681, 1534, 202, 'Huyện Nhà Bè', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(682, 1533, 202, 'Huyện Bình Chánh', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(683, 1531, 203, 'Quận Cẩm Lệ', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(684, 1530, 203, 'Quận Liên Chiểu', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(685, 1529, 203, 'Quận Ngũ Hành Sơn', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(686, 1528, 203, 'Quận Sơn Trà', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(687, 1527, 203, 'Quận Thanh Khê', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(688, 1526, 203, 'Quận Hải Châu', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(689, 1493, 201, 'Quận Thanh Xuân', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(690, 1492, 201, 'Quận Tây Hồ', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(691, 1491, 201, 'Quận Long Biên', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(692, 1490, 201, 'Quận Hoàng Mai', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(693, 1489, 201, 'Quận Hoàn Kiếm', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(694, 1488, 201, 'Quận Hai Bà Trưng', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(695, 1486, 201, 'Quận Đống Đa', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(696, 1485, 201, 'Quận Cầu Giấy', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(697, 1484, 201, 'Quận Ba Đình', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(698, 1482, 201, 'Quận Bắc Từ Liêm', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(699, 1463, 202, 'Quận Thủ Đức', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(700, 1462, 202, 'Quận Bình Thạnh', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(701, 1461, 202, 'Quận Gò Vấp', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(702, 1460, 202, 'Huyện Củ Chi', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(703, 1459, 202, 'Huyện Hóc Môn', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(704, 1458, 202, 'Quận Bình Tân Update', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(705, 1457, 202, 'Quận Phú Nhuận', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(706, 1456, 202, 'Quận Tân Phú', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(707, 1455, 202, 'Quận Tân Bình', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(708, 1454, 202, 'Quận 12', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(709, 1453, 202, 'Quận 11', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(710, 1452, 202, 'Quận 10', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(711, 1451, 202, 'Quận 9', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(712, 1450, 202, 'Quận 8', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(713, 1449, 202, 'Quận 7', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(714, 1448, 202, 'Quận 6', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(715, 1447, 202, 'Quận 5', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(716, 1446, 202, 'Quận 4', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(717, 1444, 202, 'Quận 3', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(718, 1443, 202, 'Quận 2', '2023-07-21 00:34:12', '2023-07-21 00:34:12'),
(719, 1442, 202, 'Quận 1', '2023-07-21 00:34:12', '2023-07-21 00:34:12');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2020_12_07_132053_create_categories_table', 1),
(4, '2020_12_07_132151_create_products_table', 1),
(5, '2020_12_08_062736_create_products_table', 2),
(6, '2014_10_12_100000_create_password_resets_table', 3),
(7, '2020_12_20_060054_create_bills_table', 4),
(8, '2020_12_20_060151_create_bill_details_table', 4),
(9, '2020_12_20_085208_create_customers_table', 5),
(10, '2020_12_22_194654_create_bills_table', 6),
(11, '2020_12_22_194752_create_bill_details_table', 6),
(12, '2020_12_22_194901_create_customers_table', 6),
(13, '2020_12_23_034626_create_bills_table', 7),
(14, '2020_12_23_034753_create_bill_details_table', 7),
(15, '2020_12_23_034941_create_customers_table', 7),
(16, '2020_12_24_052010_create_banner_table', 8),
(17, '2020_12_27_001651_create_replies_table', 9),
(18, '2020_12_27_001843_create_comments_table', 9),
(19, '2021_01_10_090247_create_productdetails_table', 10),
(20, '2023_07_17_154335_add_columns_to_bills', 11),
(21, '2023_07_21_062703_create_provinces_table', 12),
(22, '2023_07_21_072820_create_districts_table', 13),
(24, '2023_07_23_160125_create_addresses_table', 14),
(25, '2023_07_23_170246_change_address_to_id_address_in_customers_table', 15),
(26, '2023_07_23_170444_change_datatype_stringtoint__idaddress_customers', 16),
(27, '2023_07_23_170842_add_foreign_key_to_customers_table', 17),
(29, '2023_07_23_175135_add_address_to_addresses_table', 18),
(30, '2023_07_25_181421_create_shippings_table', 19),
(31, '2023_07_26_115946_add_soldtime_to_bills_table', 20);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `productdetails`
--

CREATE TABLE `productdetails` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `productID` bigint(20) UNSIGNED NOT NULL,
  `brand` varchar(255) NOT NULL,
  `guarantee` varchar(255) NOT NULL,
  `productImage1` varchar(255) DEFAULT NULL,
  `productImage2` varchar(255) DEFAULT NULL,
  `productImage3` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `productdetails`
--

INSERT INTO `productdetails` (`id`, `productID`, `brand`, `guarantee`, `productImage1`, `productImage2`, `productImage3`, `description`, `created_at`, `updated_at`) VALUES
(2, 19, 'INTEL', '36', 'cpui7.webp', 'cpui7-2.webp', 'cpui7-3.webp', '<h4 class=\"font-weight-bold mb-4\">Hiệu suất ở cấp độ mới</h4>\r\n         <p>Bộ xử lý Intel Core i7-9700 thế hệ thứ 9 đưa hiệu năng máy tính để bàn chính lên một cấp độ hoàn toàn mới. i7-9700 với bộ nhớ cache 12MB và công nghệ Intel® Turbo Boost 2.0 điều chỉnh tần số turbo tối đa lên tới 4.70 GHz. Hỗ trợ đa nhiệm với 8 luồng hiệu suất cao được cung cấp bởi 8 lõi với công nghệ siêu phân luồng Intel® (Công nghệ Intel® HT) để giải quyết khối lượng công việc đòi hỏi khắt khe nhất.</p>\r\n              <img src=\"cpu.jpg\" alt=\"\" class=\"img-fluid mx-auto d-block\">\r\n              <h4 class=\"font-weight-bold mb-4\">Các tính năng chính trên Intel Core i7-9700:</h4>\r\n              <ul>\r\n                <li>Tăng tốc dữ liệu khi được ghép nối với bộ nhớ Intel® Optane ™ để truy xuất dữ liệu bạn sử dụng nhiều nhất một cách nhanh chóng.</li>\r\n                <li>Hỗ trợ công nghệ bộ nhớ RAM DDR4, cho phép các hệ thống có thể nâng cấp lên tới 64GB và tốc độ truyền tải lên tới 2666 MT/s.</li>\r\n                <li>Hỗ trợ chipset Intel® Z390 bao gồm khả năng kết nối chưa từng có với tất cả các thiết bị của bạn có tích hợp USB 3.1 Gen 2, Intel® Wireless-AC và hỗ trợ tốc độ Gigabit Wi-Fi.</li>\r\n                <li>Tương thích với chipset Intel® 300 series</li>\r\n              </ul>\r\n              \r\n\r\n  \r\n<div class=\"collapse\">\r\n  <h4 class=\"font-weight-bold mb-4\">Cung cấp sức mạnh xử lý tối ưu</h4>\r\n  <p>Intel Core i7-9700 cung cấp sức mạnh xử lý mạnh mẽ để chơi game, ghi hình hoặc livestream vượt trội hơn so với các thế hệ trước. Công nghệ Intel® Quick Sync Video để phát livestream trực tuyến, ghi hình và xử lý đa nhiệm mà không bị gián đoạn. Khởi động hệ thống với công nghệ bộ nhớ Intel® Optane™ giúp tăng tốc tải và khởi chạy các ứng dụng và trò chơi chỉ trong vài giây.</p>\r\n  <p>Intel Core i7-9700 còn được tích hợp các công nghệ truyền thông tiên tiến mang lại nội dung chất lượng cao cho máy tính để bàn của bạn, bao gồm:</p>\r\n  <p>- Mã hóa/giải mã 10-bit HEVC, giải mã 10-bit VP9:</p>\r\n  <ul>\r\n    <li>Truyền phát trực tiếp các nội dung 4K cao cấp một cách mượt mà từ các nhà cung cấp trực tuyến hàng đầu.</li>\r\n    <li>Cung cấp trải nghiệm xem video 4K trên màn hình kích thước lớn của bạn.</li>\r\n  </ul>\r\n  <p>- Dải động cao (HDR) và Rec. 2020 (Gam màu rộng) cung cấp trải nghiệm xem hình ảnh và video nâng cao.</p>\r\n</div>', '2021-01-10 04:22:53', '2021-01-12 15:20:04'),
(3, 20, 'INTEL', '36', 'cpui5.webp', 'cpui52.webp', 'cpui5-3.webp', '<h3 style=\"text-align: center; \"><b>Giới thiệu về sản phẩm</b></h3><h5 style=\"text-align: center; \">CPU intel Core&nbsp;<a href=\"https://phongvu.vn/bo-vi-xu-ly-cpu-intel-core-i5-9400f-9m-cache-up-to-4-10ghz-p36902.html\" style=\"color: rgb(13, 110, 253); text-decoration-line: underline; font-family: Roboto, sans-serif; font-size: 14px; text-align: justify; background-color: rgb(255, 255, 255);\"><span style=\"color: rgb(51, 51, 51);\">i5-9400F</span></a><span style=\"color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;đã lên kệ tại Phong Vũ với 6 nhân thuộc dòng Coffee Lake Refresh và được sản xuất trên tiến trình xử lý 14nm của hãng. CPU Intel Core i5-9400F với hậu tố F khá mới mẻ đến từ việc lược giản GPU onboard với I5-9400.&nbsp;CPU Intel Core i5-9400F hướng đến phục vụ các PC hiệu năng trung bình có nhu cầu khai thác khoảng&nbsp;6 nhân vật lý và sở hữu card màn hình rời.&nbsp;</span></h5><p style=\"font-family: &quot;Source Sans Pro&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; color: rgb(0, 0, 0); text-align: center;\"><br></p><h5 style=\"text-align: center;\"><span style=\"text-align: justify;\"><font color=\"#333333\" face=\"Roboto, sans-serif\" style=\"\"><br></font></span></h5><h5 style=\"text-align: center; \"><b><br></b></h5>\r\n\r\n<img src=\"../public/frontend/image/gt/79.-CPU-Intel-i5-9400F.jpg\" alt=\"\" style=\"height:400px; float: left;\">  \r\n<div class=\"collapse\">\r\nCPU Core i5-9400F có nhân nhưng không có Hyper-Threading (siêu phân luồng) hoạt động ở mức 2.9 – 4.1 GHz, 9 MB cache – bộ nhớ đệm. Hỗ trợ bộ nhớ RAM DDR4-2666 và đòi hỏi công suất TDP là 65 W. Core i5-9400F là một trong những bộ xử lý sáu nhân phổ thông của Intel dành cho máy tính để bàn và do đó sẽ là một trong những CPU rẻ nhất có sáu nhân.\r\n\r\nTrở lại vào tháng 10, Intel đã chính thức công bố ba bộ xử lý Gen Core thứ 9 cho máy tính để bàn: Core i9-9900K và Core i7-9700K tám nhân, cũng như Core i5-9600K sáu nhân. Có giá chát chúa như thường lệ, những CPU này đa nhân, tần số cao và mở khóa ép xung nhắm đến những người đam mê có xu hướng chi tiêu rất nhiều cho phần cứng nói chung. Ngược lại, Core i5-9400F đi kèm với hệ số nhân bị khóa và TDP 65 W, do đó nhắm đến các dàn máy tính PC phổ thông với các card đồ họa rời.\r\n\r\n\r\n </div>', '2021-01-10 04:40:33', '2021-01-14 23:58:01');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `productID` bigint(20) UNSIGNED NOT NULL,
  `categoryID` bigint(20) UNSIGNED NOT NULL,
  `productName` varchar(255) NOT NULL,
  `productImage` varchar(255) DEFAULT NULL,
  `listPrice` int(11) NOT NULL,
  `discountPercent` tinyint(4) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`productID`, `categoryID`, `productName`, `productImage`, `listPrice`, `discountPercent`, `description`, `created_at`, `updated_at`) VALUES
(19, 2, 'CPU INTEL Core i7-9700 (8C/8T, 3.00 GHz up to 4.70 GHz, 12MB) - 1151-v2', 'cpu.jpg', 8990000, 20, '<ul><li><b>Socket: 1151-v2, Intel Core thế hệ thứ 9</b></li><li><b>Tốc độ: 3.00 GHz up to 4.70 GHz (8nhân, 8 luồng)</b></li><li><b>Bộ nhớ đệm: 12MB</b></li><li><b>Chip đồ họa tích hợp: Intel UHD Graphics 630</b><br><br><br><br></li></ul>', '2020-12-11 09:32:29', '2021-01-12 14:35:27'),
(20, 2, 'CPU Intel Core i5-9400F (6C/6T, 2.9 - 4.1 GHz, 9MB) - LGA 1151-v2', 'cpu1.jpg', 3790000, 2, '<ul><li><span style=\"color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 14px;\"><b>Socket: LGA 1151-v2 , Intel Core thế hệ thứ 9</b></span></li><li><span style=\"color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 14px;\"><b>Tốc độ xử lý: 2.9 - 4.1 GHz ( 6 nhân, 6 luồng</b></span></li><li><span style=\"color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 14px;\"><b>Bộ nhớ đệm: 9MB<br></b></span><br></li></ul>', '2020-12-11 09:38:35', '2021-01-14 23:36:11'),
(21, 1, 'Mainboard GIGABYTE B365M AORUS ELITE', 'main1.png', 2350000, 8, NULL, '2020-12-11 09:40:01', '2020-12-11 09:40:01'),
(22, 1, 'Mainboard GIGABYTE GA-A320M-S2H', 'main5.jpg', 1290000, 3, NULL, '2020-12-11 09:41:17', '2020-12-11 11:16:40'),
(23, 6, 'Card màn hình ASUS ROG Strix RTX 2060 8GB GAMING', 'vga.jpg', 12990000, 3, NULL, '2020-12-11 09:44:16', '2020-12-11 09:44:16'),
(24, 6, 'Card màn hình MSI GeForce GTX 1050Ti 4GB GDDR5 OCV1', 'vga2.jpg', 4890000, 2, NULL, '2020-12-11 09:47:52', '2020-12-11 09:47:52'),
(25, 9, 'Màn hình Acer 21.5\" HA220QA', 'monitor.jpg', 2910000, 3, NULL, '2020-12-11 10:30:34', '2020-12-11 11:19:58'),
(26, 9, 'Màn Hình HP 21.5\" 22fw 3KS61AA', 'monitor2.jpg', 3290000, 20, NULL, '2020-12-11 10:32:06', '2020-12-11 11:21:32'),
(31, 9, 'Màn Hình cong Samsung 23.5\" LC24F390FHEXXV ', 'mn7.jpg', 3190000, 2, NULL, '2020-12-25 05:23:08', '2020-12-25 06:57:58'),
(32, 9, 'Màn Hình cong Samsung 27\" LC27F397FHEXXV ', 'mn4.jpg', 4790000, 2, '<p><br></p>', '2020-12-25 05:26:05', '2020-12-25 05:26:05'),
(33, 7, 'Case máy tính Sama Jax 10', 'case8.jpg', 690000, 6, NULL, '2020-12-25 05:32:33', '2020-12-25 05:32:33'),
(34, 7, 'Case máy tính Sama M1', 'case7.jpg', 490000, 6, NULL, '2020-12-25 05:35:06', '2020-12-25 05:35:06'),
(35, 7, 'Case máy tính Sama Shadow', 'case3.jpg', 890000, 6, NULL, '2020-12-25 05:36:28', '2020-12-25 05:41:08'),
(36, 7, 'Case máy tính XIGMATEK Gemini Queen - Mid Tower (Hồng)', 'case4.png', 790000, 10, NULL, '2020-12-25 05:38:21', '2020-12-25 05:38:21'),
(41, 1, 'Mainboard MSI H310M PRO-VDH PLUS', 'main33.jpg', 1600000, 10, NULL, '2021-01-14 23:12:01', '2021-01-14 23:12:01'),
(42, 1, 'Mainboard GIGABYTE B365M-DS3H', 'main2.jpg', 1690000, 2, NULL, '2021-01-14 23:13:28', '2021-01-14 23:13:28'),
(43, 1, 'Mainboard ASUS EX-H310M-V3 R2.0', 'main6.jfif', 1690000, 2, NULL, '2021-01-14 23:14:20', '2021-01-14 23:14:20'),
(44, 1, 'Mainboard GIGABYTE GA-H81M-DS2', 'main7.jpg', 2210000, 2, NULL, '2021-01-14 23:15:06', '2021-01-14 23:15:06'),
(45, 1, 'Mainboard MSI B450 TOMAHAWK MAX', 'main8.jfif', 1190000, 2, NULL, '2021-01-14 23:15:49', '2021-01-14 23:15:49'),
(46, 1, 'Mainboard GIGABYTE GA-A320M-S2H SKU: 1810767', 'main5.jpg', 1790000, 2, NULL, '2021-01-14 23:17:13', '2021-01-14 23:17:13'),
(47, 2, 'CPU Intel Core i3-9100F(4C/4T, 3.60 GHz)', 'cpu3.jpg', 2100000, 2, NULL, '2021-01-14 23:18:28', '2021-01-14 23:18:28'),
(48, 2, 'CPU Intel Pentium G5400 (2C/4T, 3.7 GHz, 4MB)', 'cpu2.jpg', 1600000, 2, NULL, '2021-01-14 23:19:17', '2021-01-14 23:20:20'),
(49, 2, 'CPU INTEL Core i5-10400 (6C/12T, 2.90 GHz Up to 4.30 GHz, 12MB) - 1200', 'cpu4.jpg', 2999999, 2, NULL, '2021-01-14 23:21:13', '2021-01-14 23:21:13'),
(50, 2, 'CPU AMD Ryzen 3 3200G (4C/4T, 3.6 GHz - 4.0 GHz', 'cpu5.jfif', 3090000, 2, NULL, '2021-01-14 23:21:52', '2021-01-14 23:24:28'),
(51, 2, 'CPU INTEL Core i7-9200 (8C/8T, 3.00 GHz up to 4.7', 'cpu11.jpeg', 2900000, 2, NULL, '2021-01-14 23:23:05', '2021-01-14 23:23:05'),
(52, 2, 'CPU AMD Ryzen 5 3400G (4C/8T, 3.7 GHz - 4.2 GHz, 4MB) - AM4', 'cpu7.jpeg', 3290000, 2, NULL, '2021-01-14 23:23:38', '2021-01-14 23:26:04'),
(53, 6, 'Card màn hình MSI GeForce GTX 1050Ti 4GB GDDR5', 'card1.jpg', 9000000, 2, NULL, '2021-01-14 23:31:11', '2021-01-14 23:31:11'),
(54, 6, 'Card màn hình GIGABYTE GeForce GTX 1650 4GB', 'card2.png', 11000000, 2, NULL, '2021-01-14 23:32:05', '2021-01-14 23:32:05');

-- --------------------------------------------------------

--
-- Table structure for table `provinces`
--

CREATE TABLE `provinces` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ProvinceID` int(11) NOT NULL,
  `ProvinceName` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `provinces`
--

INSERT INTO `provinces` (`id`, `ProvinceID`, `ProvinceName`, `created_at`, `updated_at`) VALUES
(1, 269, 'Lào Cai', '2023-07-21 00:26:27', '2023-07-21 00:26:27'),
(2, 268, 'Hưng Yên', '2023-07-21 00:26:27', '2023-07-21 00:26:27'),
(3, 267, 'Hòa Bình', '2023-07-21 00:26:27', '2023-07-21 00:26:27'),
(4, 266, 'Sơn La', '2023-07-21 00:26:27', '2023-07-21 00:26:27'),
(5, 265, 'Điện Biên', '2023-07-21 00:26:27', '2023-07-21 00:26:27'),
(6, 264, 'Lai Châu', '2023-07-21 00:26:27', '2023-07-21 00:26:27'),
(7, 263, 'Yên Bái', '2023-07-21 00:26:27', '2023-07-21 00:26:27'),
(8, 262, 'Bình Định', '2023-07-21 00:26:27', '2023-07-21 00:26:27'),
(9, 261, 'Ninh Thuận', '2023-07-21 00:26:27', '2023-07-21 00:26:27'),
(10, 260, 'Phú Yên', '2023-07-21 00:26:27', '2023-07-21 00:26:27'),
(11, 259, 'Kon Tum', '2023-07-21 00:26:27', '2023-07-21 00:26:27'),
(12, 258, 'Bình Thuận', '2023-07-21 00:26:27', '2023-07-21 00:26:27'),
(13, 253, 'Bạc Liêu', '2023-07-21 00:26:27', '2023-07-21 00:26:27'),
(14, 252, 'Cà Mau', '2023-07-21 00:26:27', '2023-07-21 00:26:27'),
(15, 250, 'Hậu Giang', '2023-07-21 00:26:27', '2023-07-21 00:26:27'),
(16, 249, 'Bắc Ninh', '2023-07-21 00:26:27', '2023-07-21 00:26:27'),
(17, 248, 'Bắc Giang', '2023-07-21 00:26:27', '2023-07-21 00:26:27'),
(18, 247, 'Lạng Sơn', '2023-07-21 00:26:27', '2023-07-21 00:26:27'),
(19, 246, 'Cao Bằng', '2023-07-21 00:26:27', '2023-07-21 00:26:27'),
(20, 245, 'Bắc Kạn', '2023-07-21 00:26:27', '2023-07-21 00:26:27'),
(21, 244, 'Thái Nguyên', '2023-07-21 00:26:27', '2023-07-21 00:26:27'),
(22, 243, 'Quảng Nam', '2023-07-21 00:26:27', '2023-07-21 00:26:27'),
(23, 242, 'Quảng Ngãi', '2023-07-21 00:26:27', '2023-07-21 00:26:27'),
(24, 241, 'Đắk Nông', '2023-07-21 00:26:27', '2023-07-21 00:26:27'),
(25, 240, 'Tây Ninh', '2023-07-21 00:26:27', '2023-07-21 00:26:27'),
(26, 239, 'Bình Phước', '2023-07-21 00:26:27', '2023-07-21 00:26:27'),
(27, 238, 'Quảng Trị', '2023-07-21 00:26:27', '2023-07-21 00:26:27'),
(28, 237, 'Quảng Bình', '2023-07-21 00:26:27', '2023-07-21 00:26:27'),
(29, 236, 'Hà Tĩnh', '2023-07-21 00:26:27', '2023-07-21 00:26:27'),
(30, 235, 'Nghệ An', '2023-07-21 00:26:27', '2023-07-21 00:26:27'),
(31, 234, 'Thanh Hóa', '2023-07-21 00:26:27', '2023-07-21 00:26:27'),
(32, 233, 'Ninh Bình', '2023-07-21 00:26:27', '2023-07-21 00:26:27'),
(33, 232, 'Hà Nam', '2023-07-21 00:26:27', '2023-07-21 00:26:27'),
(34, 231, 'Nam Định', '2023-07-21 00:26:27', '2023-07-21 00:26:27'),
(35, 230, 'Quảng Ninh', '2023-07-21 00:26:27', '2023-07-21 00:26:27'),
(36, 229, 'Phú Thọ', '2023-07-21 00:26:27', '2023-07-21 00:26:27'),
(37, 228, 'Tuyên Quang', '2023-07-21 00:26:27', '2023-07-21 00:26:27'),
(38, 227, 'Hà Giang', '2023-07-21 00:26:27', '2023-07-21 00:26:27'),
(39, 226, 'Thái Bình', '2023-07-21 00:26:27', '2023-07-21 00:26:27'),
(40, 225, 'Hải Dương', '2023-07-21 00:26:27', '2023-07-21 00:26:27'),
(41, 224, 'Hải Phòng', '2023-07-21 00:26:27', '2023-07-21 00:26:27'),
(42, 223, 'Thừa Thiên - Huế', '2023-07-21 00:26:27', '2023-07-21 00:26:27'),
(43, 221, 'Vĩnh Phúc', '2023-07-21 00:26:27', '2023-07-21 00:26:27'),
(44, 220, 'Cần Thơ', '2023-07-21 00:26:27', '2023-07-21 00:26:27'),
(45, 219, 'Kiên Giang', '2023-07-21 00:26:27', '2023-07-21 00:26:27'),
(46, 218, 'Sóc Trăng', '2023-07-21 00:26:27', '2023-07-21 00:26:27'),
(47, 217, 'An Giang', '2023-07-21 00:26:27', '2023-07-21 00:26:27'),
(48, 216, 'Đồng Tháp', '2023-07-21 00:26:27', '2023-07-21 00:26:27'),
(49, 215, 'Vĩnh Long', '2023-07-21 00:26:27', '2023-07-21 00:26:27'),
(50, 214, 'Trà Vinh', '2023-07-21 00:26:27', '2023-07-21 00:26:27'),
(51, 213, 'Bến Tre', '2023-07-21 00:26:27', '2023-07-21 00:26:27'),
(52, 212, 'Tiền Giang', '2023-07-21 00:26:27', '2023-07-21 00:26:27'),
(53, 211, 'Long An', '2023-07-21 00:26:27', '2023-07-21 00:26:27'),
(54, 210, 'Đắk Lắk', '2023-07-21 00:26:27', '2023-07-21 00:26:27'),
(55, 209, 'Lâm Đồng', '2023-07-21 00:26:27', '2023-07-21 00:26:27'),
(56, 208, 'Khánh Hòa', '2023-07-21 00:26:27', '2023-07-21 00:26:27'),
(57, 207, 'Gia Lai', '2023-07-21 00:26:27', '2023-07-21 00:26:27'),
(58, 206, 'Bà Rịa - Vũng Tàu', '2023-07-21 00:26:27', '2023-07-21 00:26:27'),
(59, 205, 'Bình Dương', '2023-07-21 00:26:27', '2023-07-21 00:26:27'),
(60, 204, 'Đồng Nai', '2023-07-21 00:26:27', '2023-07-21 00:26:27'),
(61, 203, 'Đà Nẵng', '2023-07-21 00:26:27', '2023-07-21 00:26:27'),
(62, 202, 'Hồ Chí Minh', '2023-07-21 00:26:27', '2023-07-21 00:26:27'),
(63, 201, 'Hà Nội', '2023-07-21 00:26:27', '2023-07-21 00:26:27');

-- --------------------------------------------------------

--
-- Table structure for table `replies`
--

CREATE TABLE `replies` (
  `id` int(10) UNSIGNED NOT NULL,
  `comment_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `reply` text NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bill_id` int(10) UNSIGNED NOT NULL,
  `order_code` varchar(255) NOT NULL,
  `trans_type` varchar(255) NOT NULL,
  `total_fee` int(11) NOT NULL,
  `expected_delivery_time` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `typeuser` varchar(255) DEFAULT 'user',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `typeuser`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'nguyenhuuminhluan@gmail.com', NULL, '$2y$10$ieifSEbYK4IyUMlA7yCWbOnnnu3g71kTeMHoNXJULkzb.8gKOQkfi', NULL, 'admin', NULL, '2023-07-26 06:03:35');

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_category`
-- (See below for the actual view)
--
CREATE TABLE `v_category` (
`countcate` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_quantity`
-- (See below for the actual view)
--
CREATE TABLE `v_quantity` (
`categoryName` varchar(255)
,`quantity` bigint(21)
);

-- --------------------------------------------------------

--
-- Structure for view `v_category`
--
DROP TABLE IF EXISTS `v_category`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_category`  AS SELECT count(`categories`.`categoryID`) AS `countcate` FROM `categories` ;

-- --------------------------------------------------------

--
-- Structure for view `v_quantity`
--
DROP TABLE IF EXISTS `v_quantity`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_quantity`  AS SELECT `categories`.`categoryName` AS `categoryName`, count(`products`.`productID`) AS `quantity` FROM (`categories` join `products` on(`products`.`categoryID` = `categories`.`categoryID`)) GROUP BY `categories`.`categoryName` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`bill_id`),
  ADD KEY `customerID` (`customerID`);

--
-- Indexes for table `bill_details`
--
ALTER TABLE `bill_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productID` (`productID`),
  ADD KEY `bill_id` (`bill_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`categoryID`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productID` (`productID`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userID` (`userID`),
  ADD KEY `customers_idaddress_foreign` (`IdAddress`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `productdetails`
--
ALTER TABLE `productdetails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productID` (`productID`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`productID`),
  ADD KEY `products_categoryid_foreign` (`categoryID`);

--
-- Indexes for table `provinces`
--
ALTER TABLE `provinces`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `replies`
--
ALTER TABLE `replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shippings_bill_id_foreign` (`bill_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `bills`
--
ALTER TABLE `bills`
  MODIFY `bill_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `bill_details`
--
ALTER TABLE `bill_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `categoryID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=720;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `productdetails`
--
ALTER TABLE `productdetails`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `productID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `provinces`
--
ALTER TABLE `provinces`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `replies`
--
ALTER TABLE `replies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`productID`) REFERENCES `products` (`productID`);

--
-- Constraints for table `customers`
--
ALTER TABLE `customers`
  ADD CONSTRAINT `customers_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `customers_idaddress_foreign` FOREIGN KEY (`IdAddress`) REFERENCES `addresses` (`id`);

--
-- Constraints for table `productdetails`
--
ALTER TABLE `productdetails`
  ADD CONSTRAINT `productdetails_ibfk_1` FOREIGN KEY (`productID`) REFERENCES `products` (`productID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
