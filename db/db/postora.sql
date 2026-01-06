-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 29, 2025 at 08:12 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `postora`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminlogin_tb`
--

CREATE TABLE `adminlogin_tb` (
  `a_login_id` int(11) NOT NULL,
  `a_name` varchar(60) COLLATE utf8_bin NOT NULL,
  `a_email` varchar(60) COLLATE utf8_bin NOT NULL,
  `a_password` varchar(60) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `adminlogin_tb`
--

INSERT INTO `adminlogin_tb` (`a_login_id`, `a_name`, `a_email`, `a_password`) VALUES
(1, 'Admin Kumar', 'admin@gmail.com', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `approduct`
--

CREATE TABLE `approduct` (
  `app_id` int(10) NOT NULL,
  `req_id` int(10) NOT NULL,
  `item_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `item_image` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `size` text NOT NULL,
  `item_price` int(10) NOT NULL,
  `unit` varchar(50) NOT NULL,
  `item_desc` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `category` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `approduct`
--

INSERT INTO `approduct` (`app_id`, `req_id`, `item_name`, `item_image`, `size`, `item_price`, `unit`, `item_desc`, `category`, `status`) VALUES
(31, 9, 'Face Mask', '1593928985-02-250x250.jpg', '3 Ply', 100, 'Piece', 'face mask dealer in nagpur', 'Safety', 0),
(32, 11, 'Rubber Cap', '1596441038-download.jfif', 'd', 10, 'Piece', 'd', 'Rubber Products', 0);

-- --------------------------------------------------------

--
-- Table structure for table `approvequote`
--

CREATE TABLE `approvequote` (
  `id` int(10) NOT NULL,
  `enq_id` int(10) NOT NULL,
  `vendor_id` int(10) NOT NULL,
  `item_id` int(10) NOT NULL,
  `item_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `qty` int(10) NOT NULL,
  `unit` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `rate` int(11) NOT NULL,
  `tax` varchar(11) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `item_desc` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `bills`
--

CREATE TABLE `bills` (
  `bill_no` varchar(8) NOT NULL,
  `date` date DEFAULT NULL,
  `customer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bills`
--

INSERT INTO `bills` (`bill_no`, `date`, `customer`) VALUES
('1/25-26', '0001-04-26', ''),
('2/25-26', '2004-04-26', '');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cat_id` int(11) NOT NULL,
  `category` text COLLATE utf8_bin NOT NULL,
  `status` int(11) NOT NULL,
  `keywords` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `category`, `status`, `keywords`) VALUES
(1, 'Wire Brush', 1, 'Wire Brush, wire brush for drill, wire wheel brush, wire brush for grinder, wire bristle brush, angle grinder wire brush, small wire brush, wire brush drill attachment, wire cup brush, Wire Brush Cleaning, Flat Wire Brush, 	wire grill brush, brass wire brush, round wire brush,stainless steel wire brush, steel wire brush, wire bristle grill brush, wire brush drill bit, long handled wire brush, wire cleaning brush, wire tube brush, rotary wire brush, welding wire brush, wire brush machine, wire brush to remove paint, die grinder wire brush, electric wire brush, long wire brush, wire bottle brush, 	wire brush broom, wire brush grinder wheel	, wire brush to remove rust, wire cup brush for drill, wire wheel brush for drill, long wire brush for drill, power wire brush, wire brush pipe cleaner, wire brushes drums, wire grill brush danger, wire pipe brush, concrete wire brush, copper wire brush, large wire brush, soft wire brush, twisted wire brush, wire brush for bench grinder, 	wire brushed flooring, round steel wire brush, mini brass wire brush, 	stainless steel wire brushes, manufacturers, suppliers, exporters, traders, dealers, manufacturing companies, retailers, producers, Industrial & Machine Brushes India, Industrial brush, wire brush wheel, circular brush, wire brush, boiler brush, handle brush, wire brush manufacturer in Nagpur, wire brush manufacturer in india.'),
(4, 'Industrial Ceramic', 1, 'Industrial Ceramics Products, ceramic industrial coatings, industrial ceramics, ceramic industry directory, ceramic pigtail guide, 	ceramic pigtail fuse, ceramic pigtail socket, ceramic bandsaw mill blade guide, ceramic eyelet guide, ceramics markings guide, antique ceramics guide, ceramic guide rollers, Ceramic Wireguides\r\n, Ceramic Eyelets, Ceramic U Guides, Ceramic Bushes and Tubes\r\n, Ceramic Bush, Ceramic Bushes, Industrial Ceramic Guides, Ceramic Half Tube, Ceramic Multi Groove Guides, Ceramic Groove Collar Eyelet, Ceramic Nozzles\r\n, Ceramic Pipe, Ceramic Square Guide, Ceramic Pulley, Ceramic Collar Tube, Ceramic Disc, Ceramic Rod, Ceramic Shoe Guide, ceramic pigtail, manufacturers, suppliers, exporters, traders, dealers, manufacturing companies, retailers, producers, Ceramic & Clay Decoratives India'),
(5, 'Rubber Products', 1, '	Molded Rubber Products, Moulded Rubber Products, manufacturers, suppliers, exporters, traders, dealers, manufacturing companies, retailers, producers, Rubber & Rubber Products India'),
(6, 'Springs', 1, ''),
(7, 'Nylon Brush', 1, ''),
(20, 'Castor Wheel', 1, '	Caster Wheels, manufacturers, suppliers, oems, oem manufacturers, exporters, traders, dealers, manufacturing companies, producers, India'),
(21, 'Brass Pipe Fitting', 1, 'Brass Pipe Fittings, brass plumbing fittings, Brass Pipeline Fitting, manufacturers, suppliers, oems, oem manufacturers, exporters, traders, dealers, manufacturing companies, producers, India'),
(22, 'Packing Products', 1, 'Plastic Packaging Products, Plastic Packing Products, manufacturers, suppliers, oems, oem manufacturers, exporters, traders, dealers, manufacturing companies, producers, India'),
(23, 'SS Products', 1, 'Stainless Steel, Stainless Steel Metal, SS, SS Metal, manufacturers, suppliers, exporters, traders, dealers, manufacturing companies, retailers, producers, Steel & Stainless Steel Products India'),
(25, 'Safety Products', 1, 'Safety Helmets, face mask, industrial safety products, hand gloves, industrial hand gloves.'),
(26, 'Fasteners', 1, 'center bolt\r\ncenter bolt manufacturers in ludhiana\r\ncenter bolt for leaf springs\r\ncenter bolt leaf spring\r\ncenter lock 6 bolt\r\ncenter bolt heads\r\ncenter bolt valve cover gaskets\r\nbolt center near me\r\ncenter lock vs bolt type\r\nleaf spring center bolt grade\r\ncenter bolt tall valve covers\r\ncenter bolt 350\r\nleaf spring center bolt 5/16\r\ncenter bolt and nut\r\ncenter bolt valve covers\r\ncenter bolt wheels\r\nbolt with center hole\r\nleaf spring center bolt 5/8\r\nleaf spring center bolt 1/2\r\ncenter bolt casters\r\nhigh tensile bolts\r\nhigh tensile bolts manufacturers\r\nhigh tensile bolts manufacturers in ludhiana\r\nhigh tensile bolts grade\r\nhigh tensile hex bolts\r\nhigh tensile anchor bolts\r\nhigh tensile bolt properties\r\nhigh tensile steel bolts grade 8.8\r\nhigh tensile galvanised bolts\r\n10mm high tensile bolts\r\nhigh tensile bolt head markings\r\nhigh tensile bolts m12\r\nhigh tensile bolts grade 10.9\r\nhigh tensile bolts near me\r\nhigh tensile bolts and nuts\r\n8mm high tensile bolts\r\nhigh tensile eye bolts\r\nhigh tensile cup head bolts\r\nhigh tensile u bolts\r\nhigh tensile bolts grade 8.8\r\nhigh tensile bolts 10.9 grade\r\nhigh tensile bolts 12.9 grade\r\nhigh tensile cap head bolts\r\nhigh tensile bolts suppliers\r\nhigh tensile allen bolts\r\nhigh tensile hex head bolts\r\n6mm high tensile bolts\r\nhigh tensile bolts manufacturers in india\r\nhigh tensile zinc plated bolts\r\nhigh tensile bolts 12.9\r\nhigh tensile grades of bolts\r\nhigh tensile nut bolt manufacturers in mumbai\r\n12mm high tensile bolts\r\nhigh tensile bolt price\r\nhigh tensile nut bolt manufacturers in ludhiana\r\nhigh tensile bolt manufacturer in vadodara\r\nhigh tensile bolt numbers\r\nhigh tensile bolts unbrako\r\nhigh tensile bolt company\r\nhigh tensile bolt classification\r\ndrilling high tensile bolts\r\nhigh tensile bolts black\r\n7mm high tensile bolts\r\nbolt\r\nbolt nut\r\nbolt and nut\r\nbolt seal\r\nbolt types\r\nbolt images\r\nbolt fastener\r\nbolt nut washer\r\nbolt washer\r\nbolt runner\r\nbolt cutter\r\nbolt running\r\nbolt and nut size\r\nbolt and nut images\r\nbolt and screw\r\nbolt lock for door\r\nbolt grade 8.8\r\nbolt dimensions\r\nbolt price\r\nbolt picture\r\nbolt pics\r\nbolt photo\r\nbolt hs code\r\nnuts & bolts\r\nnuts for bolts\r\nbolts nuts\r\nnut bolts\r\nnuts bolts\r\nbolts with nuts\r\nnut for bolts\r\nbolts and nuts\r\nnut and bolts\r\nnuts and bolts\r\nbolts meaning\r\nanchors bolts\r\nanchor bolts\r\ntower bolts\r\nbolts types\r\ntypes of bolts\r\neye bolts\r\nbolts car\r\ncar bolts\r\nbolts from the blue\r\nallen bolts\r\nstud bolts\r\nstuds bolts\r\nfoundation bolts\r\nbolts and nuts types\r\nnut and bolts types\r\nnuts bolts washers\r\nwashers nuts bolts\r\nbricks and bolts\r\nhex bolts\r\nnuts and bolts types\r\ntype of nuts and bolts\r\ntypes of bolts and nuts\r\ntypes of nuts and bolts\r\nu bolts\r\nallen key bolts\r\nnut bolts washers\r\nwashers bolts\r\nbolts with washers\r\nwashers for bolts\r\nnut bolts manufacturers\r\nanchor bolts \r\ncountersunk bolts\r\ncarriage bolts\r\nbolts and nuts meaning\r\nnut bolts hsn code\r\nnuts and bolts meaning\r\nbolts for doors\r\nbolts door\r\ndoor bolts\r\nanchor bolts types\r\nbolts size chart\r\nbolts threads\r\nbolts locks\r\nscrew bolts\r\nlocking bolts\r\nconnector bolts\r\nrack bolts\r\nbolts and nuts sizes\r\nnuts and bolts sizes\r\nbolts and nuts images\r\nimages of nuts and bolts\r\nnuts and bolts image\r\nnuts and bolts images\r\nbolts sizes\r\nhilti bolts\r\nhanger bolts\r\nsizing bolts\r\nflange bolts\r\nbolts for flanges\r\nj bolts\r\nbolts meaning in english\r\ntypes of nuts bolts\r\nnut bolts sizes\r\nbolts nuts screws\r\nnut bolts images\r\nnut bolts manufacturers in ludhiana\r\nnuts bolts manufacturers in ludhiana\r\nnuts bolts screws\r\nbolts and screws\r\nscrews and bolts\r\nbolts and nuts sizes chart\r\nhook bolts\r\nbolts grade\r\nbolts meaning in hindi\r\nlightning bolts meaning\r\ntypes of nuts for bolts\r\nbolts specification\r\nclamping u bolts\r\ntacking bolts\r\nfasteners\r\nfasteners types\r\nfasteners bolt\r\nfasteners manufacturers\r\nfasteners screws\r\nfasteners manufacturers india\r\nfasteners for paper\r\nfasteners manufacturers in pune\r\nfasteners manufacturers in mumbai\r\nfasteners industry\r\nfasteners suppliers\r\nfasteners plastic\r\nfasteners hs code\r\nfasteners images\r\nfasteners india\r\nfasteners company\r\nfasteners in sewing\r\nfasteners shop near me\r\n8mm fasteners\r\nfasteners for clothes\r\nfasteners definition\r\nfasteners companies in india\r\nfasteners standards\r\nfasteners manufacturers in vasai\r\nfasteners ludhiana\r\nfasteners company in pune\r\nfasteners suppliers in india\r\nfasteners association of india\r\nfasteners hardware\r\nfasteners manufacturers in nashik\r\nfasteners near me\r\nfasteners grade\r\nfasteners price\r\nfasteners to concrete\r\nfasteners material\r\nfasteners in pune\r\nfasteners for wood\r\nfasteners ahmedabad\r\nfasteners and bolts\r\nfasteners nuts and bolts\r\nfasteners suppliers in mumbai\r\nfasteners online india\r\nfasteners price list\r\nfasteners dealers in bangalore\r\nfasteners online\r\nfasteners for sheet metal\r\nfasteners website\r\nfasteners business\r\nfasteners and hardware\r\nfasteners suppliers in pune\r\nfasteners for retail inc\r\nfasteners dealers in mumbai');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `Customer Name` text NOT NULL,
  `GSTN` int(11) NOT NULL,
  `Address` text NOT NULL,
  `Contact` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `enquiry`
--

