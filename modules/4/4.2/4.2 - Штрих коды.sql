DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
    id          INT          NOT NULL AUTO_INCREMENT,
    category_id INT          DEFAULT NULL,
    name        VARCHAR(100) NOT NULL,
    slug        VARCHAR(50)  NOT NULL,
    ean13       CHAR(13)     NOT NULL,

    PRIMARY KEY (`id`),
    UNIQUE KEY `ean13` (`ean13`),
    UNIQUE KEY `category_slug` (`category_id`, `slug`)
);
