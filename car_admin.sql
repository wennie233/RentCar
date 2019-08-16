CREATE TABLE `car_admin` (
  `id` INT(10) NOT NULL AUTO_INCREMENT,
  `car_id` INT(10) DEFAULT NULL,
  `admin_id` INT(10) DEFAULT NULL,
  `from_date` VARCHAR(20) DEFAULT NULL,
  `thru_date` VARCHAR(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cars_fk` (`car_id`),
  KEY `admins_fk` (`admin_id`),
  CONSTRAINT `admins_fk` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`aid`),
  CONSTRAINT `cars_fk` FOREIGN KEY (`car_id`) REFERENCES `car` (`cid`)
) ENGINE=INNODB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8