CREATE TABLE `enquiry` (
  `enq_id` int(10) NOT NULL,
  `req_id` int(10) NOT NULL,
  `item_id` int(10) NOT NULL,
  `item_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `qty` int(10) NOT NULL,
  `unit` text NOT NULL,
  `item_desc` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `r_name` varchar(200) NOT NULL,
  `r_mob` varchar(10) NOT NULL,
  `r_email` varchar(200) NOT NULL,
  `companyurl` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `enquiry`
--

INSERT INTO `enquiry` (`enq_id`, `req_id`, `item_id`, `item_name`, `qty`, `unit`, `item_desc`, `r_name`, `r_mob`, `r_email`, `companyurl`) VALUES
(16, 0, 182, 'Plastic Strapping Tensioner', 2, 'Piece', 'ddd', '', '', '', ''),
(17, 0, 198, 'Victor Washable Black Rubber Hand Gloves', 2, 'Piece', 'gggg', '', '', '', ''),
(18, 0, 189, 'PP Cord Strap', 2, 'Piece', 'ss', '', '', '', 'maabhagwatitraders');

-- --------------------------------------------------------

--
-- Table structure for table `featuredproduct`
--

CREATE TABLE `featuredproduct` (
  `fpid` int(10) NOT NULL,
  `fpname` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `fpimage` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `category` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `featuredproduct`
--

INSERT INTO `featuredproduct` (`fpid`, `fpname`, `fpimage`, `category`) VALUES
(1, 'Wire Brushes', '1592894045-banner.jpg', 'wire brush'),
(2, 'Castor Wheels', '1592894102-castor-banner.png', 'Castor Wheel'),
(3, 'Industrial Ceramic', '1592894332-ceramic--banner.png', 'Industrial ceramic '),
(4, 'Rubber Products', '1592894186-rubber-banner.png', 'Rubber Products'),
(5, 'Gears, Sprokets & Pulleys', '1592894370-gears-banner.png', 'Gears, Sprokets & Pulleys'),
(6, 'Machine Tools', '1592894421-machine-tools-banner.png', 'Machine Tools'),
(7, 'Industrial Springs', '1613209226-springs.jpg', 'Springs'),
(8, 'SS Products', '1592894396-ss-banner.png', 'SS Products'),
(9, 'Brass Pipe Fitting', '1592894265-brass-product-banner.png', 'Brass Pipe Fittings');

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `Bill No` int(11) NOT NULL,
  `Date` date NOT NULL,
  `Place of supply` int(11) NOT NULL,
  `Terms` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(10) NOT NULL,
  `req_id` int(10) NOT NULL,
  `item_id` int(10) NOT NULL,
  `item_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `qty` int(10) NOT NULL,
  `unit` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `rate` int(11) NOT NULL,
  `tax` varchar(11) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `item_desc` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `req_id`, `item_id`, `item_name`, `qty`, `unit`, `rate`, `tax`, `item_desc`, `status`) VALUES
