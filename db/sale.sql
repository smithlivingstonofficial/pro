-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 20, 2017 at 10:14 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sales`
--

-- --------------------------------------------------------

--
-- Table structure for table `collection`
--

CREATE TABLE `collection` (
  `transaction_id` int(11) NOT NULL,
  `date` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `invoice` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `remarks` varchar(100) NOT NULL,
  `balance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `membership_number` varchar(100) NOT NULL,
  `prod_name` varchar(550) NOT NULL,
  `expected_date` varchar(500) NOT NULL,
  `note` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_name`, `address`, `contact`, `membership_number`, `prod_name`, `expected_date`, `note`) VALUES
(19, '001', 'coimbatore', '987654314', '', 'Arun', '', ''),
(20, '002', 'Virudhunagar', '9658741230', '', 'Aravindh', '', ''),
(21, '003', 'coimbatore', '9514785236', '', 'Aswin', '', ''),
(22, '005', 'Coimbatore', '9324785165', '', 'Amith', '', ''),
(23, '004', 'Salem', '9547812657', '', 'Amir', '', ''),
(24, '006', 'Perur,Coimabtore', '9521503687', '', 'siva', '', ''),
(26, '007', 'Mettur,Salem', '9857214685', '', 'Kiran', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_code` varchar(200) NOT NULL,
  `gen_name` varchar(200) NOT NULL,
  `product_name` varchar(200) NOT NULL,
  `cost` varchar(100) NOT NULL,
  `o_price` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `profit` varchar(100) NOT NULL,
  `supplier` varchar(100) NOT NULL,
  `onhand_qty` int(10) NOT NULL,
  `qty` int(10) NOT NULL,
  `qty_sold` int(10) NOT NULL,
  `expiry_date` varchar(500) NOT NULL,
  `date_arrival` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_code`, `gen_name`, `product_name`, `cost`, `o_price`, `price`, `profit`, `supplier`, `onhand_qty`, `qty`, `qty_sold`, `expiry_date`, `date_arrival`) VALUES
(5, 'Sevvallai', 'Banana', 'Fruit ', '', '110', '120', '10', 'Hariharan', 0, 50, 50, '2017-10-01', '2017-09-25'),
(6, 'Green Apple', 'Apple', 'Fruit  ', '', '130', '150', '20', 'Sahar', 0, 92, 100, '2017-09-30', '2017-09-25'),
(8, 'Morrish', 'Banana', '  Fruit', '', '130', '150', '20', 'Kiran', 0, 79, 80, '2017-10-04', '2017-09-25'),
(9, 'Strawberry', 'Berry', 'Fruit ', '', '190', '200', '10', 'Krishna', 0, 50, 50, '2017-10-01', '2017-09-25'),
(10, 'Watermelon', 'water', ' fruit', '', '200', '220', '20', 'Mohan', 0, 50, 50, 'Oct-11-2017', '10-09-2017');

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `transaction_id` int(11) NOT NULL,
  `invoice_number` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `suplier` varchar(100) NOT NULL,
  `remarks` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `purchases_item`
--

CREATE TABLE `purchases_item` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `qty` int(11) NOT NULL,
  `cost` varchar(100) NOT NULL,
  `invoice` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `transaction_id` int(11) NOT NULL,
  `invoice_number` varchar(100) NOT NULL,
  `cashier` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `profit` varchar(100) NOT NULL,
  `due_date` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `balance` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`transaction_id`, `invoice_number`, `cashier`, `date`, `type`, `amount`, `profit`, `due_date`, `name`, `balance`) VALUES
(1, 'RS-33822', 'Admin', '10/11/17', 'cash', '300', '40', '300', '', ''),
(2, 'RS-927233', 'Admin', '10/11/17', 'cash', '150', '20', '20', '001', '');

-- --------------------------------------------------------

--
-- Table structure for table `sales_order`
--

CREATE TABLE `sales_order` (
  `transaction_id` int(11) NOT NULL,
  `invoice` varchar(100) NOT NULL,
  `product` varchar(100) NOT NULL,
  `qty` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `profit` varchar(100) NOT NULL,
  `product_code` varchar(150) NOT NULL,
  `gen_name` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `price` varchar(100) NOT NULL,
  `discount` varchar(100) NOT NULL,
  `date` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales_order`
--

