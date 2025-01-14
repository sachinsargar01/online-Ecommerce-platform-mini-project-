-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 08, 2024 at 09:21 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopping`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', '1455494c9f58563769b601366047c030', '2024-04-02 16:21:18', '29-11-2024 05:47:22 PM'),
(2, 'sachin', 'Sachin@123', '2024-12-08 08:19:36', '');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext DEFAULT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(9, 'Mobiles', '', '2024-11-29 18:17:47', NULL),
(10, 'Fashion', '', '2024-11-29 18:20:25', NULL),
(11, 'Electronics', '', '2024-11-29 18:20:38', NULL),
(12, 'Grocery', '', '2024-11-29 18:21:40', NULL),
(13, 'Beauty', '', '2024-11-29 18:23:08', NULL),
(14, 'iphone', '', '2024-11-29 18:43:15', NULL),
(15, 'TV', '', '2024-11-29 19:21:42', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `userId`, `productId`, `quantity`, `orderDate`, `paymentMethod`, `orderStatus`) VALUES
(1, 1, '3', 2, '2024-05-22 06:01:35', 'Debit / Credit card', 'Delivered'),
(2, 1, '16', 2, '2024-05-22 06:01:35', 'Debit / Credit card', NULL),
(3, 4, '15', 1, '2024-05-23 13:31:52', 'COD', 'in Process'),
(4, 5, '15', 1, '2024-06-05 01:04:45', 'COD', 'Delivered'),
(5, 6, '2', 1, '2024-11-27 20:08:36', 'Debit / Credit card', 'in Process'),
(6, 1, '23', 1, '2024-11-29 21:36:36', 'Internet Banking', NULL),
(7, 1, '24', 1, '2024-11-29 21:37:55', 'Debit / Credit card', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ordertrackhistory`
--

