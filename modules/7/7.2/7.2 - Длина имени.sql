-- CHAR_LENGTH(s) — возвращает количество символов в строке s

DROP TABLE IF EXISTS `products`;

CREATE TABLE `products` (
    id    INT          NOT NULL AUTO_INCREMENT,
    name  VARCHAR(100) DEFAULT NULL,
    count INT          DEFAULT NULL,
    price INT          DEFAULT NULL,

    PRIMARY KEY (`id`)
);

INSERT INTO `products` (id, name, count, price)
VALUES
    (1, 'Системный блок', 28, 48000),
    (2, 'Клавиатура', 100, 1200),
    (3, 'Мышь', 300, 300),
    (4, 'Монитор', 47, 14000),
    (5, 'Принтер', 5, 7400),
    (6, 'МФУ', 2, 19400),
    (7, 'Стол', 12, 3100),
    (8, 'Кресло', 24, 5700),
    (9, 'Шредер', 3, 11200),
    (10, 'Лампа', 70, 400);

SELECT `name`, `price`
FROM `products`
WHERE CHAR_LENGTH(`name`) BETWEEN 5 AND 10
ORDER BY `name`;

-- +------------+-------+
-- | name       | price |
-- +------------+-------+
-- | Клавиатура | 1200  |
-- | Кресло     | 5700  |
-- | Лампа      | 400   |
-- | Монитор    | 14000 |
-- | Принтер    | 7400  |
-- | Шредер     | 11200 |
-- +------------+-------+
