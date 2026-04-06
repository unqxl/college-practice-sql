DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
    id          INT            NOT NULL,
    category_id INT            DEFAULT NULL,
    name        VARCHAR(100)   NOT NULL,
    count       TINYINT        NOT NULL DEFAULT 0,
    price       SMALLINT       NOT NULL DEFAULT 0
);

ALTER TABLE `products` MODIFY COLUMN `price` INT NOT NULL DEFAULT 0;
