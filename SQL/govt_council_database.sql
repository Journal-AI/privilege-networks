-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               8.0.22 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for council_pos
CREATE DATABASE IF NOT EXISTS `council_pos` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `council_pos`;

-- Dumping structure for table council_pos.east_devon
CREATE TABLE IF NOT EXISTS `east_devon` (
  `supplier_name` varchar(255) NOT NULL,
  `order_number` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `order_date` date NOT NULL,
  `itemdelivery_date` date NOT NULL,
  `supplier_code` varchar(50) NOT NULL DEFAULT '',
  `line_value` double(10,0) DEFAULT NULL,
  `order_value` double(15,0) NOT NULL,
  `cost_centre` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  KEY `idx_po` (`supplier_name`,`order_number`,`supplier_code`,`line_value`,`order_value`,`cost_centre`),
  KEY `supplier_name` (`supplier_name`),
  KEY `cost_centre` (`cost_centre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='East Devon POs';

-- Data exporting was unselected.

-- Dumping structure for table council_pos.pendle_borough
CREATE TABLE IF NOT EXISTS `pendle_borough` (
  `organisation_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `reference_number` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `service_description` varchar(255) NOT NULL,
  `quantity` float NOT NULL,
  `price` float NOT NULL,
  `value` float NOT NULL,
  `supplier_name` varchar(255) NOT NULL,
  `tender_process` varchar(255) NOT NULL,
  KEY `supplier_name` (`supplier_name`),
  KEY `department` (`department`),
  KEY `idx_po` (`reference_number`,`department`,`quantity`,`price`,`value`,`supplier_name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Data exporting was unselected.

-- Dumping structure for table council_pos.pendle_borough_records
CREATE TABLE IF NOT EXISTS `pendle_borough_records` (
  `supplier_name` varchar(255) NOT NULL,
  `value` float NOT NULL DEFAULT '0',
  `department` varchar(255) NOT NULL DEFAULT '0',
  `service_description` varchar(255) NOT NULL DEFAULT '0',
  `privilege` varchar(255) NOT NULL DEFAULT '0',
  `trade_cat` varchar(50) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Data exporting was unselected.

-- Dumping structure for table council_pos.rochdale_borough
CREATE TABLE IF NOT EXISTS `rochdale_borough` (
  `organisation_name` varchar(255) DEFAULT NULL,
  `purchase_order_number` varchar(255) DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `total_value` float DEFAULT NULL,
  `supplier_name` varchar(255) DEFAULT NULL,
  `account_name` varchar(255) DEFAULT NULL,
  `service` varchar(255) DEFAULT NULL,
  KEY `idx_po` (`purchase_order_number`,`order_date`,`total_value`,`supplier_name`,`service`),
  KEY `supplier_name` (`supplier_name`),
  KEY `service` (`service`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Data exporting was unselected.

-- Dumping structure for table council_pos.stockport_metropolitan_borough
CREATE TABLE IF NOT EXISTS `stockport_metropolitan_borough` (
  `document_date` date NOT NULL,
  `po_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `line_number` tinyint NOT NULL,
  `supplier_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `supplier_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `pro_class` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `pro_class_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `desc_goods` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `service` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `expense_area` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `po_value` float NOT NULL DEFAULT '0',
  KEY `supplier_name` (`supplier_name`),
  KEY `service` (`service`),
  KEY `idx_po` (`document_date`,`po_number`,`supplier_name`,`service`,`line_number`,`po_value`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Data exporting was unselected.

-- Dumping structure for table council_pos.suppliers
CREATE TABLE IF NOT EXISTS `suppliers` (
  `supplier_name` varchar(255) NOT NULL DEFAULT '',
  `trade_category` varchar(50) DEFAULT NULL,
  UNIQUE KEY `supplier_name` (`supplier_name`),
  KEY `trade_category` (`trade_category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Data exporting was unselected.

-- Dumping structure for table council_pos.suppliers_master_data
CREATE TABLE IF NOT EXISTS `suppliers_master_data` (
  `Source_Name` varchar(255) NOT NULL,
  `Notice_Identifier` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Notice_Type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Organisation_Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Status` varchar(20) DEFAULT NULL,
  `Published_Date` datetime DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `Nationwide` varchar(50) DEFAULT NULL,
  `Postcode` varchar(50) DEFAULT NULL,
  `Region` varchar(255) DEFAULT NULL,
  `Cpv_Codes` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Contact_Name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Contact_Email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Contact_Address_1` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Contact_Address_2` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Contact_Town` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Contact_Postcode` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Contact_Country` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Contact_Telephone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Contact_Website` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Attachments` varchar(50) DEFAULT NULL,
  `Links` varchar(255) DEFAULT NULL,
  `Additional_Text` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Start_Date` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `End_Date` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Closing_Date` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Is_sub-contract` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Parent_Reference` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Suitable_for_SME` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Suitable_for_VCO` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Supply Chain` varchar(10) DEFAULT NULL,
  `OJEU Contract Type` varchar(10) DEFAULT NULL,
  `Value Low` float DEFAULT NULL,
  `Value High` float DEFAULT NULL,
  `Awarded Date` varchar(50) DEFAULT NULL,
  `Awarded Value` float DEFAULT NULL,
  `supplier_name` text,
  `Supplier's contact name` varchar(50) DEFAULT NULL,
  `Contract start date` varchar(50) DEFAULT NULL,
  `Contract end date` varchar(50) DEFAULT NULL,
  `OJEU Procedure Type` varchar(50) DEFAULT NULL,
  `Accelerated Justification` varchar(50) DEFAULT NULL,
  `Closing Time` time DEFAULT NULL,
  KEY `Source_Name` (`Source_Name`),
  KEY `Start_Date` (`Start_Date`),
  KEY `End_Date` (`End_Date`),
  KEY `Closing_Date` (`Closing_Date`),
  KEY `Contract start date` (`Contract start date`),
  KEY `Contract end date` (`Contract end date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Data exporting was unselected.

-- Dumping structure for table council_pos.supplier_trades
CREATE TABLE IF NOT EXISTS `supplier_trades` (
  `supplier_name` varchar(255) NOT NULL,
  `cpv_code1` varchar(50) NOT NULL,
  `cpv_code2` varchar(50) DEFAULT NULL,
  `cpv_code3` varchar(50) DEFAULT NULL,
  `cpv_code4` varchar(50) DEFAULT NULL,
  `cpv_code5` varchar(50) DEFAULT NULL,
  `cpv_code6` varchar(50) DEFAULT NULL,
  `cpv_code7` varchar(50) DEFAULT NULL,
  `cpv_code8` varchar(50) DEFAULT NULL,
  `cpv_code9` varchar(50) DEFAULT NULL,
  `cpv_code10` varchar(50) DEFAULT NULL,
  `cpv_code11` varchar(50) DEFAULT NULL,
  `cpv_code12` varchar(50) DEFAULT NULL,
  `cpv_code13` varchar(50) DEFAULT NULL,
  `cpv_code14` varchar(50) DEFAULT NULL,
  `cpv_code15` varchar(50) DEFAULT NULL,
  `cpv_code16` varchar(50) DEFAULT NULL,
  `cpv_code17` varchar(50) DEFAULT NULL,
  `cpv_code18` varchar(50) DEFAULT NULL,
  `cpv_code19` varchar(50) DEFAULT NULL,
  `cpv_code20` varchar(50) DEFAULT NULL,
  `cpv_code21` varchar(50) DEFAULT NULL,
  `cpv_code22` varchar(50) DEFAULT NULL,
  `cpv_code23` varchar(50) DEFAULT NULL,
  `cpv_code24` varchar(50) DEFAULT NULL,
  `cpv_code25` varchar(50) DEFAULT NULL,
  `cpv_code26` varchar(50) DEFAULT NULL,
  `cpv_code27` varchar(50) DEFAULT NULL,
  `cpv_code28` varchar(50) DEFAULT NULL,
  KEY `supplier_name` (`supplier_name`),
  KEY `cpv_code1` (`cpv_code1`),
  KEY `cpv_code2` (`cpv_code2`),
  KEY `cpv_code3` (`cpv_code3`),
  KEY `cpv_code4` (`cpv_code4`),
  KEY `cpv_code5` (`cpv_code5`),
  KEY `cpv_code6` (`cpv_code6`),
  KEY `cpv_code7` (`cpv_code7`),
  KEY `cpv_code8` (`cpv_code8`),
  KEY `cpv_code9` (`cpv_code9`),
  KEY `cpv_code10` (`cpv_code10`),
  KEY `cpv_code11` (`cpv_code11`),
  KEY `cpv_code12` (`cpv_code12`),
  KEY `cpv_code13` (`cpv_code13`),
  KEY `cpv_code14` (`cpv_code14`),
  KEY `cpv_code15` (`cpv_code15`),
  KEY `cpv_code16` (`cpv_code16`),
  KEY `cpv_code17` (`cpv_code17`),
  KEY `cpv_code18` (`cpv_code18`),
  KEY `cpv_code19` (`cpv_code19`),
  KEY `cpv_code20` (`cpv_code20`),
  KEY `cpv_code21` (`cpv_code21`),
  KEY `cpv_code22` (`cpv_code22`),
  KEY `cpv_code23` (`cpv_code23`),
  KEY `cpv_code24` (`cpv_code24`),
  KEY `cpv_code25` (`cpv_code25`),
  KEY `cpv_code26` (`cpv_code26`),
  KEY `cpv_code27` (`cpv_code27`),
  KEY `cpv_code28` (`cpv_code28`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Data exporting was unselected.

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