INSERT INTO `sales_order` (`transaction_id`, `invoice`, `product`, `qty`, `amount`, `profit`, `product_code`, `gen_name`, `name`, `price`, `discount`, `date`) VALUES
(1, 'RS-3872343', '1', '5', '400', '100', 'Green Apple', 'Apple', ' ', '80', '', '09/21/17'),
(2, 'RS-0323502', '2', '8', '480', '80', 'Morish', 'Banana', ' ', '60', '', '09/21/17'),
(3, 'RS-38203322', '3', '8', '640', '160', 'Kamala Orange', 'Orange', ' ', '80', '', '09/21/17'),
(5, 'RS-8900238', '3', '3', '240', '60', 'Kamala Orange', 'Orange', ' ', '80', '', '09/21/17'),
(6, 'RS-203023', '3', '5', '400', '100', 'Kamala Orange', 'Orange', ' ', '80', '', '09/21/17'),
(7, 'RS-0032', '2', '2', '120', '20', 'Morish', 'Banana', ' ', '60', '', '09/21/17'),
(8, 'RS-3250562', '3', '2', '160', '40', 'Kamala Orange', 'Orange', ' ', '80', '', '09/21/17'),
(9, 'RS-73992', '2', '2', '120', '20', 'Morish', 'Banana', ' ', '60', '', '09/25/17'),
(10, 'RS-33343333', '4', '13', '1560', '260', 'Apple', 'Apple-XS', ' Fruit ', '120', '', '09/25/17'),
(11, 'RS-33822', '6', '2', '300', '40', 'Green Apple', 'Apple', 'Fruit  ', '150', '', '10/11/17'),
(12, 'RS-33063266', '6', '1', '150', '20', 'Green Apple', 'Apple', 'Fruit  ', '150', '', '10/11/17'),
(13, 'RS-927233', '8', '1', '150', '20', 'Morrish', 'Banana', '  Fruit', '150', '', '10/11/17'),
(14, 'RS-56220022', '6', '5', '750', '100', 'Green Apple', 'Apple', 'Fruit  ', '150', '', '10/12/17');

-- --------------------------------------------------------

--
-- Table structure for table `supliers`
--

CREATE TABLE `supliers` (
  `suplier_id` int(11) NOT NULL,
  `suplier_name` varchar(100) NOT NULL,
  `suplier_address` varchar(100) NOT NULL,
  `suplier_contact` varchar(100) NOT NULL,
  `contact_person` varchar(100) NOT NULL,
  `note` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supliers`
--

INSERT INTO `supliers` (`suplier_id`, `suplier_name`, `suplier_address`, `suplier_contact`, `contact_person`, `note`) VALUES
(1, 'Manoj', 'Idappadi,Salem', 'Manoj', '98654789', 'Green Apple'),
(2, 'Kiran', 'Thondamuthur,Coimbatore', '9988776655', 'siva', 'Morrish'),
(3, 'Balaji', 'Aathur,Salem', '9632147854', 'Balaji', 'Green Grapes'),
(4, 'Mohan', 'Mettur,Salem', 'Mohan', '9879542078', 'Watermelon'),
(5, 'Krishna', 'Thudiyalur,Coimabtore', 'Krishna', '9572154036', 'Strawberry'),
(6, 'Saamy', 'Perur,Coimbatore', 'Saamy', '8754962150', 'Pomegranate'),
(7, 'Sahar', 'Saravanampatty,Coimab', 'Sahar', '8574298452', 'Apple'),
(8, 'Karan', 'Shathy,Coimbatore', '9201478563', 'Karan', 'Nendharam'),
(9, 'Arjun', 'Thudiyalur,Coimbatore', 'Arjun', '9789879875', 'Orange'),
(10, 'Hariharan', 'Selvapuram,Coimbatore', '7854963152', 'Hariharan', 'Red Banana'),
(11, 'Manoj Siva', 'Kuvandampalayam,Coimbatore', '9587425613', 'Manoj Siva', 'Rasthaali'),
(12, 'Mohan Balaji', 'Peelamedu,Coimbatore', 'Mohan Balaji', '9587426420', 'Karpooravalli');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `position` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `name`, `position`) VALUES
(1, 'admin', 'admin', 'Admin', 'admin'),
(3, 'admin', 'admin123', 'Administrator', 'admin'),
(4, 'manojkiran', 'manojkiran', 'ManojKiran', 'admin'),
(5, 'siva', 'siva', 'kiran', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `collection`
--
ALTER TABLE `collection`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`),
  ADD UNIQUE KEY `customer_name` (`customer_name`),
  ADD UNIQUE KEY `customer_name_2` (`customer_name`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Indexes for table `purchases_item`
--
ALTER TABLE `purchases_item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Indexes for table `sales_order`
--
ALTER TABLE `sales_order`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Indexes for table `supliers`
--
ALTER TABLE `supliers`
  ADD PRIMARY KEY (`suplier_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `collection`
--
ALTER TABLE `collection`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `purchases_item`
--
ALTER TABLE `purchases_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `sales_order`
--
ALTER TABLE `sales_order`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `supliers`
--
ALTER TABLE `supliers`
  MODIFY `suplier_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
