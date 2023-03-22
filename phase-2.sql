CREATE TABLE `Brand` (
	`id` int PRIMARY KEY AUTO_INCREMENT,
	`name` varchar(20)
);

CREATE TABLE `Model` (
	`name` varchar(20) PRIMARY KEY,
    `brand` varchar(20) NOT NULL,
     FOREIGN KEY (`brand`) REFERENCES `Brand` (`name`)
);

CREATE TABLE `Color` (
	`name` varchar(20) PRIMARY KEY,
    `rgb` char(6)
);
    
CREATE TABLE `Vehical` (
  `VIN` char(8) PRIMARY KEY,
  `brand` varchar(20) NOT NULL,
  `model` varchar(20) NOT NULL,
  `color` varchar(20),
  `gear_type` varchar(10) NOT NULL,
  FOREIGN KEY (`color`) REFERENCES `Color` (`name`),
  FOREIGN KEY (`brand`) REFERENCES `Brand` (`name`),
  FOREIGN KEY (`model`) REFERENCES `Model` (`name`),
  CHECK (`gear_type` in ('automat', 'manual'))
  
);

CREATE TABLE `Supplier` (
  `id` int PRIMARY KEY,
  `name` varchar(20) NOT NULL,
  `start_date` date,
  `end_date` date,
  `manager_name` varchar(20) NOT NULL,
  `address` varchar(100) NOT NULL
);

CREATE TABLE `Piece` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `model` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `price` numeric(5, 2),
  `stock` int DEFAULT 1,
  `supplier_id` int,
  FOREIGN KEY (`supplier_id`) REFERENCES `Supplier` (`id`),
  FOREIGN KEY (`model`) REFERENCES `Model` (`name`)
);

CREATE TABLE `Customer` (
  `id` char(12) PRIMARY KEY,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `address_province` varchar(20),
  `address_city` varchar(20),
  `address_street` varchar(20),
  `telephone` char(12) UNIQUE
);

CREATE TABLE `Vehical_Order` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `customer` char(12) NOT NULL,
  `count` int,
  `vehical_id` char(8),
  FOREIGN KEY (`customer`) REFERENCES `Customer` (`id`),
  FOREIGN KEY (`vehical_id`) REFERENCES `Vehical` (`VIN`)
);

CREATE TABLE `Piece_Order` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `customer` char(12) NOT NULL,
  `count` int,
  `piece_id` int,
  FOREIGN KEY (`customer`) REFERENCES `Customer` (`id`),
  FOREIGN KEY (`piece_id`) REFERENCES `Piece` (`id`)
);



