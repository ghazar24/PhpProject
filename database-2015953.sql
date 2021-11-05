-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.18-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for database-2015953
CREATE DATABASE IF NOT EXISTS `database-2015953` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `database-2015953`;

-- Dumping structure for table database-2015953.customers
CREATE TABLE IF NOT EXISTS `customers` (
  `customer_id` char(36) NOT NULL DEFAULT uuid(),
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `address` varchar(25) NOT NULL,
  `city` varchar(25) NOT NULL,
  `province` varchar(25) NOT NULL,
  `postal_code` varchar(7) NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `customer_creation_date` datetime NOT NULL DEFAULT current_timestamp(),
  `customer_modification_date` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`customer_id`),
  UNIQUE KEY `user_name` (`user_name`),
  KEY `first_name` (`first_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='this table is to keep truck of the customers information';

-- Dumping data for table database-2015953.customers: ~20 rows (approximately)
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` (`customer_id`, `first_name`, `last_name`, `address`, `city`, `province`, `postal_code`, `user_name`, `password`, `customer_creation_date`, `customer_modification_date`) VALUES
	('05402803-abb7-11eb-90f1-18473def48f8', 'ghazar', 'ghazarian', '1124 Avenue Shorecrest', 'Laval', 'QC', 'H7W 1R6', 'test1111', '$2y$10$5TbKxEXm9lr1c/XH7B.DJONAm2851GWsxbkpQl8Cy/okH4vMXYI5m', '2021-05-02 22:26:51', '2021-05-02 22:26:51'),
	('25dc1192-aa64-11eb-89fc-18473def48f8', 'thenewghazar', 'thenewghazarian', 'gfh', 'montreal', 'ottawa', '', 'ghazzz', '$2y$10$7hGIabunKUD2IaSixgBr3efmnFi89cNCCcDlXE6bKN3jz5.qO5C3i', '2021-05-01 06:01:06', '2021-05-01 06:01:06'),
	('28ddaf83-abb8-11eb-90f1-18473def48f8', 'ghazar', 'ghazarian', '1124 Avenue Shorecrest', 'Laval', 'QC', 'H7W 1R6', '2345', '$2y$10$fC606vwP9uYNYWrxNezVQeSJmUsGFMkvzaY79f9VR3JMbBblBZ7qO', '2021-05-02 22:35:00', '2021-05-02 22:35:00'),
	('2e06820d-ac9d-11eb-8058-18473def48f8', 'Damas', 'ghazar', '1124', 'laval', 'Qb', 'h7w 1r6', 'Damas2', '$2y$10$aQlvi27KVRQWXVpShDM0Z..I4Fp3RUaIlXHJF13sXaiyBRXOHPBse', '2021-05-04 01:54:24', '2021-05-04 01:54:55'),
	('2f422c94-aca1-11eb-8058-18473def48f8', 'lal', 'lala', 'lala', 'lala', 'lala', 'lala', 'data', 'lala', '2021-05-04 02:23:04', '2021-05-04 02:32:19'),
	('2f9d1586-acaa-11eb-9650-18473def48f8', 'ghazar', 'ghazarian', '1124 Avenue Shorecrest', 'Laval', 'QC', 'H7W 1R6', 'main1', '$2y$10$ljah65RgjtXMMVnU/EBqIeNdm9xQGl0nmVZWDebtq.sMI.PYfYQwC', '2021-05-04 03:27:30', '2021-05-04 03:28:02'),
	('311b1b00-abb6-11eb-90f1-18473def48f8', 'ghazar', 'ghazarian', '1124 Avenue Shorecrest', 'Laval', 'QC', 'H7W 1R6', '123', '$2y$10$80OOYUo3D61GegtuZ5zqNu/DH6WM7AavUhDumZcSLjK3j4INCCmZ6', '2021-05-02 22:20:55', '2021-05-02 22:20:55'),
	('3dea5e39-aace-11eb-8e55-18473def48f8', 'Tomyy', 'Black', '1124', 'laval', 'Qc', 'h7w1r6', 'TomyU', '$2y$10$gvaWfmtlHRJHTg7a.keDgOi9JUMiXoOG5m5hsaBIP.WC2X1cjOP4q', '2021-05-01 18:40:34', '2021-05-04 00:54:46'),
	('4c0b9d25-a941-11eb-a213-18473def48f8', 'GHAZAR', 'thethirdghazarian', 'gfh', 'montrealLL', 'ottawa', 'h7w', 'ghazz4', '$2y$10$.BB2Sp5ovgJc6w4x6tpQwOz/qqUoXbpDzb4003R9BIESMfwqnLxOS', '2021-04-29 19:19:07', '2021-05-02 21:39:38'),
	('571c719a-a95e-11eb-a213-18473def48f8', 'jean', 'ghazarian', '123', 'laval', 'qc', 'jfjf99', 'je', 'jjj', '2021-04-29 22:47:01', '2021-04-29 22:47:01'),
	('6d33152a-ac9e-11eb-8058-18473def48f8', 'ghazarrr', 'ghazarian', '1124 Avenue Shorecrest', 'Laval', 'QC', 'H7W 1R6', 'ghazar', '$2y$10$f4UrF78WWK5B4v31eX7pG.5nqeFqz6Gby315/r8VkGVhwC9bUTJwq', '2021-05-04 02:03:20', '2021-05-04 02:17:21'),
	('6d44e73f-abb7-11eb-90f1-18473def48f8', 'ghazar', 'ghazarian', '1124 Avenue Shorecrest', 'Laval', 'QC', 'H7W 1R6', '123ad', '$2y$10$aOXfN1xtPYhdN1TCj/vYMeo5UONSWNGvVqgb6N0tOLepUiC4aJhla', '2021-05-02 22:29:46', '2021-05-02 22:29:46'),
	('7d097d99-abab-11eb-90f1-18473def48f8', 'ghazar', 'ghazarian', '1124 Avenue Shorecrest', 'Laval', '', 'H7W 1R6', 'gaga', '$2y$10$BADQgB2igGm05IRitE3wsOMa8soaHVw0aOyYxX1Ydj34sJ.O3uqfS', '2021-05-02 21:04:18', '2021-05-02 21:04:18'),
	('876f4a8a-ac84-11eb-8058-18473def48f8', 'ghazReg', 'ghaz', '11', 'laval', 'rara', 'dar', 'jkj', '$2y$10$xpimdeXXJUKgZivWgNQ/fehTmlFVcjMjG0Q6IT8LpVCDQ193WLu7K', '2021-05-03 22:57:57', '2021-05-03 23:48:24'),
	('9538e06f-aca7-11eb-8058-18473def48f8', 'ghazar', 'ghazarian', '1124 Avenue Shorecrest', 'Laval', 'QC', 'H7W 1R6', 'main', '$2y$10$WS3fyYeUYPT3upeFeNzjeuyffc4ecN8xNHoZdllV/Nl4GyQYiyvYC', '2021-05-04 03:08:52', '2021-05-04 03:10:17'),
	('9897b75e-ac9c-11eb-8058-18473def48f8', 'Damas', 'ghazar', '1124', 'laval', 'Qb', 'h7w 1r6', 'Damas1', '$2y$10$WLsUIFr/ulN1O6syLSLrhO5aDoJ6kO0PmxRJdCAYt4y0kG7kB0V1m', '2021-05-04 01:50:13', '2021-05-04 01:53:13'),
	('9f37e46e-abe2-11eb-90f1-18473def48f8', 'ghazar', 'ghazarian', '1124 Avenue Shorecrest', 'Laval', 'QC', 'H7W 1R6', 'ghaz000', '$2y$10$kdflSOXyk0Oo0YBQYSTKle0Bs1LRasFaJVCOkZY3SLZRZy3igqebS', '2021-05-03 03:38:58', '2021-05-03 03:38:58'),
	('a24735b4-ac96-11eb-8058-18473def48f8', 'Damas', 'ghazar', '1124', 'laval', 'Qb', 'h7w 1r6', 'Damas', '$2y$10$L01ioA0eO4hjCG7r25h.HO5X24aHrlTdEGppTGmPeMNCbQPC.4jv.', '2021-05-04 01:07:33', '2021-05-04 01:07:55'),
	('a40e1fa5-abb7-11eb-90f1-18473def48f8', 'ghazar', 'ghazarian', '1124 Avenue Shorecrest', 'Laval', 'QC', 'H7W 1R6', '2352', '$2y$10$RfOwg33JgOcbrNH3KM3theogpILm6uWO.WJg6TBTYjtYqx4PeVq8u', '2021-05-02 22:31:18', '2021-05-02 22:31:18'),
	('d473384a-abb5-11eb-90f1-18473def48f8', 'ghazar', 'ghazarian', '1124 Avenue Shorecrest', 'Laval', 'QC', 'H7W 1R6', 'test', '$2y$10$Ceo8Zl.S6HASjOidzSgbh.I.OyPXe5Y0UTSZDtFJsnu6mQ0EiF1UW', '2021-05-02 22:18:20', '2021-05-02 22:18:20');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;

-- Dumping structure for procedure database-2015953.customers_delete
DELIMITER //
CREATE PROCEDURE `customers_delete`(
	IN `p_customer_id` CHAR(36)
)
BEGIN
#Revision history:
#DEVELOPER                            DATE                   COMMENTS 
#ghazar ghazarian(2015953)          2021-04-26            Created the customer_delete stored procedure.
# 



# this presedure is to delete one record in the customers table

		DELETE FROM customers 
		
		WHERE customer_id = p_customer_id;



END//
DELIMITER ;

-- Dumping structure for procedure database-2015953.customers_insert
DELIMITER //
CREATE PROCEDURE `customers_insert`(
	IN `p_first_name` VARCHAR(20),
	IN `p_last_name` VARCHAR(20),
	IN `p_address` VARCHAR(25),
	IN `p_city` VARCHAR(25),
	IN `p_province` VARCHAR(25),
	IN `p_postal_code` VARCHAR(25),
	IN `p_user_name` VARCHAR(20),
	IN `p_password` VARCHAR(255)
)
BEGIN
#Revision history:
#DEVELOPER                            DATE                   COMMENTS 
#ghazar ghazarian(2015953)          2021-04-26            Created the customer_insert stored procedure.
# 





# this storeed presedure is to insert a new customer in the customers table

	INSERT INTO customers 
			  (first_name,last_name,address,city,province,postal_code,user_name,`password`) 
			
	VALUES  (p_first_name,p_last_name,p_address,p_city,p_province,p_postal_code,p_user_name,p_password);

END//
DELIMITER ;

-- Dumping structure for procedure database-2015953.customers_select_all
DELIMITER //
CREATE PROCEDURE `customers_select_all`()
BEGIN
#Revision history:
#DEVELOPER                            DATE                   COMMENTS 
#ghazar ghazarian(2015953)          2021-04-26            Created the customer_select_all stored procedure.
# 





#this stored presedure is to select all the customers from the customers table

	SELECT 
				customer_id,
				first_name,
				last_name,
				address,city,
				province,
				postal_code,
				user_name,
				`password`,
				customer_creation_date,
				customer_modification_date
	FROM customers
	ORDER BY first_name;


END//
DELIMITER ;

-- Dumping structure for procedure database-2015953.customers_select_one
DELIMITER //
CREATE PROCEDURE `customers_select_one`(
	IN `p_customer_id` CHAR(36)
)
BEGIN
#Revision history:
#DEVELOPER                            DATE                   COMMENTS 
#ghazar ghazarian(2015953)          2021-04-26            Created the customer_select_one stored procedure.
# 




#this stored presedure is to select one customer from the customers table

	SELECT 
		customer_id,
		first_name,
		last_name,
		address,
		city,
		province,
		postal_code,
		user_name,
		`password`,
		customer_creation_date,
		customer_modification_date
		
	FROM customers
	
	WHERE customer_id=p_customer_id;

END//
DELIMITER ;

-- Dumping structure for procedure database-2015953.customers_update
DELIMITER //
CREATE PROCEDURE `customers_update`(
	IN `p_first_name` VARCHAR(20),
	IN `p_last_name` VARCHAR(20),
	IN `p_address` VARCHAR(25),
	IN `p_city` VARCHAR(25),
	IN `p_province` VARCHAR(25),
	IN `p_postal_code` VARCHAR(7),
	IN `p_user_name` VARCHAR(20),
	IN `p_password` VARCHAR(255),
	IN `p_customer_id` CHAR(36)
)
BEGIN
#Revision history:
#DEVELOPER                            DATE                   COMMENTS 
#ghazar ghazarian(2015953)          2021-04-26            Created the customer_update stored procedure.
# 




# this stored presedure is to update one recored in the customers table
	UPDATE customers
	
	SET   first_name=p_first_name,
			last_name =p_last_name,
			address =p_address,
			city = p_city,
			province = p_province,
			postal_code = p_postal_code,
			user_name = p_user_name,
			`password`= p_password,
			customer_modification_date=NOW()
			
			
	WHERE customer_id = p_customer_id;




END//
DELIMITER ;

-- Dumping structure for procedure database-2015953.customer_get_password
DELIMITER //
CREATE PROCEDURE `customer_get_password`(
	IN `p_user_name` VARCHAR(12)
)
BEGIN
#Revision history:
#DEVELOPER                            DATE                   COMMENTS 
#ghazar ghazarian(2015953)          2021-04-27            Created the customer_get_password stored procedure.



# this stored presedure is to get the password for a given username from the customers table

		SELECT `password`,customer_id
		
		FROM customers
		
			WHERE user_name=p_user_name;



END//
DELIMITER ;

-- Dumping structure for table database-2015953.products
CREATE TABLE IF NOT EXISTS `products` (
  `product_id` char(36) NOT NULL DEFAULT uuid(),
  `product_code` varchar(12) NOT NULL,
  `description` varchar(100) NOT NULL,
  `price` decimal(7,2) NOT NULL,
  `cost_price` decimal(7,2) DEFAULT NULL,
  `product_creation_date` datetime NOT NULL DEFAULT current_timestamp(),
  `product_modification_date` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`product_id`),
  UNIQUE KEY `product_code` (`product_code`),
  KEY `price` (`price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='this table is to store the products info sold on the website';

-- Dumping data for table database-2015953.products: ~4 rows (approximately)
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` (`product_id`, `product_code`, `description`, `price`, `cost_price`, `product_creation_date`, `product_modification_date`) VALUES
	('3e86ac6a-a940-11eb-a213-18473def48f8', 'p123', 'a white car', 134.50, NULL, '2021-04-29 19:11:35', '2021-04-29 19:11:35'),
	('6b2a3ae6-ab21-11eb-8e55-18473def48f8', 'P333', 'this is from php', 500.00, 300.00, '2021-05-02 04:35:58', '2021-05-02 04:35:58'),
	('a13c6b1c-a95e-11eb-a213-18473def48f8', 'p666', 'modified', 3555.00, 66.00, '2021-04-29 22:48:57', '2021-05-02 04:49:35'),
	('e3532e97-abed-11eb-90f1-18473def48f8', '', '', 0.00, 0.00, '2021-05-03 04:59:37', '2021-05-03 04:59:37');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;

-- Dumping structure for procedure database-2015953.products_delete
DELIMITER //
CREATE PROCEDURE `products_delete`(
	IN `p_product_id` CHAR(36)
)
BEGIN
#Revision history:
#DEVELOPER                            DATE                   COMMENTS 
#ghazar ghazarian(2015953)          2021-04-27            Created the products_delete stored procedure.
 


# this stored presedure is to delete one record in the products table

DELETE FROM products 
WHERE product_id = p_product_id;



END//
DELIMITER ;

-- Dumping structure for procedure database-2015953.products_insert
DELIMITER //
CREATE PROCEDURE `products_insert`(
	IN `p_product_code` VARCHAR(12),
	IN `p_description` VARCHAR(100),
	IN `p_price` DECIMAL(7,2),
	IN `p_cost_price` DECIMAL(7,2)
)
BEGIN
#Revision history:
#DEVELOPER                            DATE                   COMMENTS 
#ghazar ghazarian(2015953)          2021-04-27            Created the podruct_insert stored procedure.
# 

# this stored presedure is to insert a new record in the products table
INSERT INTO products 
			  (product_code,description,price,cost_price) 
			
	VALUES  (p_product_code,p_description,p_price,p_cost_price);




END//
DELIMITER ;

-- Dumping structure for procedure database-2015953.products_select_all
DELIMITER //
CREATE PROCEDURE `products_select_all`()
BEGIN
#Revision history:
#DEVELOPER                            DATE                   COMMENTS 
#ghazar ghazarian(2015953)          2021-04-26            Created the podruct_select_all stored procedure.
# 


# this stored presedure is to select all the products from the products table
SELECT 

	product_id,
	product_code,
	description,
	price,
	cost_price,
	product_creation_date,
	product_modification_date
	
FROM products
ORDER BY price;




END//
DELIMITER ;

-- Dumping structure for procedure database-2015953.products_select_one
DELIMITER //
CREATE PROCEDURE `products_select_one`(
	IN `p_product_id` CHAR(36)
)
BEGIN
#Revision history:
#DEVELOPER                            DATE                   COMMENTS 
#ghazar ghazarian(2015953)          2021-04-26            Created the podruct_select_one stored procedure.
# 




#this stored prodesdure is to select one product from the products table 

   SELECT   product_id,
   			product_code,
			   description,
			   price,
				cost_price,
				product_creation_date,
				product_modification_date
				
	FROM products			
	WHERE product_id=p_product_id;





END//
DELIMITER ;

-- Dumping structure for procedure database-2015953.products_update
DELIMITER //
CREATE PROCEDURE `products_update`(
	IN `p_product_id` CHAR(36),
	IN `p_product_code` VARCHAR(12),
	IN `p_description` VARCHAR(100),
	IN `p_price` DECIMAL(7,2),
	IN `p_cost_price` DECIMAL(7,2)
)
BEGIN
#Revision history:
#DEVELOPER                            DATE                   COMMENTS 
#ghazar ghazarian(2015953)          2021-04-27            Created the podruct_update stored procedure.
# 



# this stored presedure is to update one record in the products table

UPDATE products
	
	SET   product_code=p_product_code,
			description=p_description,
			price =p_price,
			cost_price =p_cost_price,
			product_modification_date=NOW()
			
			
	WHERE product_id = p_product_id;


END//
DELIMITER ;

-- Dumping structure for table database-2015953.purchases
CREATE TABLE IF NOT EXISTS `purchases` (
  `purchase_id` char(36) NOT NULL DEFAULT uuid(),
  `product_code` varchar(12) DEFAULT NULL,
  `sold_price` decimal(7,2) NOT NULL,
  `quantity_sold` smallint(3) NOT NULL,
  `sub_total` decimal(7,2) NOT NULL,
  `tax_amount` decimal(7,2) NOT NULL,
  `grand_total` decimal(7,2) NOT NULL,
  `comment` varchar(200) DEFAULT NULL,
  `customer_id` char(36) NOT NULL,
  `product_id` char(36) NOT NULL,
  `purchase_creation_date` datetime NOT NULL DEFAULT current_timestamp(),
  `purchase_modification_date` datetime NOT NULL DEFAULT current_timestamp(),
  KEY `customer_id` (`customer_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `FK_purchases_customers` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`),
  CONSTRAINT `FK_purchases_products` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='this table is to store the purchases from customers';

-- Dumping data for table database-2015953.purchases: ~6 rows (approximately)
/*!40000 ALTER TABLE `purchases` DISABLE KEYS */;
INSERT INTO `purchases` (`purchase_id`, `product_code`, `sold_price`, `quantity_sold`, `sub_total`, `tax_amount`, `grand_total`, `comment`, `customer_id`, `product_id`, `purchase_creation_date`, `purchase_modification_date`) VALUES
	('460d3139-ab38-11eb-8e55-18473def48f8', 'P3334', 300.00, 5, 20.00, 15.00, 800.00, 'from data base', '4c0b9d25-a941-11eb-a213-18473def48f8', '6b2a3ae6-ab21-11eb-8e55-18473def48f8', '2021-05-02 07:19:32', '2021-05-02 07:19:32'),
	('b2185f91-ab80-11eb-90f1-18473def48f8', '300', 0.00, 5, 20.00, 15.00, 800.00, 'from', '4c0b9d25-a941-11eb-a213-18473def48f8', '6b2a3ae6-ab21-11eb-8e55-18473def48f8', '2021-05-02 15:57:59', '2021-05-02 15:57:59'),
	('ee62f438-ab80-11eb-90f1-18473def48f8', 'P333', 300.00, 5, 20.00, 15.00, 800.00, 'from', '4c0b9d25-a941-11eb-a213-18473def48f8', '6b2a3ae6-ab21-11eb-8e55-18473def48f8', '2021-05-02 15:59:40', '2021-05-02 15:59:40'),
	('65ec108b-abc1-11eb-90f1-18473def48f8', 'p123', 200.00, 23, 231.00, 342.00, 3242.00, 'this shouldnit', '05402803-abb7-11eb-90f1-18473def48f8', '3e86ac6a-a940-11eb-a213-18473def48f8', '2021-05-02 23:41:08', '2021-05-02 23:41:08'),
	('b86810ae-abe2-11eb-90f1-18473def48f8', 'p123', 134.50, 2, 269.00, 4088.80, 4357.80, 'why', '9f37e46e-abe2-11eb-90f1-18473def48f8', '3e86ac6a-a940-11eb-a213-18473def48f8', '2021-05-03 03:39:40', '2021-05-03 03:39:40'),
	('a9bd2d1f-abee-11eb-90f1-18473def48f8', 'p555', 23.00, 23, 3.00, 2.00, 3.00, '3dd', '4c0b9d25-a941-11eb-a213-18473def48f8', '3e86ac6a-a940-11eb-a213-18473def48f8', '2021-05-03 05:05:10', '2021-05-03 05:05:10');
/*!40000 ALTER TABLE `purchases` ENABLE KEYS */;

-- Dumping structure for procedure database-2015953.purchases_delete
DELIMITER //
CREATE PROCEDURE `purchases_delete`(
	IN `p_purchase_id` CHAR(36)
)
BEGIN
#Revision history:
#DEVELOPER                            DATE                   COMMENTS 
#ghazar ghazarian(2015953)          2021-04-27            Created the purchases_delete stored procedure.
# ghazar ghazarian(2015953)          2021-05-1            Created the purchases_delete stored procedure.

# this stored presedure is to delete one record from  purchases table

DELETE FROM  purchases

	WHERE purchase_id = p_purchase_id;


END//
DELIMITER ;

-- Dumping structure for procedure database-2015953.purchases_filter
DELIMITER //
CREATE PROCEDURE `purchases_filter`(
	IN `p_date` DATETIME,
	IN `p_purchase_customer_id` CHAR(36)
)
BEGIN
#Revision history:
#DEVELOPER                            DATE                   COMMENTS 
#ghazar ghazarian(2015953)          2021-04-27            Created the purchases_filter stored procedure.
#ghazar ghazarian(2015953)          2021-05-02            modify the purchases_filter stored procedure to accept another parameter customer_id

 IF p_date IS NULL THEN 
      SELECT   purchase_id,
      			purchase_product_code,
      			sold_price,
      			quantity_sold,
      			sub_total,
      			tax_amount,
      			grand_total,
      			`comment`,
      			purchase_customer_id,
      			purchase_product_id,
      			purchase_creation_date,
      			purchase_modification_date
      			
		
		 FROM purchases_show_all_data
		WHERE purchase_customer_id=p_purchase_customer_id;
ELSE
      SELECT  purchase_id,
      			purchase_product_code,
      			sold_price,
      			quantity_sold,
      			sub_total,
      			tax_amount,
      			grand_total,
      			`comment`,
      			purchase_customer_id,
      			purchase_product_id,
      			purchase_creation_date,
      			purchase_modification_date
      			
		
		
		FROM purchases_show_all_data
		WHERE purchase_creation_date>=p_date AND purchase_customer_id=p_purchase_customer_id ;
END IF;

END//
DELIMITER ;

-- Dumping structure for procedure database-2015953.purchases_insert
DELIMITER //
CREATE PROCEDURE `purchases_insert`(
	IN `p_product_code` VARCHAR(12),
	IN `p_sold_price` DECIMAL(7,2),
	IN `p_quantity_sold` SMALLINT,
	IN `p_sub_total` DECIMAL(7,2),
	IN `p_tax_amount` DECIMAL(7,2),
	IN `p_grand_total` DECIMAL(7,2),
	IN `p_comment` VARCHAR(200),
	IN `p_customer_id` CHAR(36),
	IN `p_product_id` CHAR(36)
)
BEGIN
#Revision history:
#DEVELOPER                            DATE                   COMMENTS 
#ghazar ghazarian(2015953)          2021-04-26            Created the purchases_insert stored procedure.
#ghazar ghazarian(2015953)          2021-05-02            added sub_total, tax_amount,grand_totalto purchases_insert stored procedure.


# this stored presedure is to insert a new record in the purchases table


	INSERT INTO purchases 
			  (product_code,sold_price,quantity_sold,sub_total,tax_amount,grand_total,`comment`,customer_id,product_id) 
			
	VALUES  (p_product_code,p_sold_price,p_quantity_sold,p_sub_total,p_tax_amount,p_grand_total,p_comment,p_customer_id,p_product_id);



END//
DELIMITER ;

-- Dumping structure for procedure database-2015953.purchases_select_all
DELIMITER //
CREATE PROCEDURE `purchases_select_all`()
BEGIN
# this stored presedure is to select all the purchases from the purchases table
	SELECT 
		purchase_id,
		product_code,
		sold_price,
		quantity_sold,
		sub_total,
		tax_amount,
		grand_total,
		`comment`,
		customer_id,
		product_id,
		purchase_creation_date,
		purchase_modification_date
	FROM purchases
	ORDER BY  purchase_creation_date;


END//
DELIMITER ;

-- Dumping structure for procedure database-2015953.purchases_select_one
DELIMITER //
CREATE PROCEDURE `purchases_select_one`(
	IN `p_purchase_id` CHAR(36)
)
BEGIN
#Revision history:
#DEVELOPER                            DATE                   COMMENTS 
#ghazar ghazarian(2015953)          2021-04-26            Created the purchase_select_one stored procedure.
#ghazar ghazarian(2015953)          2021-05-02            added sub_total, tax_amount,grand_totalto purchases_insert stored procedure.



# this stored presedure is to select one record in the purchases table
   SELECT   purchase_id,
   			product_code,
   			sold_price,
			   quantity_sold,
			   sub_total,
			   tax_amount,
			   grand_total,
				`comment`,
				customer_id,
				product_id,
				purchase_creation_date,
				purchase_modification_date
	
	FROM purchases			
	WHERE purchase_id=p_purchase_id;

END//
DELIMITER ;

-- Dumping structure for view database-2015953.purchases_show_all_data
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `purchases_show_all_data` (
	`purchase_id` CHAR(36) NOT NULL COLLATE 'utf8mb4_general_ci',
	`purchase_product_code` VARCHAR(12) NULL COLLATE 'utf8mb4_general_ci',
	`sold_price` DECIMAL(7,2) NOT NULL,
	`quantity_sold` SMALLINT(3) NOT NULL,
	`sub_total` DECIMAL(7,2) NOT NULL,
	`tax_amount` DECIMAL(7,2) NOT NULL,
	`grand_total` DECIMAL(7,2) NOT NULL,
	`comment` VARCHAR(200) NULL COLLATE 'utf8mb4_general_ci',
	`purchase_customer_id` CHAR(36) NOT NULL COLLATE 'utf8mb4_general_ci',
	`purchase_product_id` CHAR(36) NOT NULL COLLATE 'utf8mb4_general_ci',
	`purchase_creation_date` DATETIME NOT NULL,
	`purchase_modification_date` DATETIME NOT NULL,
	`product_product_id` CHAR(36) NOT NULL COLLATE 'utf8mb4_general_ci',
	`product_product_code` VARCHAR(12) NOT NULL COLLATE 'utf8mb4_general_ci',
	`description` VARCHAR(100) NOT NULL COLLATE 'utf8mb4_general_ci',
	`price` DECIMAL(7,2) NOT NULL,
	`product_creation_date` DATETIME NOT NULL,
	`product_modification_date` DATETIME NOT NULL,
	`cost_price` DECIMAL(7,2) NULL,
	`customer_customer_id` CHAR(36) NOT NULL COLLATE 'utf8mb4_general_ci',
	`first_name` VARCHAR(20) NOT NULL COLLATE 'utf8mb4_general_ci',
	`last_name` VARCHAR(20) NOT NULL COLLATE 'utf8mb4_general_ci',
	`address` VARCHAR(25) NOT NULL COLLATE 'utf8mb4_general_ci',
	`city` VARCHAR(25) NOT NULL COLLATE 'utf8mb4_general_ci',
	`province` VARCHAR(25) NOT NULL COLLATE 'utf8mb4_general_ci',
	`postal_code` VARCHAR(7) NOT NULL COLLATE 'utf8mb4_general_ci',
	`user_name` VARCHAR(20) NOT NULL COLLATE 'utf8mb4_general_ci',
	`customer_creation_date` DATETIME NOT NULL,
	`customer_modification_date` DATETIME NOT NULL
) ENGINE=MyISAM;

-- Dumping structure for procedure database-2015953.purchases_update
DELIMITER //
CREATE PROCEDURE `purchases_update`(
	IN `p_purchase_id` CHAR(36),
	IN `p_quantity_sold` SMALLINT,
	IN `sub_total` DECIMAL(7,2),
	IN `tax_amount` DECIMAL(7,2),
	IN `grand_total` DECIMAL(7,2),
	IN `p_sold_price` DECIMAL(7,2),
	IN `p_customer_id` CHAR(36),
	IN `p_product_id` CHAR(36),
	IN `p_comment` VARCHAR(200)
)
BEGIN
#Revision history:
#DEVELOPER                            DATE                   COMMENTS 
#ghazar ghazarian(2015953)          2021-04-27            Created the purchases_update stored procedure.
#ghazar ghazarian(2015953)          2021-05-02            added sub_total, tax_amount,grand_totalto purchases_update stored procedure.

# this stored presedure is to update one record in the purchase table

UPDATE purchases
	
	SET   
			sold_price =p_sold_price,
			quantity_sold=p_quantity_sold,
			sub_total=p_sub_total,
			tax_amount=p_tax_amount,
			grand_total=p_grand_total,
			`comment` = p_comment,
			customer_id = p_customer_id,
			product_id = p_product_id,
			purchase_modification_date=NOW()
			
			
	WHERE purchase_id = p_purchase_id;

END//
DELIMITER ;

-- Dumping structure for view database-2015953.purchases_show_all_data
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `purchases_show_all_data`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `purchases_show_all_data` AS select `pch`.`purchase_id` AS `purchase_id`,`pch`.`product_code` AS `purchase_product_code`,`pch`.`sold_price` AS `sold_price`,`pch`.`quantity_sold` AS `quantity_sold`,`pch`.`sub_total` AS `sub_total`,`pch`.`tax_amount` AS `tax_amount`,`pch`.`grand_total` AS `grand_total`,`pch`.`comment` AS `comment`,`pch`.`customer_id` AS `purchase_customer_id`,`pch`.`product_id` AS `purchase_product_id`,`pch`.`purchase_creation_date` AS `purchase_creation_date`,`pch`.`purchase_modification_date` AS `purchase_modification_date`,`pro`.`product_id` AS `product_product_id`,`pro`.`product_code` AS `product_product_code`,`pro`.`description` AS `description`,`pro`.`price` AS `price`,`pro`.`product_creation_date` AS `product_creation_date`,`pro`.`product_modification_date` AS `product_modification_date`,`pro`.`cost_price` AS `cost_price`,`cus`.`customer_id` AS `customer_customer_id`,`cus`.`first_name` AS `first_name`,`cus`.`last_name` AS `last_name`,`cus`.`address` AS `address`,`cus`.`city` AS `city`,`cus`.`province` AS `province`,`cus`.`postal_code` AS `postal_code`,`cus`.`user_name` AS `user_name`,`cus`.`customer_creation_date` AS `customer_creation_date`,`cus`.`customer_modification_date` AS `customer_modification_date` from ((`purchases` `pch` join `customers` `cus` on(`pch`.`customer_id` = `cus`.`customer_id`)) join `products` `pro` on(`pch`.`product_id` = `pro`.`product_id`)) order by `pch`.`purchase_creation_date` desc;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
