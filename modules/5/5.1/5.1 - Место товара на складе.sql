DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
    id          INT            NOT NULL,
    category_id INT            DEFAULT NULL,
    name        VARCHAR(100)   NOT NULL,
    count       TINYINT        NOT NULL DEFAULT 0,
    price       DECIMAL(10, 2) NOT NULL DEFAULT 0.00
);

ALTER TABLE `products`
    ADD COLUMN `stock_place` VARCHAR(7) NOT NULL DEFAULT '';