(1, 10, 12, 'www', 2, 'nos', 200, '18', 'ewegw', '1'),
(8, 9, 68, 'Brass Elbow Male Assembly', 10, 'nos.', 100, '18%', 'mm', '');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `item_id` int(11) NOT NULL,
  `req_id` int(10) NOT NULL,
  `category` varchar(30) NOT NULL,
  `item_brand` varchar(200) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `item_price` double(10,2) NOT NULL,
  `unit` varchar(100) NOT NULL,
  `item_image` varchar(255) NOT NULL,
  `size` text NOT NULL,
  `item_desc` text NOT NULL,
  `item_register` datetime DEFAULT current_timestamp(),
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`item_id`, `req_id`, `category`, `item_brand`, `item_name`, `item_price`, `unit`, `item_image`, `size`, `item_desc`, `item_register`, `status`) VALUES
(1, 0, 'Industrial ceramic', '', 'Ceramic Shoe Guide', 12.00, 'Piece', '1595849044-guide.jpg', 'Mat : Alumina Ceramic\r\nColor : Pink / White\r\nBrand : MBT', 'we manufacturer Industrial ceramic products in various specifications as per customers requirement. we are leading manufacturer and supplier of industrial ceramic products.', '2020-03-28 11:08:57', 1),
(2, 0, 'Industrial ceramic', '', 'Ceramic Rod', 20.00, 'Piece', '1595849370-rod.jfif', 'Mat : Alumina Ceramic\r\nColor : Pink / White\r\nDiameter : 1 - 30 mm\r\nLength : 5 - 200 mm\r\nBrand : Postora', 'we manufacturer Industrial ceramic products in various specifications as per customers requirement. we are leading manufacturer and supplier of industrial ceramic products.', '2020-03-28 11:08:57', 1),
(3, 0, 'industrial ceramic', '', 'Ceramic Disc', 20.00, 'Piece', '1595848819-disc.jpg', 'Mat : Alumina Ceramic\r\nColor : Pink / White\r\nDia .: 10 - 100 MM\r\nThickness : 2 -25 MM', 'we manufacturer Industrial ceramic products in various specifications as per customers requirement.\r\nwe are leading manufacturer and supplier of industrial ceramic products.', '2020-07-27 16:50:19', 1),
(4, 0, 'Industrial ceramic', '', 'Ceramic Guides', 30.00, 'Piece', '1595913955-guideitems.jfif', 'Mat : Alumina Ceramic\r\nColor : Pink / White\r\nDiameter : 5 - 30 mm\r\nLength : 10 - 20 mm\r\nBrand : MBT Postora', '.', '2020-07-28 10:55:55', 1),
(5, 0, 'Industrial ceramic', '', 'Ceramic Collar Tube', 30.00, 'Piece', '1595913467-collartube.jfif', 'Mat : Alumina Ceramic\r\nColor : Pink / White\r\nDiameter : 5 - 30 mm\r\nLength : 10 - 20 mm\r\nBrand : MBT Postora', '.', '2020-07-28 10:47:47', 1),
(6, 0, 'Industrial ceramic', '', 'Ceramic Eyelets', 10.00, 'Piece', '1595913291-eyelets.jfif', 'Mat : Alumina Ceramic\r\nColor : Pink / White\r\nDiameter : 5 - 30 mm\r\nLength : 10 - 20 mm\r\nBrand : MBT Postora', '.', '2020-07-28 10:44:51', 1),
(7, 0, 'Industrial ceramic', 'Redmi', 'Ceramic Pulley', 20.00, 'Piece', '1595849881-pulley.jfif', 'Mat. : Alumina Ceramic\r\nColor : Pink / White\r\nDiameter : 10 - 100 mm\r\nWidth : 10 - 100 mm\r\nBrand : Postora', 'we manufacturer Industrial ceramic products in various specifications as per customers requirement. we are leading manufacturer and supplier of industrial ceramic products , ceramic pulleys.', '2020-03-28 11:08:57', 1),
(8, 0, 'Industrial ceramic', 'Redmi', 'Ceramic Square Guide', 15.00, 'Piece', '1595911181-squareguide.jfif', 'Mat : Alumina Ceramic\r\nColor : Pink / White\r\nDiameter : 10 - 50 mm\r\nLength : 10 - 150 mm\r\nBrand : MBT Postora', '.', '2020-03-28 11:08:57', 1),
(9, 0, 'Industrial ceramic', 'Samsung', 'Ceramic Pipe', 20.00, 'Piece', '1595911600-pipes.jfif', 'Mat : Alumina Ceramic\r\nColor : Pink / White\r\nDiameter : 1 - 30 mm\r\nLength : 5 - 200 mm\r\nBrand : MBT Postora', '.', '2020-03-28 11:08:57', 1),
(10, 0, 'Industrial ceramic', 'Samsung', 'Ceramic Pigtails', 20.00, 'Piece', '1595911676-pigtails.jfif', 'Mat : Alumina Ceramic\r\nColor : Pink / White\r\nDiameter : 1 - 30 mm\r\nLength : 5 - 200 mm\r\nBrand : MBT Postora', '.', '2020-03-28 11:08:57', 1),
(11, 0, 'Industrial ceramic', 'Apple', 'Ceramic Nozzles', 50.00, 'Piece', '1595911874-nozzles.jfif', 'Mat : Alumina Ceramic\r\nColor : Pink / White\r\nDiameter : 1 - 30 mm\r\nLength : 5 - 200 mm\r\nBrand : MBT Postora', '.', '2020-03-28 11:08:57', 1),
(12, 0, 'Industrial ceramic', '', 'Ceramic Groove Collar Eyelet', 30.00, 'Piece', '1595913125-groovecollareylets.jfif', 'Mat : Alumina Ceramic\r\nColor : Pink / White\r\nDiameter : 5 - 30 mm\r\nLength : 10 - 20 mm\r\nBrand : MBT Postora', '.', '2020-07-28 10:42:05', 1),
(13, 9, 'Industrial ceramic', 'Apple', 'Ceramic Multi Groove Guides', 50.00, 'Piece', '1595912226-multigroove.jfif', 'Mat : Alumina Ceramic\r\nColor : Pink / White\r\nDiameter : 10 - 50 mm\r\nLength : 10 - 200 mm\r\nBrand : MBT Postora', '.', '2020-03-28 11:08:57', 1),
(14, 0, 'Industrial ceramic', '', 'Ceramic Half Tube', 20.00, 'Piece', '1595912893-halftube.jfif', 'Mat : Alumina Ceramic\r\nColor : Pink / White\r\nDiameter : 5 - 30 mm\r\nLength : 10 - 20 mm\r\nBrand : MBT Postora', '.', '2020-07-28 10:38:13', 1),
(15, 0, 'Industrial ceramic', '', 'Industrial Ceramic Guides', 30.00, 'Piece', '1595913911-guides.jfif', 'Mat : Alumina Ceramic\r\nColor : Pink / White\r\nDiameter : 5 - 30 mm\r\nLength : 10 - 20 mm\r\nBrand : MBT Postora', '.', '2020-07-28 10:55:11', 1),
(16, 0, 'Industrial ceramic', '', 'Ceramic Bushes', 30.00, 'Piece', '1595914270-bush.jfif', 'Mat : Alumina Ceramic\r\nColor : Pink / White\r\nDiameter : 5 - 30 mm\r\nWidth : 10 - 20 mm\r\nBrand : MBT Postora', '.', '2020-07-28 11:01:10', 1),
(17, 0, 'Industrial ceramic', '', 'Ceramic Bushes and Tubes', 20.00, 'Piece', '1595914760-tube.jfif', 'Mat. : Alumina Ceramic\r\nColor : Pink / White\r\nDiameter : 10 - 100 mm\r\nWidth : 10 - 100 mm\r\nBrand : Postora', '.', '2020-07-28 11:09:20', 1),
(18, 0, 'Industrial ceramic', '', 'Ceramic U Guides', 20.00, 'Piece', '1595914786-uguide.jfif', 'Mat. : Alumina Ceramic\r\nColor : Pink / White\r\nDiameter : 10 - 100 mm\r\nWidth : 10 - 100 mm\r\nBrand : Postora', '.', '2020-07-28 11:09:46', 1),
(19, 0, 'Fasteners', '', 'Center bolts for Leaf Spring', 30.00, 'Piece', '1598068702-center-bolts-leaf-spring.jpg', 'Diameter :- M8 to M28\r\nLength :- 4\" to 12\"\r\nMaterial :- C32 / EN8 / MS\r\nGrade :- High Tensile (8.8 /10.9)\r\nColor :- Black\r\nCustomize Size Available.', '.', '2020-08-22 09:28:22', 1),
(20, 0, 'Fasteners', '', 'High Tensile Hex Bolt', 30.00, 'Piece', '1598071318-hex-head-bolt.jpg', 'Diameter :- M8 to M58\r\nLength :- 4\" to 12\"\r\nMaterial :- MS/C32\r\nColor :- Black\r\nThread Type :-MM / Inches\r\nThread Length:- Full /Half\r\nCustomize Size Available.', '.', '2020-08-22 10:11:58', 1),
(21, 0, 'Fasteners', '', 'Dome Nut', 10.00, 'Piece', '1598070484-domnut.jpg', 'Shape :- Dome\r\nSize :- M2 to M50\r\n or 1/4\" to 2\"\r\nMaterial :- MS/SS\r\nThread :- MM/inches\r\nColor :- Silver', '.', '2020-08-22 09:58:04', 1),
(22, 0, 'Fasteners', '', 'High Tensile Socket Bolt', 30.00, 'Piece', '1598071409-socket-bolt.jpg', 'Diameter :- M8 to M58\r\nLength :- 4\" to 12\"\r\nMaterial :- MS/C32\r\nColor :- Black\r\nThread Type :-MM / Inches\r\nThread Length:- Full /Half\r\nCustomize Size Available.', '.', '2020-08-22 10:13:29', 1),
(23, 0, 'Fasteners', '', 'Hex Nut', 5.00, 'Piece', '1598070111-hexnut.jpg', 'Type :- Hex\r\nSize :- M2 to M50\r\n or 1/4\" to 2\"\r\nMaterial :- MS/SS\r\nThread :- MM/inches\r\nColor :- Silver', '.', '2020-08-22 09:51:51', 1),
(24, 0, 'Fasteners', '', 'SS Hex Bolt with Nut', 30.00, 'Piece', '1598071626-sshexbolt.jpg', 'Diameter :- M8 to M50\r\nLength :- 4\" to 12\"\r\nMaterial :- SS\r\nColor :- Silver\r\nThread Type :-MM / Inches\r\nThread Length:- Full /Half\r\nCustomize Size Available.', '.', '2020-08-22 10:17:06', 1),
(25, 0, 'Fasteners', '', 'Leaf Spring Center bolts', 30.00, 'Piece', '1598069016-centre-bolt-250x250.jpg', 'Diameter :- M8 to M28\r\nLength :- 4\" to 12\"\r\nMaterial :- C32 / EN8 / MS\r\nGrade :- High Tensile (8.8 /10.9)\r\nColor :- Black\r\nCustomize Size Available.', '.', '2020-08-22 09:33:36', 1),
(26, 0, 'Fasteners', '', 'Dome Nut', 10.00, 'Piece', '1598070653-springnut.jpg', 'Shape :- Dome\r\nSize :- M2 to M50\r\n or 1/4\" to 2\"\r\nMaterial :- MS/SS\r\nThread :- MM/inches\r\nColor :- Silver', '.', '2020-08-22 10:00:53', 1),
(27, 9, 'Wire Brush', '', 'Brass Soft Wire Brush 80 MM', 60.00, 'Piece', '1590165609_brass-wire-wheel-brush-250x250.jpg', 'Brass Brush\r\nOD = 80 mm\r\nID = 6 mm\r\nWidth = 12 mm\r\nMaterial = Brass\r\nWire Dia. = 0.28 mm', 'we manufacturer industrial wire brushes in various sizes. you can send us your enquiry for your requirement.', NULL, 1),
(29, 9, 'Wire Brush', '', 'MS Soft Wire Brush 80 MM', 80.00, 'Piece', '1590313198_galvanized-iron-wire-brush-250x250.jpg', 'Soft Wire Brush\r\nMaterial : MS\r\nOD : 3\"\r\nID : 8 mm\r\nWidth : 22 mm\r\nWire Dia.: 0.22 mm', 'we manufacturer industrial wire brushes in various sizes. you can send us your enquiry for your requirement.', '2020-05-24 15:11:05', 1),
(30, 10, 'castor wheel', '', 'Nylon Swivel Castor Wheel', 500.00, 'Piece', '1590478159_IMG-20190521-WA0055.jpg', 'Material :	Nylon\r\nWheel Size: 200 X 38 mm\r\nHeight : 240 mm\r\nPlate Size : 120 X 95 mm\r\nHole Spacing : 88 x 63 mm\r\nLoad Capacity	: 110 - 130 Kg\r\nBrand : Postora', 'Od:6\"\r\nNylon Wheel', '2020-05-26 13:33:19', 1),
(31, 0, 'Fasteners', '', 'Square Nut', 7.00, 'Piece', '1598070383-square-nut-steel.png', 'Shape :- Square\r\nSize :- M2 to M50\r\n or 1/4\" to 2\"\r\nMaterial :- MS/SS\r\nThread :- MM/inches\r\nColor :- Silver', '.', '2020-08-22 09:56:23', 1),
(32, 0, 'Fasteners', '', 'Hex Long Nut', 5.00, 'Piece', '1598069809-long-nut-in-ms-and-ss-250x250.jpg', 'Type :- Hex \r\nMaterial : - MS/SS\r\nSize : - M2 to M50\r\nColor :- Silver', '.', '2020-08-22 09:46:49', 1),
(33, 0, 'Fasteners', '', 'Nylon Lock Nut', 10.00, 'Piece', '1598070809-nylonlocknut.jfif', 'Shape :- Hex\r\nSize :- M2 to M50\r\n or 1/4\" to 2\"\r\nMaterial :- MS/SS\r\nThread :- MM/inches\r\nColor :- Silver', '.', '2020-08-22 10:03:29', 1),
(34, 0, 'Fasteners', '', 'Allen Bolts', 30.00, 'Piece', '1598071493-product-500x500.jpeg', 'Diameter :- M8 to M50\r\nLength :- 4\" to 12\"\r\nMaterial :- MS/C32\r\nColor :- Black\r\nThread Type :-MM / Inches\r\nThread Length:- Full /Half\r\nCustomize Size Available.', '.', '2020-08-22 10:14:53', 1),
(35, 0, 'Fasteners', '', 'Copper Hex bolts', 30.00, 'Piece', '1598071080-copperhexbolt.jpg', 'Diameter :- M8 to M28\r\nLength :- 4\" to 12\"\r\nMaterial :- Copper\r\nColor :- Golden\r\nCustomize Size Available.', '.', '2020-08-22 10:08:00', 1),
(36, 0, 'Fasteners', '', 'MS Round Washer', 2.00, 'Piece', '1598072333-waher.jpg', 'Shape :- Circular\r\nSize :- M2 to M50\r\nor 1/4\" to 2\"\r\nThickness :- 1MM to 3MM\r\nType : Flat Washer\r\nColor :- Silver', '.', '2020-08-22 10:28:53', 1),
(37, 0, 'industrial ceramic', '', 'Ceramic Eyelets', 100.00, 'Piece', '1590560058_ceramic-eyelets-500x500.jpg', 'Mat : Alumina Ceramic\r\nColor : Pink / White\r\nDiameter : 5 - 30 mm\r\nLength : 10 - 20 mm\r\nBrand : MBT Postora', 'Indutrial Ceramic\r\nwe manufacture this is various sizes as per requirement.\r\nsend your requirement.', '2020-05-27 11:44:18', 1),
(38, 0, 'Fasteners', '', 'SS Round Washer', 4.00, 'Piece', '1598072450-sswahser.jpg', 'Shape :- Circular\r\nSize :- M2 to M50\r\nor 1/4\" to 2\"\r\nThickness :- 1MM to 3MM\r\nType : Flat Washer\r\nColor :- Silver', '.', '2020-08-22 10:30:50', 1),
(39, 0, 'industrial ceramic', '', 'Ceramic Wireguides', 100.00, 'Piece', '1590560191_ceramic-eyelets-ceramic-wire-guides-ceramic-piglets-set-500x500.png', 'Mat : Alumina Ceramic\r\nColor : Pink / White\r\nDiameter : 5 - 30 mm\r\nLength : 10 - 20 mm\r\nBrand : MBT Postora', 'Wire Guides\r\nwe manufacture this is various sizes as per requirement.\r\nsend your requirement.', '2020-05-27 11:46:31', 1),
(40, 0, 'Fasteners', '', 'Spring Lock Washer', 4.00, 'Piece', '1598072550-spring-lock-washer-500x500.jpg', 'Shape :- Circular\r\nSize :- M2 to M50\r\nor 1/4\" to 2\"\r\nThickness :- 1MM to 3MM\r\nMaterial :- SS / MS\r\nType : Spring Washer\r\nColor :- Silver', '.', '2020-08-22 10:32:30', 1),
(41, 0, 'Fasteners', '', 'MS T Slot Nut', 10.00, 'Piece', '1598072747-ms-t-slot-nut-500x500.jpg', 'Shape :- T shape\r\nSize :- M2 to M50\r\n or 1/4\" to 2\"\r\nMaterial :- MS / SS\r\nThread :- MM / Inches\r\nColor :- Silver / Black', '.', '2020-08-22 10:35:47', 1),
(42, 0, 'Fasteners', '', 'Round Head Rivets', 70.00, 'Kg', '1598072927-round-head-rivets-500x500.jpg', 'Diameter :- 2MM to 25MM\r\nHead Type :- Round\r\nLength :- 2\" to 12\"\r\nMaterial :- MS / C32 / SS\r\nColor :- Black / Silver\r\nCustomize Size Available.', '.', '2020-08-22 10:38:47', 1),
(44, 0, 'industrial ceramic', '', 'Ceramic Guides', 100.00, 'Piece', '1590563011_ceramic-products-500x500.png', 'Mat : Alumina Ceramic\r\nColor : Pink / White\r\nDiameter : 5 - 100 mm\r\nThickness: 10 - 20 mm\r\nBrand : MBT Postora', 'Wire Guides\r\n we manufacture this is various sizes as per requirement.\r\n send your requirement.', '2020-05-27 12:33:31', 1),
(45, 0, 'industrial ceramic', '', 'Ceramic Pigtail Guides', 20.00, 'Piece', '1590563064_picture2-500x500.jpg', 'Mat : Alumina Ceramic\r\nColor : Pink / White\r\navailable in customize sizes', 'Wire Pigtail Guides\r\n we manufacture this is various sizes as per requirement.\r\n send your requirement.', '2020-05-27 12:34:24', 1),
(46, 0, 'castor wheel', '', 'Spring Loaded Swivel Castor With Brake', 800.00, 'Piece', '1590766474_swivel-caster-wheels-with-brake.jpg', 'Material	PU, SS\r\nShape	Round\r\nWheel Diameter	200 mm\r\nPlate Size	115 X 165 mm\r\nWidth	50 mm\r\nHeight	250 mm\r\nHole Size	75 x 130 mm', 'We manufacturer Castor wheels in various types and sizes. you can send us your enquiry for your requirement', '2020-05-29 21:04:34', 1),
(47, 0, 'castor wheel', '', 'Spring Loaded Swivel Castor', 700.00, 'Piece', '1590767056_wheel-dia-trolley-wheel.jpg', 'Material : PU, SS\r\nShape : Round\r\nWheel Diameter : 200 mm\r\nPlate Size : 115 X 165 mm\r\nWidth : 50 mm\r\nHeight : 250 mm\r\nHole Size : 75 x 130 mm', 'we manufacturer Castor wheels in various types and sizes. you can send us your enquiry for your requirement.', '2020-05-29 21:14:16', 1),
(48, 0, 'castor wheel', '', 'Swivel Castor', 500.00, 'Piece', '1590767998_-castor-wheel.jpg', 'Material	PU\r\nWheel Size: 200 X 38 mm\r\nHeight	240 mm\r\nPlate Size	120 X 95 mm\r\nHole Spacing	88 x 63 mm\r\nLoad Capacity	110 - 130 Kg', 'we manufacturer Castor wheels in various types and sizes. you can send us your enquiry for your requirement.', '2020-05-29 21:29:58', 1),
(49, 0, 'castor wheel', '', 'Swivel Castor With Brake', 600.00, 'Piece', '1590768094_castor-wheel.jpg', 'Material	PU\r\nWheel Size: 150 X 38 mm\r\nHeight: 189 mm\r\nPlate Size: 120 X 95 mm\r\nHole Spacing:	88 x 63 mm\r\nLoad Capacity:	110 - 130 Kg', 'we manufacturer Castor wheels in various types and sizes. you can send us your enquiry for your requirement.', '2020-05-29 21:31:34', 1),
(53, 9, 'Wire Brush', '', 'Brass Brush Wheel', 120.00, 'Piece', '1591029647_disc-brush-250x250.jpg', 'Brass Wire Brush\r\nOD = 6\"\r\nID = 1\"\r\nWidth = 1\"\r\nWire Dia. = 0.28 mm', 'we manufacturer industrial wire brushes in various sizes. you can send us your enquiry for your requirement.', '2020-06-02 17:25:11', 1),
(54, 0, 'Wire Brush', '', 'SS Wire Brush', 280.00, 'Piece', '1591155578_faa49054-3bf2-44de-83c3-c896109f2369.jpg', 'Wire Brush\r\nOD : 4\"\r\nID : 1\"\r\nWidth : 2\"\r\nMaterial : SS\r\nWire Dia.: 0.28 mm', 'we can manufacture according to your requirement please send your requirement to us.', '2020-06-03 09:09:38', 1),
(55, 9, 'Wire Brush', '', 'MS Hard Wire Brush', 120.00, 'Piece', '1591157893_images.jfif', 'OD = 6\"\r\nID = 3/4\"\r\nWIDTH = 1\"\r\nWire Dia. = 0.28 mm \r\nMaterial = MS', 'we manufacturer industrial wire brushes in various sizes. you can send us your enquiry for your requirement.', '2020-06-03 09:49:57', 1),
(57, 9, 'wire brush', '', 'MS Small Wire Brush', 100.00, 'Piece', '1591260143_unnamed.jpg', 'OD = 3\"\r\nID =  1/2\"\r\nWIDTH = 1\"\r\nMaterial = MS\r\nWire Dia. = 0.28 mm', 'we can manufacture according to your requirement please send your requirement to us.', '2020-06-04 14:18:07', 1),
(58, 9, 'wire brush', '', 'Gi Soft Small Wire Brush', 80.00, 'Piece', '1591263609_7b2b594e-064c-4004-80dd-5452b3f1ee40.jpg', 'OD = 3\"\r\nID =  22 mm\r\nWIDTH = 16 mm\r\nMaterial = MS\r\nWire Dia. = 0.11 mm', 'we can manufacture according to your requirement please send your requirement to us.', '2020-06-04 14:25:20', 1),
(59, 0, 'Brass Pipe Fitting', '', 'Brass Tee Male', 30.00, 'Piece', '1591358714_tee-male.png', 'Size : 1/8\" to 1\"\r\nMaterial : Brass', 'We have a wide range of brass Product that are known for their durability and corrosion resistance properties.  Extensively used for antique and house hold doors manufacturing as well as large industrial applications.', '2020-06-05 17:35:14', 1),
(60, 0, 'Brass Pipe Fitting', '', 'Brass Tee Female', 40.00, 'Piece', '1591359248_tee-female.png', 'Size : 1/8\" to 1”\r\nMaterial : Brass\r\nBrand : Postora\r\nColor : Golden', 'We have a wide range of brass Product that are known for their durability and corrosion resistance properties.  Extensively used for antique and house hold doors manufacturing as well as large industrial applications.', '2020-06-05 17:44:08', 1),
(61, 0, 'Brass Pipe Fitting', '', 'Brass Tee Male Union Assembly', 70.00, 'Piece', '1591359755_tee-male-assembly.png', 'Size : 1/8\" to 3/4”\r\nMaterial : Brass\r\nBrand : Postora\r\nColor : Golden', 'We have a wide range of brass Product that are known for their durability and corrosion resistance properties.  Extensively used for antique and house hold doors manufacturing as well as large industrial applications.', '2020-06-05 17:52:35', 1),
(62, 0, 'Brass Pipe Fitting', '', 'Brass Elbow Male', 30.00, 'Piece', '1591360166_elbow-male.png', 'Size : 1/8\" to 1”\r\nMaterial : Brass\r\nBrand : Postora\r\nColor : Golden', 'We have a wide range of brass Product that are known for their durability and corrosion resistance properties.  Extensively used for antique and house hold doors manufacturing as well as large industrial applications.', '2020-06-05 17:59:26', 1),
(63, 0, 'Brass Pipe Fitting', '', 'Brass Elbow Female', 40.00, 'Piece', '1591360316_elbow-female.png', 'Size : 1/8\" to 1”\r\nMaterial : Brass\r\nBrand : Postora\r\nColor : Golden', 'We have a wide range of brass Product that are known for their durability and corrosion resistance properties.  Extensively used for antique and house hold doors manufacturing as well as large industrial applications.', '2020-06-05 18:01:56', 1),
(64, 0, 'Brass Pipe Fitting', '', 'Brass Reducing Elbow male', 50.00, 'Piece', '1591360503_reducing-elbow-male.png', 'Size : 1/8\" x 1/4\"  to 1” x 3/4\"\r\nMaterial : Brass\r\nBrand : Postora\r\nColor : Golden', 'We have a wide range of brass Product that are known for their durability and corrosion resistance properties.  Extensively used for antique and house hold doors manufacturing as well as large industrial applications.', '2020-06-05 18:05:03', 1),
(65, 0, 'Brass Pipe Fitting', '', 'Brass Four Way Male', 70.00, 'Piece', '1591360951_four-way-male.png', 'Size : 1/8\" to 3/4”\r\nMaterial : Brass\r\nBrand : Postora\r\nColor : Golden', 'We have a wide range of brass Product that are known for their durability and corrosion resistance properties.  Extensively used for antique and house hold doors manufacturing as well as large industrial applications.', '2020-06-05 18:12:31', 1),
(66, 0, 'Brass Pipe Fitting', '', 'Brass Four Way Female', 70.00, 'Piece', '1591361104_four-way-female.png', 'Size : 1/8\" to 1/2”\r\nMaterial : Brass\r\nBrand : Postora\r\nColor : Golden', 'We have a wide range of brass Product that are known for their durability and corrosion resistance properties.  Extensively used for antique and house hold doors manufacturing as well as large industrial applications.', '2020-06-05 18:15:04', 1),
(67, 0, 'Brass Pipe Fitting', '', 'Brass Elbow OD x NPT', 50.00, 'Piece', '1591363474_elbow-OD-and-NPT.png', 'Size : 1/8\" to 3/4”\r\nMaterial : Brass\r\nBrand : Postora\r\nColor : Golden', 'We have a wide range of brass Product that are known for their durability and corrosion resistance properties.  Extensively used for antique and house hold doors manufacturing as well as large industrial applications.', '2020-06-05 18:54:34', 1),
(68, 0, 'Brass Pipe Fitting', '', 'Brass Elbow Male Assembly', 50.00, 'Piece', '1591363724_elbow-male-ass.png', 'Size : 1/8\" to 3/4”\r\nMaterial : Brass\r\nBrand : Postora\r\nColor : Golden', 'We have a wide range of brass Product that are known for their durability and corrosion resistance properties.  Extensively used for antique and house hold doors manufacturing as well as large industrial applications.', '2020-06-05 18:58:44', 1),
(70, 0, 'Brass Pipe Fitting', '', 'Brass Reducing Elbow MxF', 50.00, 'Piece', '1591436940_brass-reducing-elbow-MxF.png', 'Size : 1/8\" x 1/8\"\r\n      to 3/4\" x 3/4\"\r\nMaterial : Brass\r\nBrand : Postora\r\nColor : Golden', 'We have a wide range of brass Product that are known for their durability and corrosion resistance properties.  Extensively used for antique and house hold doors manufacturing as well as large industrial applications.', '2020-06-06 15:19:00', 1),
(71, 0, 'Brass Pipe Fitting', '', 'Brass Reducing Union', 50.00, 'Piece', '1591436984_brass-union.png', 'Size : 1/8\" x 1/4\"\r\n to 1\" x 3/4\"\r\nMaterial : Brass\r\nBrand : Postora\r\nColor : Golden', 'We have a wide range of brass Product that are known for their durability and corrosion resistance properties.  Extensively used for antique and house hold doors manufacturing as well as large industrial applications.', '2020-06-06 15:19:44', 1),
(72, 0, 'Brass Pipe Fitting', '', 'Brass Union', 50.00, 'Piece', '1591437205_brass-union.png', 'Size Range : 1/8\" x 1\"\r\nMaterial : Brass\r\nBrand : Postora\r\nColor : Golden', 'We have a wide range of brass Product that are known for their durability and corrosion resistance properties.  Extensively used for antique and house hold doors manufacturing as well as large industrial applications.', '2020-06-06 15:23:25', 1),
(73, 0, 'Brass Pipe Fitting', '', 'Brass  Union OD x NPT', 50.00, 'Piece', '1591437353_union-odxnpt.png', 'Size Range: 1/8\" x 1/8\"\r\n to 1/2\" x 1/2\"\r\nMaterial : Brass\r\nBrand : Postora\r\nColor : Golden', 'We have a wide range of brass Product that are known for their durability and corrosion resistance properties.  Extensively used for antique and house hold doors manufacturing as well as large industrial applications.', '2020-06-06 15:25:53', 1),
(74, 0, 'Brass Pipe Fitting', '', 'Brass Connector Ass. OD x NPT', 50.00, 'Piece', '1591437683_connector-ass-mxf.png', 'Size Range : 1/8\" to 1/2\"\r\nMaterial : Brass\r\nBrand : Postora\r\nColor : Golden', 'We have a wide range of brass Product that are known for their durability and corrosion resistance properties.  Extensively used for antique and house hold doors manufacturing as well as large industrial applications.', '2020-06-06 15:31:23', 1),
(75, 0, 'Brass Pipe Fitting', '', 'Brass Bulkhead Union', 50.00, 'Piece', '1591438106_bulkhead-union.png', 'Size Range : 1/8\" to 5/16\"\r\nMaterial : Brass\r\nBrand : Postora\r\nColor : Golden', 'We have a wide range of brass Product that are known for their durability and corrosion resistance properties.  Extensively used for antique and house hold doors manufacturing as well as large industrial applications.', '2020-06-06 15:38:26', 1),
(76, 0, 'Brass Pipe Fitting', '', 'Brass Hose Nipple Male', 50.00, 'Piece', '1591438229_Brass-Hose-Nipple-Male.png', 'Size Range : 1/8\" x 1/8\"\r\nto 3\"x3\"\r\nMaterial : Brass\r\nBrand : Postora\r\nColor : Golden', 'We have a wide range of brass Product that are known for their durability and corrosion resistance properties.  Extensively used for antique and house hold doors manufacturing as well as large industrial applications.', '2020-06-06 15:40:29', 1),
(77, 0, 'Brass Pipe Fitting', '', 'Brass Hose Nipple Female', 50.00, 'Piece', '1591438330_Brass-Hose-Nipple-feMale.png', 'Size Range : 1/8\" x 1/8\"\r\nto 2\"x2\"\r\nMaterial : Brass\r\nBrand : Postora\r\nColor : Golden', 'We have a wide range of brass Product that are known for their durability and corrosion resistance properties.  Extensively used for antique and house hold doors manufacturing as well as large industrial applications.', '2020-06-06 15:42:10', 1),
(78, 0, 'Brass Pipe Fitting', '', 'Brass Hose Elbow Male', 50.00, 'Piece', '1591438419_Brass-Hose-elbow-Male.png', 'Size Range : 1/8\" x 1/4\"\r\nto 1/2\"x 1/2\"\r\nMaterial : Brass\r\nBrand : Postora\r\nColor : Golden', 'We have a wide range of brass Product that are known for their durability and corrosion resistance properties.  Extensively used for antique and house hold doors manufacturing as well as large industrial applications.', '2020-06-06 15:43:39', 1),
(79, 0, 'Brass Pipe Fitting', '', 'Brass Hose Tee', 50.00, 'Piece', '1591438952_Brass-Hose-tee.png', 'Size Range : 1/4\" x 1/2\"\r\nMaterial : Brass', 'We have a wide range of brass Product that are known for their durability and corrosion resistance properties.  Extensively used for antique and house hold doors manufacturing as well as large industrial applications.', '2020-06-06 15:52:32', 1),
(80, 0, 'Brass Pipe Fitting', '', 'Brass Joint Nipple', 50.00, 'Piece', '1591439082_Brass-joint-nipple.png', 'Size Range : 1/4\" x 1/2\"\r\nMaterial : Brass', 'We have a wide range of brass Product that are known for their durability and corrosion resistance properties.  Extensively used for antique and house hold doors manufacturing as well as large industrial applications.', '2020-06-06 15:54:42', 1),
(81, 0, 'Brass Pipe Fitting', '', 'Brass Adoptor M x F', 50.00, 'Piece', '1591439228_Brass-Adaptor-MxF.png', 'Size Range : 1/8\" x 1/8\"\r\nto 3/4\" x 1\"\r\nMaterial : Brass', 'We have a wide range of brass Product that are known for their durability and corrosion resistance properties.  Extensively used for antique and house hold doors manufacturing as well as large industrial applications.', '2020-06-06 15:57:08', 1),
(82, 0, 'Brass Pipe Fitting', '', 'Brass Bushing', 50.00, 'Piece', '1591439324_Brass-Bushing.png', 'Size Range : 1/4\" x 1/8\"\r\nto 1\" x  3/4\"\r\nMaterial : Brass', 'We have a wide range of brass Product that are known for their durability and corrosion resistance properties.  Extensively used for antique and house hold doors manufacturing as well as large industrial applications.', '2020-06-06 15:58:44', 1),
(83, 0, 'Brass Pipe Fitting', '', 'Brass Olive Nut', 50.00, 'Piece', '1591439461_Brass-olive-nut.png', 'Size Range : 1/8\" to  5/8\"\r\nAnd 4mm to 12mm\r\nMaterial : Brass', 'We have a wide range of brass Product that are known for their durability and corrosion resistance properties.  Extensively used for antique and house hold doors manufacturing as well as large industrial applications.', '2020-06-06 16:01:01', 1),
(84, 0, 'Brass Pipe Fitting', '', 'Brass Dead Nut', 50.00, 'Piece', '1591439545_Brass-dead-nut.png', 'Size Range : 1/8\" to  1\"\r\nMaterial : Brass', 'We have a wide range of brass Product that are known for their durability and corrosion resistance properties.  Extensively used for antique and house hold doors manufacturing as well as large industrial applications.', '2020-06-06 16:02:25', 1),
(85, 0, 'Brass Pipe Fitting', '', 'Brass Nut Nipple', 50.00, 'Piece', '1591499467_nut-nipple.png', 'Size Range : 1/4\" x1/4\"\r\n to  1/2\" x 3/8\" \r\nMaterial : Brass', 'We have a wide range of brass Product that are known for their durability and corrosion resistance properties.  Extensively used for antique and house hold doors manufacturing as well as large industrial applications.', '2020-06-07 08:41:07', 1),
(86, 0, 'Brass Pipe Fitting', '', 'Brass Chuck Nut', 50.00, 'Piece', '1591499650_chuck-nut.png', 'Size Range : 1/8\" to 1\" \r\nMaterial : Brass', 'We have a wide range of brass Product that are known for their durability and corrosion resistance properties.  Extensively used for antique and house hold doors manufacturing as well as large industrial applications.', '2020-06-07 08:44:10', 1),
(87, 0, 'Brass Pipe Fitting', '', 'Brass Hex Plug', 50.00, 'Piece', '1591499764_hex-plug.png', 'Size Range : 1/8\" to 1\" \r\nMaterial : Brass', 'We have a wide range of brass Product that are known for their durability and corrosion resistance properties.  Extensively used for antique and house hold doors manufacturing as well as large industrial applications.', '2020-06-07 08:46:04', 1),
(88, 0, 'Brass Pipe Fitting', '', 'Brass Socket', 50.00, 'Piece', '1591499873_socket.png', 'Size Range : 1/8\" to 1\" \r\nMaterial : Brass', 'We have a wide range of brass Product that are known for their durability and corrosion resistance properties.  Extensively used for antique and house hold doors manufacturing as well as large industrial applications.', '2020-06-07 08:47:53', 1),
(89, 0, 'Brass Pipe Fitting', '', 'Brass Pu Connector', 50.00, 'Piece', '1591500350_pu-connector.png', 'Size Range : 1/8\"x 4 x 6 mm\r\n to 1/2\" x 12 x 16 mm \r\nMaterial : Brass', 'We have a wide range of brass Product that are known for their durability and corrosion resistance properties.  Extensively used for antique and house hold doors manufacturing as well as large industrial applications.', '2020-06-07 08:55:50', 1),
(90, 0, 'Brass Pipe Fitting', '', 'Brass Pu Connector Female', 50.00, 'Piece', '1591500507_pu-connector-female.png', 'Size Range : 1/8\"x 4 x 6 mm\r\n to 1/4\" x 8 x 12 mm \r\nMaterial : Brass', 'We have a wide range of brass Product that are known for their durability and corrosion resistance properties.  Extensively used for antique and house hold doors manufacturing as well as large industrial applications.', '2020-06-07 08:58:27', 1),
(91, 0, 'Brass Pipe Fitting', '', 'Brass Equal Pu Connector', 50.00, 'Piece', '1591500644_pu-connector-equal.png', 'Size Range : 4 x 6 mm\r\n to  6 x 8 mm \r\nMaterial : Brass', 'We have a wide range of brass Product that are known for their durability and corrosion resistance properties.  Extensively used for antique and house hold doors manufacturing as well as large industrial applications.', '2020-06-07 09:00:44', 1),
(92, 0, 'Brass Pipe Fitting', '', 'Brass Equal Pu Elbow', 50.00, 'Piece', '1591500811_pu-elbow.png', 'Size Range : 1/8\" x 4 x 6 mm\r\n to 1/4\" x 6 x 8 mm \r\nAnd 4 x 6 , 6 x 8\r\nMaterial : Brass', 'We have a wide range of brass Product that are known for their durability and corrosion resistance properties.  Extensively used for antique and house hold doors manufacturing as well as large industrial applications.', '2020-06-07 09:03:31', 1),
(93, 0, 'Brass Pipe Fitting', '', 'Brass Equal Pu Tee', 50.00, 'Piece', '1591501014_pu-equal-tee.png', 'Size Range : 1/8\" x 4 x 6 mm\r\n to 3/8\" x 10 x 12 mm \r\nAnd  \r\n4 x 6  4 x 6  4 x 6 ,\r\n 6 x 8  6 x 8  6 x 8,\r\n8 x 10 8 x 10 8 x 10.\r\n\r\nMaterial : Brass', 'We have a wide range of brass Product that are known for their durability and corrosion resistance properties.  Extensively used for antique and house hold doors manufacturing as well as large industrial applications.', '2020-06-07 09:06:54', 1),
(94, 0, 'Brass Pipe Fitting', '', 'Brass Feerule', 10.00, 'Piece', '1591501143_ferrule.png', 'Size Range : 1/8\" to 1\"\r\nAnd  4 mm to 12 mm\r\n\r\nMaterial : Brass', 'We have a wide range of brass Product that are known for their durability and corrosion resistance properties.  Extensively used for antique and house hold doors manufacturing as well as large industrial applications.', '2020-06-07 09:09:03', 1),
(95, 0, 'Brass Pipe Fitting', '', 'Brass Forging Plug', 40.00, 'Piece', '1591501297_forging-plug.png', 'Size Range : 1/8\" to 1\"\r\n\r\nMaterial : Brass', 'We have a wide range of brass Product that are known for their durability and corrosion resistance properties.  Extensively used for antique and house hold doors manufacturing as well as large industrial applications.', '2020-06-07 09:11:37', 1),
(96, 0, 'Brass Pipe Fitting', '', 'Brass Four Way Hose Joint', 40.00, 'Piece', '1591501400_four-way-hose-joint.png', 'Size Range : 1/4\" to 1/2\"\r\n\r\nMaterial : Brass', 'We have a wide range of brass Product that are known for their durability and corrosion resistance properties.  Extensively used for antique and house hold doors manufacturing as well as large industrial applications.', '2020-06-07 09:13:20', 1),
(97, 0, 'Brass Pipe Fitting', '', 'Brass Y Hose Joint', 40.00, 'Piece', '1591501571_y-joint.png', 'Size Range : 1/4\" to 1/2\"\r\n\r\nMaterial : Brass', 'We have a wide range of brass Product that are known for their durability and corrosion resistance properties.  Extensively used for antique and house hold doors manufacturing as well as large industrial applications.', '2020-06-07 09:16:11', 1),
(98, 0, 'Brass Pipe Fitting', '', 'Brass Safety Valve', 150.00, 'Piece', '1591501660_safety-valve.png', 'Size Range : 1/4\" to 1/2\"\r\n\r\nMaterial : Brass', 'We have a wide range of brass Product that are known for their durability and corrosion resistance properties.  Extensively used for antique and house hold doors manufacturing as well as large industrial applications.', '2020-06-07 09:17:40', 1),
(99, 0, 'Brass Pipe Fitting', '', 'Brass Air Cock', 60.00, '', '1591501744_air-cock.png', 'Size Range : 1/4\" to 1/2\"\r\n\r\nMaterial : Brass', 'We have a wide range of brass Product that are known for their durability and corrosion resistance properties.  Extensively used for antique and house hold doors manufacturing as well as large industrial applications.', '2020-06-07 09:19:04', 1),
(100, 0, 'Brass Pipe Fitting', '', 'Brass Fountain Nozzle', 150.00, 'Piece', '1591501931_brass-fountain-nozzle.png', 'Size Range : 1/4\" to 1/2\"\r\n\r\nMaterial : Brass', 'We have a wide range of brass Product that are known for their durability and corrosion resistance properties.  Extensively used for antique and house hold doors manufacturing as well as large industrial applications.', '2020-06-07 09:22:11', 1),
(101, 0, 'Brass Pipe Fitting', '', 'Brass Spray Nozzle', 80.00, 'Piece', '1591502032_spray-nozzle.png', 'Size Range : 1/4\" to 1/2\"\r\n\r\nMaterial : Brass', 'We have a wide range of brass Product that are known for their durability and corrosion resistance properties.  Extensively used for antique and house hold doors manufacturing as well as large industrial applications.', '2020-06-07 09:23:52', 1),
(102, 0, 'Brass Pipe Fitting', '', 'Brass Mini Ball Valve', 200.00, 'Piece', '1591502138_mini-ball-valve.png', 'Size Range : 1/4\" to 1/2\"\r\n\r\nMaterial : Brass', 'We have a wide range of brass Product that are known for their durability and corrosion resistance properties.  Extensively used for antique and house hold doors manufacturing as well as large industrial applications.', '2020-06-07 09:25:38', 1),
(103, 0, 'Brass Pipe Fitting', '', 'Brass Ball Valve', 230.00, 'Piece', '1591502414_ball-valve.png', 'Size Range : 1/4\" to 1/2\"\r\n\r\nMaterial : Brass', 'We have a wide range of brass Product that are known for their durability and corrosion resistance properties.  Extensively used for antique and house hold doors manufacturing as well as large industrial applications.', '2020-06-07 09:30:14', 1),
(104, 0, 'Brass Pipe Fitting', '', 'Brass Gas Cock', 130.00, 'Piece', '1591502612_gas-cock.png', 'Size Range : 1/4\" X 1/4\"\r\n to 1/2\" x 1/2\"\r\n\r\nMaterial : Brass', 'We have a wide range of brass Product that are known for their durability and corrosion resistance properties.  Extensively used for antique and house hold doors manufacturing as well as large industrial applications.', '2020-06-07 09:33:32', 1),
(105, 0, 'Brass Pipe Fitting', '', 'Brass Needle Valve Male', 200.00, 'Piece', '1591502959_needle-valve-male.png', 'Size Range : 1/4\" to 1/2\"\r\n\r\nMaterial : Brass', 'We have a wide range of brass Product that are known for their durability and corrosion resistance properties.  Extensively used for antique and house hold doors manufacturing as well as large industrial applications.', '2020-06-07 09:39:19', 1),
(106, 0, 'Brass Pipe Fitting', '', 'Brass Spray Gun Nipple', 50.00, 'Piece', '1591503055_spray-nozzle.png', 'Size : 5/16\"\r\n\r\nMaterial : Brass', 'We have a wide range of brass Product that are known for their durability and corrosion resistance properties.  Extensively used for antique and house hold doors manufacturing as well as large industrial applications.', '2020-06-07 09:40:55', 1),
(107, 0, 'wire brush', '', 'Stringer Wire Brush ', 230.00, 'Piece', '1591531223_stringer-brush.jpg', 'OD = 7\"\r\nType: Twisted brush', 'Stringer Wire brush are of supreme quality and are available in 4\" and 7\".', '2020-06-07 17:30:23', 1),
(108, 0, 'Castor Wheel', '', 'Forged Castor wheels', 500.00, 'Piece', '1591849809_FORGED-STEEL-CASTOR.png', 'Wheel Size: 150 X 38 mm\r\nHeight: 220 mm\r\nPlate Size: 140 X 110 mm\r\nHole Spacing:	110 x 80 mm\r\nLoad Capacity:	110 - 130 Kg', 'Available in Fixed & Swivel type with brake \r\nhaving size from 4\" to 12\"', '2020-06-11 10:00:09', 1),
(109, 0, 'Castor Wheel', '', 'Spring Loaded Swivel Castor', 600.00, 'Piece', '1591850149_fabricated-castor.png', 'Wheel Size: 150 X 38 mm\r\nHeight: 191 mm\r\nPlate Size: 140 X 115 mm\r\nHole Spacing:	105 x 80 mm\r\nLoad Capacity: 300 - 400 Kg', 'Heavy fabricated spring loaded castors to absorb shocks.\r\navailable in 4\" to 8\"', '2020-06-11 10:05:49', 1),
(110, 0, 'Castor Wheel', '', 'Spring Loaded Fixed Castor', 600.00, 'Piece', '1591850241_spring-loaded-fixed-castor.jpg', 'Wheel Size: 150 X 38 mm\r\nHeight: 191 mm\r\nPlate Size: 140 X 115 mm\r\nHole Spacing:	105 x 80 mm\r\nLoad Capacity:	300 - 400 Kg', 'Heavy fabricated spring loaded castors to absorb shocks.\r\navailable in 4\" to 8\"', '2020-06-11 10:07:21', 1),
(111, 0, 'Castor Wheel', '', 'Forged Plate Spring Loaded Swivel Castor', 600.00, 'Piece', '1591850455_forged-spring-loaded-swivel-castor.jpg', 'Wheel Size: 150 X 38 mm\r\nHeight: 191 mm\r\nPlate Size: 140 X 110 mm\r\nHole Spacing:	110 x 80 mm\r\nLoad Capacity: 600 Kg', 'Heavy Forged plate spring loaded castors to absorb shocks.\r\navailable in 4\" to 9\"', '2020-06-11 10:10:55', 1),
(112, 0, 'Castor Wheel', '', 'Forged Plate Spring Loaded Fixed Castor', 600.00, 'Piece', '1591850526_forged-spring-loaded-fixed-castor.jpg', 'Wheel Size: 150 X 38 mm\r\nHeight: 191 mm\r\nPlate Size: 140 X 110 mm\r\nHole Spacing:	110 x 80 mm\r\nLoad Capacity: 600 Kg', 'Heavy Forged plate spring loaded castors to absorb shocks.\r\navailable in 4\" to 9\"', '2020-06-11 10:12:06', 1),
(113, 0, 'Castor Wheel', '', 'Forged Swivel Castor', 400.00, 'Piece', '1591850731_forged-castor.jpg', 'Wheel Size: 100 X 50 mm\r\nHeight: 157 mm\r\nPlate Size: 150 X 110 mm\r\nHole Spacing:	115 x 70 mm\r\nLoad Capacity: 250-350 Kg', 'Heavy Forged plate castors for heavy load application.\r\navailable in 4\" to 8\"', '2020-06-11 10:15:31', 1),
(114, 0, 'Castor Wheel', '', 'Forged Fixed Castor', 400.00, 'Piece', '1591850871_forged-fixed-castor.jpg', 'Wheel Size: 150 X 50 mm\r\nHeight: 203 mm\r\nPlate Size: 150 X 110 mm\r\nHole Spacing:	115 x 70 mm\r\nLoad Capacity: 250-350 Kg', 'Heavy Forged plate castors for heavy load application.\r\navailable in 4\" to 8\". \r\nAlso can be fitted with  various kind of wheels.', '2020-06-11 10:17:51', 1),
(115, 0, 'Castor Wheel', '', 'Forged Swivel Castor with Brake', 400.00, 'Piece', '1591850978_forged-swivel-castor-with-brake.jpg', 'Wheel Size: 150 X 50 mm\r\nHeight: 203 mm\r\nPlate Size: 150 X 110 mm\r\nHole Spacing:	115 x 70 mm\r\nLoad Capacity: 250-350 Kg', 'Heavy Forged plate castors for heavy load application.\r\navailable in 4\" to 8\". \r\nAlso can be fitted with  various kind of wheels.', '2020-06-11 10:19:38', 1),
(116, 0, 'Castor Wheel', '', 'Swivel Castor with Brake', 500.00, 'Piece', '1591851188_swivel-caster-wheel-with-brake.jpg', 'Wheel Size: 150 X 50 mm\r\nHeight: 198 mm\r\nPlate Size: 133 X 118 mm\r\nHole Spacing:	105 x 75 mm\r\nLoad Capacity: 200-250 Kg', 'Swivel castors available in 4\" to 8\". \r\nAlso can be fitted with  various kind of wheels.', '2020-06-11 10:23:08', 1),
(117, 0, 'Castor Wheel', '', 'Fixed Castor', 500.00, 'Piece', '1591851340_fixed-caster-wheel-with-brake.jpg', 'Wheel Size: 150 X 50 mm\r\nHeight: 198 mm\r\nPlate Size: 150 X 90 mm\r\nHole Spacing:	115 x 55 mm\r\nLoad Capacity: 200-250 Kg', 'Swivel castors available in 4\" to 8\". \r\nAlso can be fitted with  various kind of wheels.', '2020-06-11 10:25:40', 1),
(118, 0, 'Castor Wheel', '', 'Swivel Castor with Brake', 500.00, 'Piece', '1591851466_swivel-caster-wheel-with-brake.jpg', 'Wheel Size: 150 X 50 mm\r\nHeight: 198 mm\r\nPlate Size: 133 X 118 mm\r\nHole Spacing:	105 x 75 mm\r\nLoad Capacity: 200-250 Kg', 'Peddle lock In Back Side\r\nSwivel castors available in 4\" to 8\". \r\nAlso can be fitted with  various kind of wheels.', '2020-06-11 10:27:46', 1),
(119, 0, 'Castor Wheel', '', 'Fabricated Swivel Castor', 500.00, 'Piece', '1591851673_fabricated-swivel-castor.jpg', 'Wheel Size: 150 X 50 mm\r\nHeight: 192 mm\r\nPlate Size: 116 X 100 mm\r\nHole Spacing:	85 x 70 mm\r\nLoad Capacity: 200-300 Kg', 'Medium Duty Fabricated Castors. \r\nSwivel castors available in 4\" to 8\". \r\nAlso can be fitted with  various kind of wheels.', '2020-06-11 10:31:13', 1),
(120, 0, 'Castor Wheel', '', 'Fabricated Swivel Castor With Lock', 500.00, 'Piece', '1591851767_swivel-castor.jpg', 'Wheel Size: 150 X 50 mm\r\nHeight: 192 mm\r\nPlate Size: 116 X 100 mm\r\nHole Spacing:	85 x 70 mm\r\nLoad Capacity: 200-300 Kg', 'Medium Duty Fabricated Castors. \r\nSwivel castors available in 4\" to 8\". \r\nAlso can be fitted with  various kind of wheels.', '2020-06-11 10:32:47', 1),
(121, 0, 'Castor Wheel', '', 'Fabricated Fixed Castor', 500.00, 'Piece', '1591851922_fixed-fabricated-castor.jpg', 'Wheel Size: 150 X 50 mm\r\nHeight: 192 mm\r\nPlate Size: 116 X 100 mm\r\nHole Spacing:	85 x 70 mm\r\nLoad Capacity: 200-300 Kg', 'Medium Duty Fabricated Castors. \r\nSwivel castors available in 4\" to 8\". \r\nAlso can be fitted with  various kind of wheels.', '2020-06-11 10:35:22', 1),
(122, 0, 'Castor Wheel', '', 'SS Swivel Castor', 350.00, 'Piece', '1591852332_ss-swivel-castor.jpg', 'Wheel Size: 100 X 32 mm\r\nHeight: 137 mm\r\nPlate Size: 96 X 78 mm\r\nHole Spacing:	75 x 55 mm\r\nLoad Capacity: 90 Kg', 'SS Castors. \r\nSwivel castors available in 2\" to 8\". \r\nAlso can be fitted with  various kind of wheels.', '2020-06-11 10:42:12', 1),
(123, 0, 'Castor Wheel', '', 'SS Swivel Castor', 350.00, 'Piece', '1591852449_ss-fixed-castor.jpg', 'Wheel Size: 150 X 38 mm\r\nHeight: 137 mm\r\nPlate Size: 115 X 78 mm\r\nHole Spacing:	85 x 45 mm\r\nLoad Capacity: 90 Kg', 'SS Castors. \r\nFixed castors available in 3\" to 8\". \r\nAlso can be fitted with  various kind of wheels.', '2020-06-11 10:44:09', 1),
(124, 0, 'Castor Wheel', '', 'SS Swivel Castor', 450.00, 'Piece', '1591852526_ss-swivel-castor-with-lock.jpg', 'Wheel Size: 100 X 32 mm\r\nHeight: 137 mm\r\nPlate Size: 96 X 78 mm\r\nHole Spacing:	75 x 55 mm\r\nLoad Capacity: 90 Kg', 'SS Castors. \r\nSwivel castors available in 2\" to 8\". \r\nAlso can be fitted with  various kind of wheels.', '2020-06-11 10:45:26', 1),
(125, 0, 'Rubber Products', '', 'Bridge Rubber Bearing', 60.00, 'Piece', '1591865649_bridge-rubber-bearings-250x250.png', 'Color : 	Black\r\nMaterial : Natural Rubber\r\nHardness : 40-90 A\r\nNumber Of Row : Single, Double', 'Please send us your requirement with your specification.', '2020-06-11 14:24:09', 1),
(126, 0, 'Rubber Products', '', 'Electric Panel Rubber Beading', 150.00, 'Kg.', '1591865834_electric-panel-rubber-beading-250x250.jpg', 'Usage/Application :	Automobiles\r\nMaterial :	Butadiene Rubber\r\nColor :	Black\r\nThickness : 2-20 mm\r\nWidth : 1-5 m\r\nLength : 10-40 mm', 'Available in Different rubber material. send us your requirement with specification.', '2020-06-11 14:27:14', 1),
(127, 0, 'Rubber Products', '', 'Bridge Compression Rubber Seal', 600.00, 'Mtr.', '1591865936_bridge-compression-rubber-seal-250x250.jpg', 'Material : Rubber \r\nColor : Black\r\nLength : 10-30 mtr\r\nWidth : 1-2 mtr', 'Available in Different rubber material. send us your requirement with specification.', '2020-06-11 14:28:56', 1),
(128, 0, 'Rubber Products', '', 'Rubber Strips', 150.00, 'Kg.', '1591866104_epdm-rubber-250x250.png', 'Material  : Rubber\r\nColor	Black\r\nPacking Type : Roll\r\nLength : 10-30 mtr\r\nWidth : 1-2 mtr', 'Available in Different rubber material. send us your requirement with specification.', '2020-06-11 14:31:44', 1),
(129, 0, 'Rubber Products', '', 'Rubber Strips', 150.00, 'kg.', '1591866193_epdm-rubber-strip-250x250.png', 'Material  : Rubber\r\nColor	Black\r\nHardness	 : 60-85 Shore A\r\nApplication : Industrial\r\nWidth : 8-20 inches\r\nForm : Strip', 'Available in Different rubber material. send us your requirement with specification.', '2020-06-11 14:33:13', 1),
(130, 0, 'Rubber Products', '', 'Foam Rubber Gaskets', 250.00, 'Kg.', '1591866297_foam-gaskets-250x250.jpg', 'Shape : Flat Gasket\r\nMaterial : Natural Rubber\r\nPackaging Type  : Packet\r\nHardness :	30-80 shore A\r\nApplication/Usage : 	Industrial\r\nInner Diameter : 	Upto 45 mm', 'Available in Different rubber material. send us your requirement with specification.', '2020-06-11 14:34:57', 1),
(131, 0, 'Rubber Products', '', 'EPDM Rubber Gaskets', 250.00, 'Kg.', '1591866398_epdm-gaskets-250x250.jpg', 'Shape :	Ring Gasket\r\nMaterial :	EPDM Rubber\r\nColor :	Black\r\nFinishing	: Matte\r\nWidth : 1-2 mtr\r\nMax Temperature :	225 Deg F', 'Available in Different rubber material. send us your requirement with specification.', '2020-06-11 14:36:38', 1),
(132, 0, 'Rubber Products', '', 'PVC Water Stop Rubber Seal', 100.00, 'Kg.', '1591866499_pvc-water-stop-seal-250x250.jpg', 'Color : 	Black\r\nUsage/Application :	Industrial\r\nType :	Base Seal\r\nDiameter :	53.975 mm\r\nMaterial :	Rubber\r\nStyle :	Sealing Strip', 'Available in Different rubber material. send us your requirement with specification.', '2020-06-11 14:38:19', 1),
(133, 0, 'Rubber Products', '', 'Rubber Tube', 170.00, 'Kg.', '1591866575_rubber-tubes.png', 'Size	: 3/4 inch\r\nMaterial	: Rubber\r\nUnit Length :	6m\r\nHollow Sections :	Circular\r\nColor :	Black\r\nForm :	Tube', 'Available in Different rubber material. send us your requirement with specification.', '2020-06-11 14:39:35', 1),
(134, 0, 'Rubber Products', '', 'Black Nitrile Rubber Tube', 210.00, 'Kg.', '1591866657_nitrile-tube-250x250.jpg', 'Color : 	Black\r\nMaterial : Nitrile Rubber\r\nUnit Length :	6m\r\nHollow Sections : Circular\r\nDensity : 	50-80 kg/Cubic meter\r\nForm :	Tube', 'Available in Different rubber material. send us your requirement with specification.', '2020-06-11 14:40:57', 1),
(135, 0, 'Rubber Products', '', 'Rubber Hose Tube', 180.00, 'Kg.', '1591866743_rubber-hose-250x250.jpg', 'Material :	Rubber\r\nType :	Spray Hose Pipe\r\nNominal Size :	3/4 inch\r\nunit Length :	6m\r\nPattern :	Flexible\r\nColor :	Black', 'Available in Different rubber material. send us your requirement with specification.', '2020-06-11 14:42:23', 1),
(136, 0, 'Rubber Products', '', 'Rubber Hose Tube', 180.00, 'Kg.', '1591867008_natural-rubber-250x250.jpg', 'Material :	Rubber\r\nType :	Spray Hose Pipe\r\nNominal Size :	3/4 inch\r\nunit Length :	6m\r\nPattern :	Flexible\r\nColor :	Black', 'Available in Different rubber material. send us your requirement with specification.', '2020-06-11 14:46:48', 1),
(137, 0, 'Rubber Products', '', 'Shot Blasting Belt Rubber Sheet', 180.00, 'Kg.', '1591867121_shot-blasting-rubber-sheet-250x250.jpg', 'Material :	Rubber\r\nColor :	Black\r\nThickness :	2.0 mm\r\nPackaging Type :	Roll\r\nTemperature Range : -45  to 120 degree C\r\nStrength: 100-315 n/mm', 'Available in Different rubber material. send us your requirement with specification.', '2020-06-11 14:48:41', 1),
(138, 0, 'Packing Products', '', 'Painted and Waxed Steel Strapping', 100.00, 'Kg.', '1591872209_download.jfif', 'Width: 12.7 to 32 mm\r\nThickness : 0.38 to 0.80 mm\r\nCoat: color coating\r\ncolor : black', 'Available in coating and blue tempered steel.\r\nsend us your requirement.', '2020-06-11 16:13:29', 1),
(139, 0, 'Packing Products', '', 'Strap Seals', 100.00, 'Kg.', '1591872386_images.jfif', 'For Width: 12.7 to 32 mm\r\nThickness : 1 to 3 mm\r\n\r\ncolor : silver', 'Available in different color with  logo printing  facilities.\r\nsend us your requirement.', '2020-06-11 16:16:26', 1),
(140, 0, 'Wire Brush', '', 'Circular Wire Brush Wheel', 7500.00, 'Piece', '1591876895_wire-brush-250x250.jpg', 'Brass Brush\r\nOD = 8\"\r\nID = 1\"\r\nLength = 12\"\r\nMaterial = Brass\r\nWire Dia. = 0.28 mm', 'we manufacturer industrial wire brushes in various sizes. you can send us your enquiry for your requirement.', '2020-06-11 17:31:35', 1),
(141, 0, 'Wire Brush', '', 'Electrode Cleaning Wire Brush', 2000.00, 'Piece', '1591877154_IMG-20160909-WA0011.jpg', 'Brass Brush\r\nOD = 5\"\r\nID = 2\"\r\nLength = 6\"\r\nMaterial = Brass\r\nWire Dia. = 0.28 mm', 'we manufacturer industrial wire brushes in various sizes. you can send us your enquiry for your requirement.', '2020-06-11 17:35:54', 1),
(142, 0, 'Wire Brush', '', 'Brass Wire Brush Heavy', 5000.00, 'Piece', '1591930782_brass-wire-brush.jpg', 'Brass Brush\r\nOD = 12\"\r\nID = 2\"\r\nLength = 4\"\r\nMaterial = Brass\r\nWire Dia. = 0.28 mm', 'we manufacturer industrial wire brushes in various sizes. you can send us your enquiry for your requirement.', '2020-06-12 08:29:42', 1),
(143, 0, 'Wire Brush', '', 'Brass Wire Brush Wheel', 100.00, 'Piece', '1591930999_wire-brush.jpg', 'Brass Brush\r\nOD = 3\"\r\nID = 6 mm\r\nLength = 22 mm\r\nMaterial = Brass\r\nWire Dia. = 0.22 mm', 'we manufacturer industrial wire brushes in various sizes. you can send us your enquiry for your requirement.', '2020-06-12 08:33:19', 1),
(144, 0, 'Wire Brush', '', 'Roller Wire Brush', 8000.00, 'Piece', '1591931156_brass-wire-brush-500x500.jpg', 'Brass Brush\r\nOD = 8\"\r\nID = 6 mm\r\nLength = 10\"\r\nMaterial = Brass\r\nWire Dia. = 0.22 mm', 'we manufacturer industrial wire brushes in various sizes. you can send us your enquiry for your requirement.', '2020-06-12 08:35:56', 1),
(145, 0, 'Wire Brush', '', 'Wire Brush Wheel', 1200.00, 'Piece', '1591931406_wire-brush.jpg', 'Brass Brush\r\nOD = 6\"\r\nID = 6 mm\r\nLength = 3\"\r\nMaterial = MS \r\nColor = Black\r\nWire Dia. = 0.22 mm', 'we manufacturer industrial wire brushes in various sizes. you can send us your enquiry for your requirement.', '2020-06-12 08:40:06', 1);
INSERT INTO `product` (`item_id`, `req_id`, `category`, `item_brand`, `item_name`, `item_price`, `unit`, `item_image`, `size`, `item_desc`, `item_register`, `status`) VALUES
(146, 0, 'Wire Brush', '', 'Soft GI Wire Brush', 130.00, 'Piece', '1591931575_soft-wire-brush.jpg', 'Brass Brush\r\nOD = 6\"\r\nID = 6 mm\r\nLength = 1\"\r\nMaterial = MS Soft\r\nColor = Black\r\nWire Dia. = 0.11 mm', 'we manufacturer industrial wire brushes in various sizes. you can send us your enquiry for your requirement.', '2020-06-12 08:42:55', 1),
(147, 0, 'Wire Brush', '', 'Circular Wire Brush', 5000.00, 'Piece', '1591931763_wire-brush-brass.jpg', 'Brass Brush\r\nOD = 10\"\r\nID = 6 mm\r\nLength = 3\"\r\nMaterial = MS Soft\r\nColor = Black\r\nWire Dia. = 0.28 mm', 'we manufacturer industrial wire brushes in various sizes. you can send us your enquiry for your requirement.', '2020-06-12 08:46:03', 1),
(148, 0, 'Wire Brush', '', 'Brass Soft Wire Brush', 5000.00, 'Piece', '1591932233_wire-brush.jpg', 'Brass Brush\r\nOD = 12\"\r\nID = 3\"\r\nLength = 1/2\"\r\nMaterial = Brass coated\r\nWire Dia. = 0.28 mm', 'we manufacturer industrial wire brushes in various sizes. you can send us your enquiry for your requirement.', '2020-06-12 08:53:53', 1),
(149, 0, 'Wire Brush', '', 'Brass Cup Wire Brush', 100.00, 'Piece', '1591932371_IMG-20180821-WA0005.jpg', 'Brass Brush\r\nOD = 4\"\r\nMaterial = Brass Coated\r\nWire Dia. = 0.28 mm', 'we manufacturer industrial wire brushes in various sizes. you can send us your enquiry for your requirement.', '2020-06-12 08:56:11', 1),
(150, 0, 'Wire Brush', '', 'Soft GI Wire Brush', 600.00, 'Piece', '1591932589_wire-brush.jpg', 'Brass Brush\r\nOD = 4\"\r\nID = 110 mm\r\nKey = 10 x 10 x 5 mm\r\nMaterial = Brass Coated\r\nWire Dia. = 0.28 mm', 'we manufacturer industrial wire brushes in various sizes. you can send us your enquiry for your requirement.', '2020-06-12 08:59:49', 1),
(151, 0, 'Wire Brush', '', 'Long Circular Wire Brush', 7000.00, 'Piece', '1591932795_wire-brush-od-20-inch.jpg', 'Brass Brush\r\nOD = 9\"\r\nID = 3\"\r\nLENGTH = 20\"\r\nMaterial = Brass Coated\r\nWire Dia. = 0.28 mm', 'we manufacturer industrial wire brushes in various sizes. you can send us your enquiry for your requirement.', '2020-06-12 09:03:15', 1),
(152, 0, 'Wire Brush', '', 'MS Hard Wire Brush', 100.00, 'Piece', '1591933050_WIRE-BRUSH-3-HARD.jpg', 'Brass Brush\r\nOD = 3\"\r\nID = 10 mm\r\nLENGTH = 22 mm\r\nMaterial = MS Black Hard Wire\r\nWire Dia. = 0.28 mm', 'we manufacturer industrial wire brushes in various sizes. you can send us your enquiry for your requirement.', '2020-06-12 09:07:30', 1),
(153, 0, 'Wire Brush', '', 'Heavy Wire Brush', 6000.00, 'Piece', '1591933233_WIRE-BRUSH-300.jpg', 'Brass Brush\r\nOD = 12\"\r\nID = 2 \"\r\nLENGTH = 4\"\r\nMaterial = Brass Coated\r\nWire Dia. = 0.28 mm', 'we manufacturer industrial wire brushes in various sizes. you can send us your enquiry for your requirement.', '2020-06-12 09:10:33', 1),
(154, 0, 'Wire Brush', '', 'Brass Cup Wire Brush', 180.00, 'Piece', '1591933345_images.jpg', 'Brass Brush\r\nOD = 6\"\r\nMaterial = Brass Coated\r\nWire Dia. = 0.28 mm', 'we manufacturer industrial wire brushes in various sizes. you can send us your enquiry for your requirement.', '2020-06-12 09:12:25', 1),
(155, 0, 'Wire Brush', '', 'Boiler Cleaning Brush', 150.00, 'Piece', '1591933814_product-250x250.jpeg', 'Material: MS Black\r\nOd : 4\"\r\nLength : 6 \"\r\nThread : 1/2\"\r\ncolor : black', 'boiler brush are available in various customize  size.\r\nTo get the best prices send us your requirement.', '2020-06-12 09:20:14', 1),
(156, 0, 'Wire Brush', '', 'MS Boiler Cleaning Brush', 150.00, 'Piece', '1591933904_mild-steel-boiler-brush-500x500.jpg', 'Material: MS Black\r\nOd : 2\"\r\nLength : 5 \"\r\nThread : 1/2\"\r\ncolor : black', 'boiler brush are available in various customize  size.\r\nTo get the best prices send us your requirement.', '2020-06-12 09:21:44', 1),
(157, 0, 'Wire Brush', '', 'Boiler Cleaning Brush', 150.00, 'Piece', '1591933967_boiler-wire-brush-500x500.jpg', 'Material: MS Black\r\nOd : 2\" to 6\"\r\nLength : 2\" to  12\"\r\nThread : 1/2\"\r\ncolor : black', 'boiler brush are available in various customize  sizes & material. To get the best prices send us your requirement.', '2020-06-12 09:22:47', 1),
(158, 0, 'Wire Brush', '', 'Brass Boiler Cleaning Brush', 200.00, 'Piece', '1591934030_brass-boiler-brush-500x500.jpg', 'Material: Brass \r\nOd : 2\" to 6\"\r\nLength : 2\" to  12\"\r\nThread : 1/2\"\r\ncolor : Golden', 'boiler brush are available in various customize  sizes & material. To get the best prices send us your requirement.', '2020-06-12 09:23:50', 1),
(159, 0, 'Wire Brush', '', 'Soft Wire Brush', 100.00, 'Piece', '1591934209_WIRE-BRUSH-80.jpg', 'OD = 3\"\r\nID = 16 mm\r\nWIDTH = 22 mm\r\nMaterial = MS Soft Wire\r\nWire Dia. = 0.11 mm', 'we manufacturer industrial wire brushes in various sizes. you can send us your enquiry for your requirement.', '2020-06-12 09:26:49', 1),
(160, 0, 'Wire Brush', '', 'Cup Wire Brush With Spindle', 180.00, 'Piece', '1591934412_cup-brush-rod.jpg', 'Brass Brush\r\nOD = 3\"\r\nRod Dia = 6 mm\r\nMaterial = Brass Coated\r\nWire Dia. = 0.28 mm', 'we manufacturer industrial wire brushes in various sizes. you can send us your enquiry for your requirement.', '2020-06-12 09:30:12', 1),
(161, 0, 'Wire Brush', '', 'Brass Wire Brushes', 500.00, 'Piece', '1591934527_circular-wire-brush-250x250.jpg', 'OD = 2\" to 12\"\r\nID = 10 mm to 3\"\r\nWIDTH = 10 mm to 25 \"\r\nMaterial = Brass\r\nWire Dia. = 0.11 mm to 0.32 mm', 'we manufacturer industrial wire brushes in various sizes. you can send us your enquiry for your requirement.', '2020-06-12 09:32:07', 1),
(162, 0, 'Wire Brush', '', 'Handle Wire Brush', 100.00, 'Piece', '1591934806_handle-wire-brush.jpg', 'Width = 1\" to 3 \"\r\nlength = 10\" to 16 \"\r\nThickness = 1/2\" to 1\"\r\nRows = 3 to 6 Nos.\r\nColumn = 10 to 30 Nos.\r\nMaterial = MS\r\nWire Dia. = 0.11 mm to 0.32 mm', 'we manufacturer industrial wire brushes in various sizes. you can send us your enquiry for your requirement.', '2020-06-12 09:36:46', 1),
(163, 0, 'Wire Brush', '', 'Long Heavy Wire Brushes', 10000.00, 'Piece', '1591934955_heavy-wire-brush-250x250.jpg', 'OD = 2\" to 15\"\r\nID = 10 mm to 4\"\r\nWIDTH = 10 mm to 30\"\r\nMaterial = Brass / MS\r\nWire Dia. = 0.11 mm to 0.6 mm', 'we manufacturer industrial wire brushes in various sizes. you can send us your enquiry for your requirement.', '2020-06-12 09:39:15', 1),
(164, 0, 'Wire Brush', '', 'Floor Cleaning Brush', 300.00, 'Piece', '1591935223_floor-cleaning-brass-brush.jpg', 'OD = 6\" to 12\"\r\nHeight = 100 mm to 300 mm\r\nHandle = 1.5 mtr\r\nMaterial = Brass / MS\r\nWire Dia. = 0.11 mm to 0.6 mm', 'we manufacturer industrial wire brushes in various sizes. you can send us your enquiry for your requirement.', '2020-06-12 09:43:43', 1),
(165, 0, 'Wire Brush', '', 'Floor Cleaning Brush', 3000.00, 'Piece', '1591935368_floor-cleaning-brass-brush-rect.jpg', 'Width = 100 mm\r\nLength = 300 mm \r\nThickness = 1\"\r\nWire Length  = 150 mm\r\nHandle = 1.5 mtr\r\nMaterial = Brass / MS\r\nWire Dia. = 0.11 mm to 0.6 mm', 'we manufacturer industrial wire brushes in various sizes. you can send us your enquiry for your requirement.', '2020-06-12 09:46:08', 1),
(166, 0, 'Wire Brush', '', 'Brass Wire Brush With Spindle', 100.00, 'Piece', '1591935900_download.jfif', 'OD = 3\" to 6\"\r\nRod Dia. = 6 mm\r\nMaterial = Brass / MS / SS\r\nWire Dia. = 0.11 mm to 0.6 mm', 'we manufacturer industrial wire brushes in various sizes. you can send us your enquiry for your requirement.', '2020-06-12 09:55:00', 1),
(167, 0, 'Wire Brush', '', 'MS Wire Brush With Spindle', 100.00, 'Piece', '1591935964_product-250x250.jpeg', 'OD = 2\" to 6\"\r\nRod Dia. = 6 mm\r\nMaterial = Brass / MS / SS\r\nWire Dia. = 0.11 mm to 0.6 mm', 'we manufacturer industrial wire brushes in various sizes. you can send us your enquiry for your requirement.', '2020-06-12 09:56:04', 1),
(168, 0, 'SS Products', '', 'SS Rod', 200.00, 'Kg.', '1592108962_ss-rod.jpg', 'Material Grade = SS 304\r\nSingle Piece Length = 6 - 36m\r\nThickness/Diameter = 0-1 inch,\r\n 1-2 inch, 2-3 inch, 3-4 inch, >4 inch', '', '2020-06-14 09:59:22', 1),
(169, 0, 'SS Products', '', 'SS Hex Bar', 200.00, 'Kg.', '1592114570_stainless-steel-rod-250x250.jpg', 'Material Grade = SS 304\r\nSingle Piece Length = 6 - 36m\r\nThickness/Diameter = 0-1 inch,\r\n 1-2 inch, 2-3 inch, 3-4 inch, >4 inch', '', '2020-06-14 11:32:50', 1),
(170, 0, 'SS Products', '', 'SS Pipe & Tubes', 200.00, 'Kg.', '1592114819_stainless-steel-304l-pipe-250x250.jpg', 'Material Grade = SS 304\r\nSingle Piece Length = 6 - 6 mtr\r\nSize = 1/2\" to 14\" NB', '', '2020-06-14 11:36:59', 1),
(171, 0, 'SS Products', '', 'SS Pipe Fittings', 100.00, 'Piece', '1592115050_ss-fittings-250x250.jpg', 'Material Grade = SS 304\r\nAll kind of pipe fitting products are available similar to our brass pipe fitting range', 'Send us your enquiry', '2020-06-14 11:40:50', 1),
(172, 0, 'SS Products', '', 'SS Flanges', 190.00, 'Kg.', '1592115195_ss-316l-flanges-250x250.jpg', 'Material = Stainless Steel\r\nSize = 5-10 inch, 10-20 inch, >30 inch, 0-1 inch, 1-5 inch, 20-30 inch\r\nMaterial Standard = ANSI B16.5\r\nColor = Silver', 'Send us your enquiry', '2020-06-14 11:43:15', 1),
(173, 0, 'SS Products', '', 'SS Sheet', 190.00, 'Kg.', '1592115287_stainless-steel-sheets-250x250.png', 'Shape = Sheets\r\nMaterial = Stainless Steel\r\nWidth = 1000 mm to 2500 mm\r\nLength = 2500 mm to 12500 mm\r\nThickness = 0.5 mm to 200 mm\r\nSteel Grade = 309 S / 310 S', 'Send us your enquiry', '2020-06-14 11:44:47', 1),
(174, 0, 'SS Products', '', 'SS bolt', 70.00, 'Kg.', '1592115480_industrial-bolts-250x250.jpg', 'Material = Stainless Steel\r\nSize = M2 to M32\r\nLength = 10 mm to 300 mm\r\nSteel Grade = 316', 'Send us your enquiry', '2020-06-14 11:48:00', 1),
(175, 0, 'SS Products', '', 'SS Nut', 70.00, 'Kg.', '1592115501_industrial-nuts-250x250.jpg', 'Material = Stainless Steel\r\nSize = M2 to M32\r\nSteel Grade = 316', 'Send us your enquiry', '2020-06-14 11:48:21', 1),
(176, 0, 'SS Products', '', 'SS Wire', 250.00, 'Kg.', '1592115586_316-stainless-steel-wire-250x250.jpg', 'Grade = SS304 / SS316\r\nMaterial = SS\r\nFinish = Polished\r\nTechnique = Hot Rolled', 'Send us your enquiry', '2020-06-14 11:49:46', 1),
(177, 0, 'Rubber Products', '', 'Rubber Sanitary Seal', 20.00, 'Piece', '1592115904_rubber-sanitary-seal.jpg', 'Materiel = Natural / Neoprene Rubber\r\nSize = 100 mm / 75 mm\r\nColor = Black', 'Customization available. Send us your requirement.', '2020-06-14 11:55:04', 1),
(178, 0, 'Packing Products', '', 'Composite or Cord Strap', 25.00, 'Mtr.', '1592116436_composite-strap-250x250.jpg', 'Width = 13 mm to 32 mm\r\nLength = 300 to 1100 mtr\r\ncolor : White', 'Send us your requirement.', '2020-06-14 12:03:56', 1),
(179, 0, 'Packing Products', '', 'Polyester Woven Lash or Lashing Belt', 15.00, 'Mtr.', '1592116605_11-500x500.jpg', 'Sizes = 16, 19, 25, 35, 40, 50 mm\r\nUsage/Application = Lifting\r\nColor = Available In Orange, White, Yellow,etc.\r\nMaterial = Polyester\r\nLoad Capacity	More than 100 metric tons', 'Send us your requirement.', '2020-06-14 12:06:45', 1),
(180, 0, 'Packing Products', '', 'Polyester Lifting Slings', 215.00, 'Piece', '1592116809_polyster-webbing-slings-500x500.jpg', 'Type = Webbing Slings\r\nMaterial = Polyester\r\nUsage/Application = Lifting\r\nPackaging Type = Packet\r\nWidth = 25 mm to 200 mm\r\nLength = 5-20 meter\r\nCapacity = 1 to 60 ton\r\nElongation = 2-3%', 'Send us your requirement.', '2020-06-14 12:10:09', 1),
(181, 0, 'Packing Products', '', 'Manual Tensioner', 1600.00, 'Piece', '1592116954_manual-tensioner-250x250.jpg', 'Color = Red\r\nOverall Length = 275 mm\r\nStrap Thickness = 0.4-1.0 mm\r\nStrap Width = 9-19 mm\r\nTechnique = Feed Wheel\r\nWeight = 1.5 Kg', 'Send us your requirement.', '2020-06-14 12:12:34', 1),
(182, 0, 'Packing Products', '', 'Plastic Strapping Tensioner', 2000.00, 'Piece', '1592117072_tensioner-machine-250x250.jpg', 'Color = Green\r\nWeight = 1.5 Kg\r\nFor Strap Width = 9-19 mm\r\nAutomation Grade = Manual\r\nMaterial = Steel\r\nStrapping Material = PP/PET', 'send your requirement', '2020-06-14 12:14:32', 1),
(183, 0, 'Packing Products', '', 'Pneumatic Strapping Tool', 16000.00, 'Piece', '1592117150_pneumatic-strapping-tool-250x250.jpg', 'Weight = 3.8\r\nMaterial = Steel\r\nType = Pneumatic\r\nStrap Thickness = 0.50 to 1.27 mm\r\nStrap Width = 12 to 19 mm', 'Send us your requirement.', '2020-06-14 12:15:50', 1),
(184, 0, 'Packing Products', '', 'Manual Strapping Sealer', 1600.00, 'Piece', '1592117258_manual-strapping-sealer-250x250.jpg', 'Material = Plastic, Stainless Steel\r\nAutomation Grade = Manual\r\nWeight = 1 Kg\r\nPackaging Type = Carton Box\r\nColor = Black and Silver\r\nStrap Width = 1/2 to 3/4 inch', 'Send us your requirement.', '2020-06-14 12:17:38', 1),
(185, 0, 'Packing Products', '', 'Lashing Buckle', 20.00, 'Piece', '1592117386_lashing-buckle-250x250.jpg', 'Design Type = Standard\r\nMaterial = Stainless Steel\r\nPack Type = BOX\r\nLength = 16, 19, 25, 32, 40, 50 mm\r\nSurface Finish = Color Coated\r\nThickness = 2-5 mm', 'Outfitted with a modern infrastructure, we are the most prominent supplier of Lashing Buckle that is adorned on the straps of handbags. Send us your requirement.', '2020-06-14 12:19:46', 1),
(186, 0, 'Packing Products', '', 'Ratchet Buckles', 150.00, 'Piece', '1592117524_ratchet-buckles-250x250.jpg', 'Usage/Application = Cargo Lashing\r\nMaterial = SS\r\nColor = Golden\r\nApplication = Industrial\r\nSurface Finish = Color Coated\r\nWeight = 100-150 gm', 'Outfitted with a modern infrastructure, we are the most prominent supplier of ratchet Buckles that is adorned on the straps of handbags. Send us your requirement.', '2020-06-14 12:22:04', 1),
(187, 0, 'Packing Products', '', 'Ratchet Strap', 150.00, 'Piece', '1592117634_ratchet-strap-250x250.jpg', 'Usage/Application = Industrial,Packaging\r\nColor = any', 'We are the most prominent supplier of ratchet Belt. Send us your requirement.', '2020-06-14 12:23:54', 1),
(188, 0, 'Packing Products', '', 'Strapping Dispenser', 13000.00, 'Piece', '1592117721_strapping-dispenser-250x250.jpg', 'Material = Stainless Steel and Rubber\r\nWheel Type = Rubber with steel centre\r\nStrap Type = Steel and PET\r\nStrap Width = 12mm to 32mm\r\nColor = Blue and Black\r\nWheel Size = 10-15 Inch', 'We are the most prominent supplier of Strapping Dispenser. Send us your requirement.', '2020-06-14 12:25:21', 1),
(189, 0, 'Packing Products', '', 'PP Cord Strap', 70.00, 'Kg.', '1592117849_pp-strap-250x250.png', 'Material = PP\r\nPackaging Type = BOX\r\nColor = Green,White,Black\r\nPack Type = Roll\r\nLength Per Roll = up to 12 m\r\nStyle = Polyester twisted yarn', 'We are the most prominent supplier of PP Strap. Send us your requirement.', '2020-06-14 12:27:29', 1),
(190, 0, 'Safety Products', '', 'Foot Door Opener', 220.00, 'Piece', '1592627906_foot-door-opener.jfif', '1) 4\" x 4\" x 45 mm (height)\r\n2) 4\" x 3\" x 45 mm (height)\r\n3) 4\" x 2\" x 45 mm (height)\r\nMat : MS (powder Coated) / SS', 'Suitable to use on Wooden, Steel , Aluminium Doors. we make it in customization sizes as per customers need.', '2020-06-20 10:08:26', 1),
(193, 9, 'Safety Products', '', 'Key Door Opener', 30.00, 'Piece', '1593578008-door-opener.jpg', 'Material: Plastic\r\nColor : Multi\r\nUse: Door Opener', 'We at Postora.in have achieved a distinct and dynamic position in the industry by providing a wide assortment of Industrial Safety Products. we supply the highest quality of Key door opener. Send us your requirement to get best offer possible.', '2020-07-01 10:13:43', 1),
(194, 0, 'Safety Products', '', 'Disposable Three Layer Face Mask', 10.00, 'Piece', '1593844088-product-jpeg-250x250.jfif', 'Length :- 175mm\r\nWidth :- 95MM\r\nNumber of Layer : 3\r\nDisposability :- Disposable\r\nBrand :-	MBT postora\r\nMaterial :- Non-Woven\r\nColour :- Blue\r\nTop Layer :- 28GSM Spund Bond Non Woven', 'Leading Supplier of 5 Ply Reusable KN95 Face Mask, 5 Ply N95 Face Mask, Stitched Face Mask with ISO/CE Certifications, Stitched 3 Ply Face Mask, Stitched 3 Ply Non Woven Face Mask and Stitched PP Non Woven Disposable Face Mask.', '2020-07-04 11:58:08', 1),
(195, 0, 'Safety Products', '', 'Midas Cut Resistance Hand Gloves', 70.00, 'Pair', '1593932647-nitrile-coated-gloves.jfif', 'Brand : Midas\r\nColor : White / Grey\r\nMaterial : Nitrile\r\nCoated Material : Nitrile\r\nFeature : Cut Resistant\r\nFinger Type : Full Fingered\r\nGender : Unisex', 'We at Postora.in have achieved a distinct and dynamic position in the industry by providing a wide assortment of Dial Nitrile Coated Hand Gloves. These nitrile coated hand gloves have the light coating of nitrile on interlock cotton liner with nonsmooth the finish.', '2020-07-05 12:25:56', 1),
(196, 0, 'Safety Products', '', 'Latex Industrial Hand Gloves', 65.00, 'Pair', '1593935283-latex-industrial-hand-gloves.jpg', 'Brand : Victor plus\r\nColor : Any\r\nMaterial : Latex Rubber\r\nFinger Type : Full Fingered', 'We at Postora.in have achieved a distinct and dynamic position in the industry by providing a wide assortment of Industrial Hand Gloves.', '2020-07-05 13:18:03', 1),
(197, 0, 'Safety Products', '', 'Latex Supported Hand Gloves', 65.00, 'Pair', '1593935365-latex-supported-hand-gloves.jpg', 'Brand : Victor plus\r\nColor : Any\r\nMaterial : Latex Rubber\r\nFinger Type : Full Fingered', 'We at Postora.in have achieved a distinct and dynamic position in the industry by providing a wide assortment of Latex Industrial Hand Gloves.', '2020-07-05 13:19:25', 1),
(198, 0, 'Safety Products', '', 'Victor Washable Black Rubber Hand Gloves', 65.00, 'Pair', '1593936253-black-rubber-hand-gloves-500x500.jpeg', 'Brand : Victor plus\r\nColor : Any\r\nMaterial : Latex Rubber\r\nFinger Type : Full Fingered\r\nType	Washable\r\nPattern	Plain', 'We at Postora.in have achieved a distinct and dynamic position in the industry by providing a wide assortment of Latex Industrial Hand Gloves.', '2020-07-05 13:34:13', 1),
(199, 0, 'Safety Products', '', 'KN95 Face Mask', 65.00, 'Pair', '1593937052-kn95-mask-500x500.jpg', 'Number of Layers : 5\r\nCertification : ISO, CE, FDA\r\nDisposability : Reusable\r\nMaterial : Spun bond pp, Melt blown, \r\n        Electrostatic cotton, Melt blown, \r\n       Spun bond pp.\r\nModel : KN95', 'We at Postora.in have achieved a distinct and dynamic position in the industry by providing a wide assortment of Face Mask.', '2020-07-05 13:47:32', 1),
(200, 0, 'Safety Products', '', 'Reusable Face Mask', 10.00, 'Piece', '1593940111-yellow-mask-250x250.jpeg', 'Number of Layer : 3\r\nDisposability :- Disposable\r\nBrand :-	MBT postora\r\nMaterial :- Non-Woven\r\nColour :- Yellow', 'Leading Supplier of 5 Ply Reusable KN95 Face Mask, 5 Ply N95 Face Mask, Stitched Face Mask with ISO/CE Certifications, Stitched 3 Ply Face Mask, Stitched 3 Ply Non Woven Face Mask and Stitched PP Non Woven Disposable Face Mask.', '2020-07-05 14:38:31', 1),
(201, 9, 'Safety Products', '', 'N95 Face Mask', 100.00, 'Piece', '1593928985-02-250x250.jpg', 'Number of Layer : 5\r\nDisposability :- Disposable, Reusable\r\nBrand :-	MBT postora\r\nColour :- White\r\nModel : KN95', 'Leading Supplier of 5 Ply Reusable KN95 Face Mask, 5 Ply N95 Face Mask, Stitched Face Mask with ISO/CE Certifications, Stitched 3 Ply Face Mask, Stitched 3 Ply Non Woven Face Mask and Stitched PP Non Woven Disposable Face Mask', '2020-07-05 14:41:58', 1),
(202, 0, 'Safety Products', '', 'Sensuous Industrial Rubber Gloves', 70.00, 'Pair', '1593944100-sensuous-orange-industrial-rubber-hand-gloves.jpg', 'Application :-  Industry/Material, \r\n   Handling/Assembly,\r\n   Construction/Heavy Duty Work, \r\nSize :- Large, Free Size\r\nMaterial : Latex\r\nFeatures : Chemical Resistant, Oil Resistant\r\nFinger Type : Full Fingered\r\nFeature : Water Resistant, Acid Resistant.\r\nCuff Length : 11-15 Inches', 'We at Postora.in have achieved a distinct and dynamic position in the industry by providing a wide assortment of Latex Industrial Hand Gloves.', '2020-07-05 15:45:00', 1),
(203, 0, 'Safety Products', '', 'Hand Sanitizer', 50.00, 'Piece', '1593945991-instant-hand-sanitizer-500x500.jpeg', 'Packaging Size : 250ml, 500ml, 5 lit\r\nPackaging Type : Bottle\r\nAlcohol Content : 61 - 70%\r\nType of Alcohol : Ethanol\r\nFragrance  : Lavender\r\nBrand : As per availability', 'We at Postora.in have achieved a distinct and dynamic position in the industry by providing a wide assortment of Hand Sanitizer.', '2020-07-05 16:16:31', 1),
(204, 0, 'Safety Products', '', 'Infrared Thermometer Gun', 2100.00, 'Piece', '1593958228-infrared-thermometer-250x250.jpg', 'Temperature Range :- 320c-420c\r\nUsage/Application :- all\r\nMaterial :- Plastic\r\nThermometer Type :- Infrared Thermometers\r\nIR Range :- 3-5 cm\r\nDisplay :- Led', 'We at Postora.in have achieved a distinct and dynamic position in the industry by providing a wide assortment of Safety products. we are supplying infrared thermometer gun which are particularly suitable for small children as well as adult because they have a fast measurement feature.', '2020-07-05 19:40:28', 1),
(205, 0, 'Safety Products', '', 'Face Mask', 100.00, 'Piece', '1593958585-mask.jfif', 'Number of Layer : 5\r\nDisposability :- Disposable, Reusable\r\nBrand :-	MBT postora\r\nColour :- White', 'Leading Supplier of 5 Ply Reusable KN95 Face Mask, 5 Ply N95 Face Mask, Stitched Face Mask with ISO/CE Certifications, Stitched 3 Ply Face Mask, Stitched 3 Ply Non Woven Face Mask and Stitched PP Non Woven Disposable Face Mask', '2020-07-05 19:46:25', 1),
(206, 0, 'Safety Products', '', 'Foot Operated Hand Sanitizer Stand', 1000.00, 'Piece', '1593959734-foot-operated-hand-sanitizer-stand-500x500.jpeg', 'Mounting Type :- Floor Mounted\r\nContainer Capacity:- 1 Litre\r\nWith Container :- No\r\nType :- Manual\r\nBrand :- MBT Postora\r\nCapacity:- 1 Litre Sanitizer Holding Capacity', 'We at Postora.in have achieved a distinct and dynamic position in the industry by providing a wide assortment of Safety products. We are supplying Pedal Operated Hand Sanitizer Stand Which is completely Hands-Free Sanitisation System that helps in prevention of particle transfer from one to another and thereby eliminating the risk of the COVID-19 disease.', '2020-07-05 20:05:34', 1),
(207, 0, 'Springs', '', 'Industrial Compression Spring', 400.00, 'Piece', '1601309917-industrial-compression-spring-500x500.jpg', 'Brand :- Postora\r\nSize	:- 0.2-30 mm\r\nMaterial :- Spring Steel\r\nWire Diameter	:- 0.2 to 40 mm\r\nResistant to :- Corrosion\r\nType :- Compression Spring', '.', '2020-09-28 21:48:37', 1),
(208, 0, 'Springs', '', 'Heavy Duty Helical Spring', 500.00, 'Piece', '1601868767-heavy-duty-spring-500x500.jpg', 'Brand :- Postora\r\nSize	:- 0.2-30 mm\r\nMaterial :- Spring Steel\r\nWire Diameter	:- 0.2 to 40 mm\r\nResistant to :- Corrosion\r\nType :- Compression Spring', '.', '2020-10-05 09:02:47', 1),
(209, 0, 'Springs', '', 'Double Torsion Spring', 50.00, 'Piece', '1601868816-double-torsion-spring-500x500.jpg', 'Brand :- Postora\r\nSize	:- 0.2-30 mm\r\nMaterial :- Spring Steel\r\nWire Diameter	:- 0.2 to 40 mm\r\nResistant to :- Corrosion\r\nType :- Compression Spring', '.', '2020-10-05 09:03:36', 1);

