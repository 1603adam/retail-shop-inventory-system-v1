--
-- Table structure for table `customer`
--
 
CREATE TABLE `customer` (
  `cust_id` int(11) NOT NULL,
  `cust_name` varchar(100) NOT NULL,
  `cust_gender` char(1) DEFAULT NULL,
  `cust_phoneno` varchar(20) DEFAULT NULL,
  `cust_email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
 
-- --------------------------------------------------------
 
--
-- Table structure for table `delivery`
--
 
CREATE TABLE `delivery` (
  `delivery_id` int(11) NOT NULL,
  `delivery_datetime` datetime DEFAULT NULL,
  `delivery_total` decimal(10,2) DEFAULT NULL,
  `delivery_quantity` int(11) DEFAULT NULL,
  `supp_id` int(11) DEFAULT NULL,
  `stock_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
 
-- --------------------------------------------------------
 
--
-- Table structure for table `employee`
--
 
CREATE TABLE `employee` (
  `emp_id` int(11) NOT NULL,
  `emp_name` varchar(100) NOT NULL,
  `emp_role` varchar(50) DEFAULT NULL,
  `emp_phoneno` varchar(20) DEFAULT NULL,
  `emp_status` varchar(20) DEFAULT NULL,
  `emp_startdate` date DEFAULT NULL,
  `emp_workhours` decimal(5,2) DEFAULT NULL,
  `emp_certifications` text DEFAULT NULL,
  `emp_salary` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
 
-- --------------------------------------------------------
 
--
-- Table structure for table `expense`
--
 
CREATE TABLE `expense` (
  `exp_id` int(11) NOT NULL,
  `exp_date` date DEFAULT NULL,
  `exp_amount` decimal(10,2) DEFAULT NULL,
  `exp_type` varchar(50) DEFAULT NULL,
  `exp_status` varchar(20) DEFAULT NULL,
  `exp_category` varchar(50) DEFAULT NULL,
  `exp_desc` text DEFAULT NULL,
  `emp_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
 
-- --------------------------------------------------------
 
--
-- Table structure for table `payment`
--
 
CREATE TABLE `payment` (
  `pay_id` int(11) NOT NULL,
  `pay_method` varchar(50) DEFAULT NULL,
  `pay_amount` decimal(10,2) DEFAULT NULL,
  `pay_date` date DEFAULT NULL,
  `pay_status` varchar(20) DEFAULT NULL,
  `supp_id` int(11) DEFAULT NULL,
  `emp_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
 
-- --------------------------------------------------------
 
--
-- Table structure for table `product`
--
 
CREATE TABLE `product` (
  `prod_id` int(11) NOT NULL,
  `prod_name` varchar(100) NOT NULL,
  `prod_category` varchar(50) DEFAULT NULL,
  `prod_brand` varchar(50) DEFAULT NULL,
  `prod_costprice` decimal(10,2) DEFAULT NULL,
  `prod_sellprice` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
 
-- --------------------------------------------------------
 
--
-- Table structure for table `sales`
--
 
CREATE TABLE `sales` (
  `sales_id` int(11) NOT NULL,
  `sales_datetime` datetime DEFAULT NULL,
  `sales_pos` varchar(50) DEFAULT NULL,
  `sales_totamount` decimal(10,2) DEFAULT NULL,
  `sales_discounts` decimal(10,2) DEFAULT NULL,
  `sales_finaltotal` decimal(10,2) DEFAULT NULL,
  `sales_status` varchar(20) DEFAULT NULL,
  `emp_id` int(11) DEFAULT NULL,
  `prod_id` int(11) DEFAULT NULL,
  `cust_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
 
-- --------------------------------------------------------
 
--
-- Table structure for table `stock`
--
 
CREATE TABLE `stock` (
  `stock_id` int(11) NOT NULL,
  `stock_quantity` int(11) DEFAULT NULL,
  `stock_unitcost` decimal(10,2) DEFAULT NULL,
  `stock_totalcost` decimal(10,2) DEFAULT NULL,
  `stock_status` varchar(20) DEFAULT NULL,
  `prod_id` int(11) DEFAULT NULL,
  `exp_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;