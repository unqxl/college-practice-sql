DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
    id              INT                     NOT NULL,
    category_id     INT                     DEFAULT NULL,
    name            VARCHAR(255)            NOT NULL,
    count           INT                     NOT NULL,
    price           INT                     NOT NULL,
    country         SET('RU', 'KZ', 'BY')   NOT NULL,

    PRIMARY KEY (`id`)
);

INSERT INTO `products` (`id`, `category_id`, `name`, `count`, `price`, `country`)
VALUES
(1, 7, 'Стиральная машина', 5, 10000, 'RU'),
(2, 12, 'Холодильник', 0, 11000, 'BY'),
(4, 8, 'Пылесос', 2, 4500, 'KZ'),
(5, NULL, 'Вентилятор', 0, 700, 'BY'),
(6, 9, 'Телевизор', 7, 31740, 'RU'),
(7, 12, 'Тостер', 0, 2500, 'RU');

SELECT `name`, `price`, `country` FROM `products`
WHERE `country` IN ('RU', 'KZ')
    AND `count` > 0
ORDER BY `country`, `price` DESC;

-- +----+-------------+-------------------+-------+-------+---------+
-- | id | category_id | name              | count | price | country |
-- +----+-------------+-------------------+-------+-------+---------+
-- | 1  | 7           | Стиральная машина | 5     | 10000 | RU      |
-- | 2  | 12          | Холодильник       | 0     | 10000 | BY      |
-- | 3  | 8           | Пылесос           | 2     | 4500  | KZ      |
-- | 4  | NULL        | Вентилятор        | 0     | 700   | BY      |
-- | 5  | 9           | Телевизор         | 7     | 31740 | RU      |
-- | 6  | 12          | Тостер            | 0     | 2500  | RU      |
-- +----+-------------+-------------------+-------+-------+---------+