-- --------------------------------------------------------

--
-- Table structure for table `quotation`
--

CREATE TABLE `quotation` (
  `quote_id` int(10) NOT NULL,
  `enq_id` int(10) NOT NULL,
  `req_id` int(10) NOT NULL,
  `item_id` int(10) NOT NULL,
  `item_name` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `qty` int(10) NOT NULL,
  `unit` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `rate` int(11) NOT NULL,
  `tax` varchar(11) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `item_desc` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quotation`
--

INSERT INTO `quotation` (`quote_id`, `enq_id`, `req_id`, `item_id`, `item_name`, `qty`, `unit`, `rate`, `tax`, `item_desc`) VALUES
(17, 55, 9, 68, 'Brass Elbow Male Assembly', 10, 'nos.', 100, '18%', 'mm');

-- --------------------------------------------------------

--
-- Table structure for table `requesterlogin_tb`
--

CREATE TABLE `requesterlogin_tb` (
  `req_id` int(11) NOT NULL,
  `r_name` varchar(60) COLLATE utf8_bin NOT NULL,
  `r_email` varchar(60) COLLATE utf8_bin NOT NULL,
  `r_password` varchar(60) COLLATE utf8_bin NOT NULL,
  `companyname` text COLLATE utf8_bin NOT NULL,
  `about` text COLLATE utf8_bin NOT NULL,
  `address` text COLLATE utf8_bin NOT NULL,
  `r_mob` text COLLATE utf8_bin NOT NULL,
  `gst` varchar(15) COLLATE utf8_bin NOT NULL,
  `pimage` varchar(50) COLLATE utf8_bin NOT NULL,
  `refcode` int(10) NOT NULL,
  `status` int(1) NOT NULL,
  `companyurl` varchar(200) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `requesterlogin_tb`
--

INSERT INTO `requesterlogin_tb` (`req_id`, `r_name`, `r_email`, `r_password`, `companyname`, `about`, `address`, `r_mob`, `gst`, `pimage`, `refcode`, `status`, `companyurl`) VALUES
(0, 'Vishal Singh', 'raj@gmail.com', 'user1', 'Maa Bhagwati Traders', 'Industrial Suppliers', 'Sai Nagar, Nagpur.', '9028756929', '27GIEPS5350B1Z9', '1593792324-IMG-20190711-WA0020.jpg', 1, 1, 'maabhagwatitraders'),
(10, '  User', 'user@gmail.com', 'user', '', '', '', '', 'yes', '1591200035_avtar2.jpeg', 1, 1, ''),
(11, 'Jay', 'jay@gmail.com', 'jay123', 'xyz', '', 'NAGPUR', '9028756929', '', '', 1, 0, 'xyz'),
(41, 'vishal', 'mbhagwatitraders@gmail.com', 'user', '', '', '', '', '', '', 75049, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `salereq`
--

CREATE TABLE `salereq` (
  `req_id` int(10) NOT NULL,
  `subject` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `reqdesc` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `slider_id` int(10) NOT NULL,
  `slider_image` varchar(200) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`slider_id`, `slider_image`, `status`) VALUES
(15, '1592910915-slider1.png', 1),
(17, '1592910961-slider3.png', 1),
(18, '1592910968-slider4.png', 1),
(19, '1592911000-slider5.png', 1),
(20, '1592911022-banner-last.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `visit`
--

CREATE TABLE `visit` (
  `id` int(11) NOT NULL,
  `count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `visit`
--

INSERT INTO `visit` (`id`, `count`) VALUES
(1, 84);

-- --------------------------------------------------------

--
-- Table structure for table `wire brush`
--

CREATE TABLE `wire brush` (
  `wb_id` int(10) NOT NULL,
  `item_id` int(10) NOT NULL,
  `od` int(10) NOT NULL,
  `id` int(10) NOT NULL,
  `length` varchar(10) NOT NULL,
  `wire` varchar(200) NOT NULL,
  `wire_dia` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `req_id` int(10) DEFAULT NULL,
  `item_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`req_id`, `item_id`) VALUES
(9, 3),
(9, 66),
(9, 68),
(9, 67),
(9, 65),
(9, 64),
(9, 46),
(25, 58),
(25, 57),
(9, 190),
(0, 0),
(0, 106),
(0, 27),
(0, 4),
(0, 29),
(0, 107);

-- --------------------------------------------------------

--
-- Table structure for table `zestocat`
--

CREATE TABLE `zestocat` (
  `cat_id` int(10) NOT NULL,
  `cat_name` varchar(200) NOT NULL,
  `Keywords` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `zestocat`
--

INSERT INTO `zestocat` (`cat_id`, `cat_name`, `Keywords`) VALUES
(1, 'Wire Brush', ''),
(2, 'Castor wheels', ''),
(3, 'Ceramic Guides', ''),
(4, 'Springs', '');

-- --------------------------------------------------------

--
-- Table structure for table `zestoproduct`
--

CREATE TABLE `zestoproduct` (
  `item_id` int(10) NOT NULL,
  `vendor_id` varchar(10) NOT NULL,
  `Item_name` varchar(200) NOT NULL,
  `item_image` varchar(100) NOT NULL,
  `cat_id` int(10) NOT NULL,
  `price` int(10) NOT NULL,
  `unit` varchar(10) NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminlogin_tb`
--
ALTER TABLE `adminlogin_tb`
  ADD PRIMARY KEY (`a_login_id`);

--
-- Indexes for table `approduct`
--
ALTER TABLE `approduct`
  ADD PRIMARY KEY (`app_id`);

--
-- Indexes for table `approvequote`
--
ALTER TABLE `approvequote`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `enquiry`
--
ALTER TABLE `enquiry`
  ADD PRIMARY KEY (`enq_id`);

--
-- Indexes for table `featuredproduct`
--
ALTER TABLE `featuredproduct`
  ADD PRIMARY KEY (`fpid`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `quotation`
--
ALTER TABLE `quotation`
  ADD PRIMARY KEY (`quote_id`);

--
-- Indexes for table `requesterlogin_tb`
--
ALTER TABLE `requesterlogin_tb`
  ADD PRIMARY KEY (`req_id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`slider_id`);

--
-- Indexes for table `visit`
--
ALTER TABLE `visit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zestocat`
--
ALTER TABLE `zestocat`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `zestoproduct`
--
ALTER TABLE `zestoproduct`
  ADD PRIMARY KEY (`item_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adminlogin_tb`
--
ALTER TABLE `adminlogin_tb`
  MODIFY `a_login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `approduct`
--
ALTER TABLE `approduct`
  MODIFY `app_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `approvequote`
--
ALTER TABLE `approvequote`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `enquiry`
--
ALTER TABLE `enquiry`
  MODIFY `enq_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `featuredproduct`
--
ALTER TABLE `featuredproduct`
  MODIFY `fpid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=210;

--
-- AUTO_INCREMENT for table `quotation`
--
ALTER TABLE `quotation`
  MODIFY `quote_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `requesterlogin_tb`
--
ALTER TABLE `requesterlogin_tb`
  MODIFY `req_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `slider_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `visit`
--
ALTER TABLE `visit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
