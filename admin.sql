CREATE TABLE `admin` (
  `aid` INT(10) NOT NULL,
  `name` VARCHAR(20) DEFAULT NULL,
  `password` VARCHAR(20) DEFAULT NULL,
  `tel` INT(20) DEFAULT NULL,
  `mail` VARCHAR(20) DEFAULT NULL,
  `address` VARCHAR(50) DEFAULT NULL,
  `birthday` VARCHAR(20) DEFAULT NULL,
  `id_card` VARCHAR(30) DEFAULT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8