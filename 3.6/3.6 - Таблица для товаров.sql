DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
    id          INT           NOT NULL,
    name        VARCHAR(120)  NOT NULL,
    category_id INT           DEFAULT NULL,
    price       DECIMAL(10,2) NOT NULL,

    PRIMARY KEY (`id`)
);

INSERT INTO `products` (id, name, category_id, price) VALUES
(1, 'Подгузники (12 шт)', 3, 700.00),
(2, 'Подгузники (24 шт)', 3, 1250.00),
(3, 'Спиннер', NULL, 250.40),
(4, 'Пюре слива', 4, 47.50);

-- +----+--------------------+-------------+---------+
-- | id | name               | category_id | price   |
-- +----+--------------------+-------------+---------+
-- | 1  | Подгузники (12 шт) | 3           | 700.00  |
-- | 2  | Подгузники (24 шт) | 3           | 1250.00 |
-- | 3  | Спиннер            | NULL        | 250.40  |
-- | 4  | Пюре слива         | 4           | 47.50   |
-- +----+--------------------+-------------+---------+
