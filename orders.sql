CREATE TABLE `orders` (
  `oid` INT(10) NOT NULL AUTO_INCREMENT,
  `car_id` INT(10) NOT NULL,
  `user_id` INT(10) NOT NULL,
  `admin_id` INT(10) DEFAULT NULL,
  `make_date` TIMESTAMP NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deal_date` TIMESTAMP NULL DEFAULT '0000-00-00 00:00:00',
  `from_date` DATE NOT NULL,
  `end_date` DATE NOT NULL,
  `price` DOUBLE NOT NULL,
  `status` VARCHAR(20) NOT NULL DEFAULT '未处理',
  PRIMARY KEY (`oid`),
  KEY `car_fk` (`car_id`),
  KEY `admin_fk` (`admin_id`),
  KEY `user_fk` (`user_id`),
  CONSTRAINT `admin_fk` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`aid`),
  CONSTRAINT `car_fk` FOREIGN KEY (`car_id`) REFERENCES `car` (`cid`),
  CONSTRAINT `user_fk` FOREIGN KEY (`user_id`) REFERENCES `user` (`uid`)
) ENGINE=INNODB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8