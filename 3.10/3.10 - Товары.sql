DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
    id          INT            NOT NULL,
    category_id INT            DEFAULT NULL,
    name        VARCHAR(100)   NOT NULL,
    count       TINYINT        NOT NULL DEFAULT 0,
    price       DECIMAL(10, 2) NOT NULL DEFAULT 0.00,

    PRIMARY KEY (`id`)
);

INSERT INTO `products` (id, category_id, name, count, price) VALUES
(1, 1,    'Кружка',      5,  45.90),
(2, 17,   'Фломастеры',  0,  78.00),
(3, NULL, 'Сникерс',     12, 50.80);

-- +----+-------------+-------------+-------+-------+
-- | id | category_id | name        | count | price |
-- +----+-------------+-------------+-------+-------+
-- | 1  | 1           | Кружка      | 5     | 45.90 |
-- | 2  | 17          | Фломастеры  | 0     | 78.00 |
-- | 3  | NULL        | Сникерс     | 12    | 50.80 |
-- +----+-------------+-------------+-------+-------+
