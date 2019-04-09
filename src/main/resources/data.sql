DROP TABLE IF EXISTS `author`;
CREATE TABLE IF NOT EXISTS `author` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `firstName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

DELETE FROM `author`;
INSERT INTO `author` (`id`, `firstName`, `lastName`) VALUES
	(1, 'Dirk', 'Hardy'),
	(2, 'Eric', 'Schneider'),
	(3, 'Alexander', 'Salvanos');
DROP TABLE IF EXISTS `book`;
CREATE TABLE IF NOT EXISTS `book` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ISBN` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `publishingCompany` varchar(255) DEFAULT NULL,
  `year` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

DELETE FROM `book`;
INSERT INTO `book` (`id`, `ISBN`, `name`, `publishingCompany`, `year`) VALUES
	(1, '978-3-8085-8560-3', 'Java f??r IT-Berufe', 'Europa-Lehrmittel', '2015'),
	(2, '978-3-458-17651-0 ', 'Zur??ck nach Java ', 'Inselm-Verlag', '2015');
DROP TABLE IF EXISTS `book_author`;
CREATE TABLE IF NOT EXISTS `book_author` (
  `Book_id` bigint(20) NOT NULL,
  `author_id` bigint(20) NOT NULL,
  `author_ORDER` int(11) NOT NULL,
  PRIMARY KEY (`Book_id`,`author_ORDER`),
  KEY `FKjawjy25dqw34ltne5a7gp9bo7` (`author_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DELETE FROM `book_author`;
INSERT INTO `book_author` (`Book_id`, `author_id`, `author_ORDER`) VALUES
	(1, 1, 1),
	(2, 2, 1);
