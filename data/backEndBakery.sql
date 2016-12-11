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
('Flour', 10000, 30000, 0.15),
('Baking powder', 18000, 10000, 0.4),
('Baking soda', 150000, 10000, 0.050),
('Whipping cream', 7000, 15000, 0.1),
('Lime juice', 6000, 18000, 0.075),
('Ground graham crackers', 4000, 12000, 0.1),
('Sweetened condensed milk', 8000, 10000, 0.1),
('Lime zest', 2000, 4000, 0.078),
('Buttermilk', 10000, 20000, 0.177),
('Pepitas', 2000, 9000, 0.054),
('Onion', 7000, 20000, 0.07),
('Red bell pepper', 5000, 9000, 0.088),
('Red wine vinegar', 2000, 6000, 0.077),
('Honey', 1000, 4000, 0.146),
('Olive oil', 2000, 8000, 0.328),
('Ground cumin', 600, 270, 0.088),
('Smoked paprika', 700, 330, 0.049),
('Salt', 220, 600, 0.07),
('Sugar', 10000, 10000, 0.1),
('Butter', 1000, 2000, 0.07),
('Egg', 2000, 2000, 0.380),
('Ground cinnamon', 120, 700, 0.086),
('Whole milk', 4000, 4000, 0.0729),
('Apple', 3000, 30000, 0.2),
('Almond flour', 900, 730, 0.068),
('Coconut flour', 170, 150, 0.043),
('Vanilla extract', 130, 580, 0.82),
('Tapioca starch', 120, 150, 0.022),
('Sweetened dried cranberries', 240, 880, 0.1),
('Orange zest', 500, 700, 0.033),
('Brandy', 100, 200, 0.073),
('Nutmeg', 150, 500, 0.055),
('Allspice', 130, 500, 0.096),
('Eggnog', 1000, 1000, 0.26),
('Orange juice', 170, 660, 0.055),
('Dark rum', 300, 300, 0.027),
('Water', 1000, 1200, 0.188),
('Rolled oats', 330, 600, 0.068),
('Raw walnuts', 270, 160, 0.073),
('Chia seed', 500, 300, 0.043),
('Banana', 1000, 2000, 0.15),
('Sour cream', 200, 120, 0.077),
('Blackberry', 270, 300, 0.052),
('Graham cracker crumbs', 600, 700, 0.090),
('Cream cheese', 800, 1000, 0.22),
('Raspberry',500 ,400 , 0.122);