CREATE TABLE `ordertrackhistory` (
  `id` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ordertrackhistory`
--

INSERT INTO `ordertrackhistory` (`id`, `orderId`, `status`, `remark`, `postingDate`) VALUES
(1, 1, 'in Process', 'Item is packed. Ready for dispatched.', '2024-05-22 06:32:29'),
(2, 1, 'Delivered', 'Product is delivered to the customer.', '2024-05-22 06:32:53'),
(3, 3, 'in Process', 'Product is packed. Dispactched soon', '2024-05-23 13:50:53'),
(4, 3, 'in Process', 'Product is in transit.\r\n', '2024-05-23 13:51:13'),
(5, 4, 'in Process', 'Item is packed', '2024-06-05 01:05:26'),
(6, 4, 'in Process', 'In Transit', '2024-06-05 01:05:34'),
(7, 4, 'Delivered', 'Delivered to the customer', '2024-06-05 01:05:45'),
(8, 5, 'in Process', 'ok', '2024-11-27 20:11:19');

-- --------------------------------------------------------

--
-- Table structure for table `productreviews`
--

CREATE TABLE `productreviews` (
  `id` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `review` longtext DEFAULT NULL,
  `reviewDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subCategory` int(11) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productCompany` varchar(255) DEFAULT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `productPriceBeforeDiscount` int(11) DEFAULT NULL,
  `productDescription` longtext DEFAULT NULL,
  `productImage1` varchar(255) DEFAULT NULL,
  `productImage2` varchar(255) DEFAULT NULL,
  `productImage3` varchar(255) DEFAULT NULL,
  `shippingCharge` int(11) DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(23, 9, 17, 'iPhone 16 128 GB: 5G Mobile Phone with Camera Control, A18 Chip and a Big Boost in Battery Life. Works with AirPods; Black', 'Apple', 45490, 45490, '<h1 class=\"a-size-base-plus a-text-bold\" style=\"box-sizing: border-box; padding: 0px 0px 4px; margin-bottom: 0px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 16px !important; line-height: 24px !important;\"><br></h1><table class=\"a-normal a-spacing-micro\" style=\"width: 296.229px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255); margin-bottom: 0px !important;\"><tbody style=\"box-sizing: border-box;\"><tr class=\"a-spacing-small po-brand\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 0px 3px 3px 0px; margin-right: 0px; width: 77.5521px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Brand</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 0px 0px 3px 3px; margin-right: 0px; width: 218.677px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">Apple</span></td></tr><tr class=\"a-spacing-small po-operating_system\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 77.5521px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Operating System</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 218.677px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">iOS 14</span></td></tr><tr class=\"a-spacing-small po-memory_storage_capacity\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 77.5521px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Memory Storage Capacity</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 218.677px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">128 GB</span></td></tr><tr class=\"a-spacing-small po-display.size\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 77.5521px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Screen Size</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 218.677px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">6.1 Inches</span></td></tr><tr class=\"a-spacing-small po-resolution\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 0px 0px; margin-right: 0px; width: 77.5521px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Resolution</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 0px 3px; margin-right: 0px; width: 218.677px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">4K</span></td></tr></tbody></table><h1 class=\"a-size-base-plus a-text-bold\" style=\"box-sizing: border-box; padding: 0px 0px 4px; margin-bottom: 0px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 16px !important; line-height: 24px !important;\">About this item</h1><ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 18px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\"><li class=\"a-spacing-mini\" style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; color: var(--__N4QdCheV6mGo,#0f1111);\">15 cm (6.1-inch) Super Retina XDR display</span></li><li class=\"a-spacing-mini\" style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; color: var(--__N4QdCheV6mGo,#0f1111);\">Cinematic mode adds shallow depth of field and shifts focus automatically in your videos</span></li><li class=\"a-spacing-mini\" style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; color: var(--__N4QdCheV6mGo,#0f1111);\">Advanced dual-camera system with 12MP Wide and Ultra Wide cameras; Photographic Styles, Smart HDR 4, Night mode, 4K Dolby Vision HDR recording</span></li><li class=\"a-spacing-mini\" style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; color: var(--__N4QdCheV6mGo,#0f1111);\">12MP TrueDepth front camera with Night mode, 4K Dolby Vision HDR recording</span></li><li class=\"a-spacing-mini\" style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; color: var(--__N4QdCheV6mGo,#0f1111);\">A15 Bionic chip for lightning-fast performance</span></li></ul>', 'iphone131.jpg', 'iphone132.jpg', 'iphone133.jpg', 40, 'In Stock', '2024-11-29 18:47:27', NULL),
(24, 9, 17, 'iPhone 16 128 GB: 5G Mobile Phone with Camera Control, A18 Chip and a Big Boost in Battery Life. Works with AirPods; Ultramarine', 'Apple', 77000, 77999, '<ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 18px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\"><li class=\"a-spacing-mini\" style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; color: var(--__N4QdCheV6mGo,#0f1111);\">BUILT FOR APPLE INTELLIGENCE — Apple Intelligence is the personal intelligence system that helps you write, express yourself and get things done effortlessly. With groundbreaking privacy protections, it gives you peace of mind that no one else can access your data — not even Apple.</span></li><li class=\"a-spacing-mini\" style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; color: var(--__N4QdCheV6mGo,#0f1111);\">TAKE TOTAL CAMERA CONTROL — Camera Control gives you an easier way to quickly access camera tools, like zoom or depth of field, so you can take the perfect shot in record time.</span></li><li class=\"a-spacing-mini\" style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; color: var(--__N4QdCheV6mGo,#0f1111);\">GET FURTHER AND CLOSER — The improved Ultra Wide camera with autofocus lets you take incredibly detailed macro photos and videos. Use the 48MP Fusion camera for stunning high-resolution images, and zoom in with the 2x optical-quality Telephoto.</span></li><li class=\"a-spacing-mini\" style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; color: var(--__N4QdCheV6mGo,#0f1111);\">PHOTOGRAPHIC STYLES — The latest-generation Photographic Styles give you greater creative flexibility, so you can make every photo even more you. And you can reverse any of those styles anytime you want.</span></li><li class=\"a-spacing-mini\" style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; color: var(--__N4QdCheV6mGo,#0f1111);\">SUPER-SMART A18 CHIP — A18 jumps two generations ahead of the A16 Bionic chip in iPhone 15. It enables Apple Intelligence, powers advanced photo and video features, and supports console-level gaming, with exceptional power efficiency.</span></li></ul>', 'iphone161.jpg', 'iphone162.jpg', 'iphone163.jpg', 40, 'In Stock', '2024-11-29 18:59:42', NULL),
(25, 11, 18, 'SAMSUNG 139 cm (55 inches) Metallic Bezel-Less Series 4K Ultra HD Smart LED Google TV 55V6B (Black)', 'samsung', 26990, 29, '<table class=\"a-normal a-spacing-micro\" style=\"width: 486.823px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255); margin-bottom: 0px !important;\"><tbody style=\"box-sizing: border-box;\"><tr class=\"a-spacing-small po-display.size\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 0px 3px 3px 0px; margin-right: 0px; width: 116.594px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Screen Size</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 0px 0px 3px 3px; margin-right: 0px; width: 370.229px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">43 Inches</span></td></tr><tr class=\"a-spacing-small po-brand\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 116.594px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Brand</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 370.229px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">Samsung</span></td></tr><tr class=\"a-spacing-small po-display.technology\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 116.594px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Display Technology</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 370.229px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">UHD</span></td></tr><tr class=\"a-spacing-small po-resolution\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 116.594px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Resolution</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 370.229px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">4K</span></td></tr><tr class=\"a-spacing-small po-refresh_rate\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 116.594px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Refresh Rate</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 370.229px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">50 Hz</span></td></tr><tr class=\"a-spacing-small po-special_feature\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 116.594px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Special Feature</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 370.229px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">Crystal Processor 4K | 4K Upscaling | UHD Dimming |</span></td></tr></tbody></table>', 'tv1.webp', 'tv2.webp', 'tv3.webp', 100, 'In Stock', '2024-11-29 19:26:48', NULL),
(26, 11, 21, 'Noise Twist Round dial Smart Watch with Bluetooth Calling, 1.38\" TFT Display, up-to 7 Days Battery, 100+ Watch Faces, IP68, Heart Rate Monitor, Sleep Tracking (Rose Pink)', 'Noise', 2100, 2900, '<h1 id=\"title\" class=\"a-size-large a-spacing-none\" style=\"box-sizing: border-box; padding: 0px; font-weight: 400; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 0px !important; font-size: 24px !important; line-height: 32px !important;\"><span id=\"productTitle\" class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\">Noise Twist Round dial Smart Watch with Bluetooth Calling, 1.38\" TFT Display, up-to 7 Days Battery, 100+ Watch Faces, IP68, Heart Rate Monitor, Sleep Tracking (Rose Pink)</span></h1>', 'watch3.jpg', 'watch2.jpg', 'watch.jpg', 100, 'In Stock', '2024-11-29 20:20:48', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(3, 4, 'Television', '2024-01-20 16:24:52', ''),
(4, 4, 'Mobiles', '2024-01-20 16:24:52', ''),
(5, 4, 'Mobile Accessories', '2024-01-20 16:24:52', ''),
(6, 4, 'Laptops', '2024-01-20 16:24:52', ''),
(7, 4, 'Computers', '2024-01-20 16:24:52', ''),
(8, 3, 'Comics', '2024-01-20 16:24:52', ''),
(9, 5, 'Beds', '2024-01-20 16:24:52', ''),
(10, 5, 'Sofas', '2024-01-20 16:24:52', ''),
(11, 5, 'Dining Tables', '2024-01-20 16:24:52', ''),
(12, 6, 'Men Footwears', '2024-01-20 16:24:52', ''),
(14, 4, 'Refrigerator', '2024-06-05 01:07:31', NULL),
(15, 9, 'vivo', '2024-11-29 18:19:13', NULL),
(16, 9, 'samsung', '2024-11-29 18:19:25', NULL),
(17, 9, 'iphone', '2024-11-29 18:43:25', NULL),
(18, 11, 'TV', '2024-11-29 19:24:34', NULL),
(19, 10, 'men', '2024-11-29 20:06:39', NULL),
(20, 10, 'Women', '2024-11-29 20:06:48', NULL),
(21, 11, 'watch', '2024-11-29 20:19:21', NULL),
(22, 9, 'Nokia', '2024-11-30 10:34:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userEmail`, `userip`, `loginTime`, `logout`, `status`) VALUES
(5, 'sss000@gmail.com', 0x3a3a3100000000000000000000000000, '2024-11-27 20:07:41', NULL, 1),
(6, 'sachinsargar000@gmail.com', 0x3a3a3100000000000000000000000000, '2024-11-29 21:13:46', NULL, 0),
(8, 'sachinsargar000@gmail.com', 0x3a3a3100000000000000000000000000, '2024-11-29 21:15:10', NULL, 0),
(10, 'sss000@gmail', 0x3a3a3100000000000000000000000000, '2024-11-29 21:16:11', NULL, 0),
(11, 'sss000@gmail.com', 0x3a3a3100000000000000000000000000, '2024-11-29 21:18:18', '30-11-2024 02:49:46 AM', 1),
(12, 'sss000@gmail.com', 0x3a3a3100000000000000000000000000, '2024-11-29 21:26:02', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `shippingAddress` longtext DEFAULT NULL,
  `shippingState` varchar(255) DEFAULT NULL,
  `shippingCity` varchar(255) DEFAULT NULL,
  `shippingPincode` int(11) DEFAULT NULL,
  `billingAddress` longtext DEFAULT NULL,
  `billingState` varchar(255) DEFAULT NULL,
  `billingCity` varchar(255) DEFAULT NULL,
  `billingPincode` int(11) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `billingAddress`, `billingState`, `billingCity`, `billingPincode`, `regDate`, `updationDate`) VALUES
(6, 'sachin sargar', 'sss000@gmail.com', 9881884005, '1455494c9f58563769b601366047c030', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-27 20:07:23', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productreviews`
--
ALTER TABLE `productreviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `productreviews`
--
ALTER TABLE `productreviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
