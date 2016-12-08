SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Create database: `backend`
--

CREATE DATABASE IF NOT EXISTS `backend` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `backend`;

DROP TABLE IF EXISTS `Supplies`;

--
-- Create table
--

CREATE TABLE `Supplies` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `qty_onhand` decimal(10,2) NOT NULL,
  `qty_inventory` decimal(10,2) NOT NULL,
  `price` decimal(20,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `Supplies` (`name`, `qty_onhand`, `qty_inventory`, `price`)
VALUES
('Flour', 10, 100, 760),
('Baking powder', 18.5, 37, 452.5),
('Baking soda', 15.5, 42, 259),
('Whipping cream', 7, 12, 288),
('Lime juice', 6, 18, 98),
('Ground graham crackers', 4, 12, 104),
('Sweetened condensed milk', 8, 28, 318),
('Lime zest', 2, 4, 78),
('Buttermilk', 10, 27, 177),
('Pepitas', 2, 9, 54),
('Onion', 7, 20, 210),
('Red bell pepper', 5, 9, 88),
('Red wine vinegar', 2, 6, 77),
('Honey', 1, 4, 146),
('Olive oil', 2, 8, 328),
('Ground cumin', 0.6, 2.7, 88),
('Smoked paprika', 0.7, 3.3, 49),
('Salt', 2.2, 6, 143),
('Sugar', 4.2, 17, 232),
('Butter', 1.8, 14, 222),
('Egg', 0, 64, 380),
('Ground cinnamon', 1.2, 7, 176),
('Whole milk', 4, 4, 729),
('Apple', 5, 3, 77),
('Almond flour', 0.9, 7.3, 68),
('Coconut flour', 1.7, 15, 143),
('Vanilla extract', 13, 58, 201),
('Tapioca starch', 12, 15, 222),
('Sweetened dried cranberries', 2.4, 8.8, 176),
('Orange zest', 0.5, 7, 33),
('Brandy', 1, 2, 73),
('Nutmeg', 1.5, 5, 55),
('Allspice', 1.3, 8, 96),
('Eggnog', 1, 0, 36),
('Orange juice', 1.7, 6.6, 55),
('Dark rum', 0, 0, 27),
('Water', 1, 5, 188),
('Rolled oats', 3.3, 9, 68),
('Raw walnuts', 2.7, 1.6, 73),
('Chia seed', 0.5, 3, 43),
('Banana', 0, 6, 29),
('Sour cream', 2, 12, 77),
('Blackberry', 2.7, 3, 52),
('Graham cracker crumbs', 1, 5, 90),
('Cream cheese', 4, 8, 220),
('Raspberry',1,4, 122);
