DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
    id          INT            NOT NULL AUTO_INCREMENT,
    category_id INT            DEFAULT NULL,
    name        VARCHAR(100)   NOT NULL,
    count       TINYINT        NOT NULL DEFAULT 0,
    price       DECIMAL(10, 2) NOT NULL DEFAULT 0.00,

    PRIMARY KEY (`id`),
    UNIQUE INDEX `category_id` (`category_id`),
    INDEX `count` (`count`),
    INDEX `main_search` (`category_id`, `price`)
);

ALTER TABLE `products` DROP INDEX `category_id`;
ALTER TABLE `products` DROP INDEX `count`;
