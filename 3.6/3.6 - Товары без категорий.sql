DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
    id          INT             NOT NULL,
    category_id INT             DEFAULT NULL,
    name        VARCHAR(120)    NOT NULL,
    count       TINYINT         NOT NULL,
    price       DECIMAL(10, 2)  NOT NULL,

    PRIMARY KEY (`id`)
);

INSERT INTO `products` (id, category_id, name, count, price) VALUES
(1, 7,    'Стиральная машина', 5, 10000),
(2, 12,   'Холодильник',       0, 10000),
(3, 12,   'Микроволновка',     3, 4000),
(4, 8,    'Пылесос',           2, 4500),
(5, NULL, 'Вентилятор',        0, 700),
(6, 9,    'Телевизор',         7, 31740),
(7, 12,   'Тостер',            2, 2500),
(8, NULL, 'Принтер',           4, 3000),
(9, NULL, 'Активные колонки',  1, 2900);

SELECT name, count, price FROM `products`
WHERE category_id IS NULL
ORDER BY price;

-- +------------------+-------+-------+
-- | name             | count | price |
-- +------------------+-------+-------+
-- | Вентилятор       | 0     | 700   |
-- | Активные колонки | 1     | 2900  |
-- | Принтер          | 4     | 3000  |
-- +------------------+-------+-------+
