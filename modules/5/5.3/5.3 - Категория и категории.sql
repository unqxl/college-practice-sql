SET foreign_key_checks = 0;
DROP TABLE IF EXISTS `category`;
DROP TABLE IF EXISTS `categories`;
SET foreign_key_checks = 1;

CREATE TABLE `category` (
    id INT NOT NULL AUTO_INCREMENT,

    PRIMARY KEY (`id`)
);

RENAME TABLE `category` TO `categories`;
