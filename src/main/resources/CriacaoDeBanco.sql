CREATE DATABASE `crudanielip` /*!40100 DEFAULT CHARACTER SET utf8 */;

DROP TABLE IF EXISTS `crudanielip`.`clientes`;
CREATE TABLE  `crudanielip`.`clientes` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `title` varchar(100) NOT NULL default '',
  `category` varchar(100) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;