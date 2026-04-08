-- GROUP BY col1, col2  — группирует строки по комбинации значений нескольких колонок
-- YEAR(dt)             — извлекает год из datetime dt
-- MONTH(dt)            — извлекает месяц из datetime dt
-- SUM(x)               — суммирует значения x внутри группы
-- COUNT(*)             — считает количество строк в каждой группе

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
    id      INT         NOT NULL AUTO_INCREMENT,
    user_id INT         DEFAULT NULL,
    date    DATETIME    DEFAULT NULL,
    amount  INT         DEFAULT NULL,
    status  VARCHAR(50) DEFAULT NULL,

    PRIMARY KEY (`id`)
);

INSERT INTO `orders` (id, user_id, date, amount, status)
VALUES
    (1, 138, '2014-01-23 17:04:04', 4500, 'success'),
    (2, 491, '2014-03-12 12:12:43', 700, 'success'),
    (3, 9841, '2014-12-31 08:53:25', 1240, 'success'),
    (4, 174, '2015-01-04 18:23:09', 500, 'success'),
    (5, 19, '2015-01-04 18:25:27', 8700, 'cancelled'),
    (6, 792, '2015-01-12 09:23:14', 1350, 'success'),
    (7, 8817, '2015-01-14 17:16:39', 600, 'success'),
    (8, 49184, '2015-02-01 13:32:17', 680, 'success'),
    (9, 145, '2014-02-16 14:44:05', 1400, 'success'),
    (10, 95, '2015-02-28 02:00:47', 4300, 'cancelled'),
    (11, 481, '2015-03-12 08:30:23', 8000, 'success'),
    (12, 7619, '2015-04-01 13:04:47', 980, 'success'),
    (13, 45, '2015-04-14 23:21:25', 1600, 'success');

SELECT YEAR(`date`) AS `year`, MONTH(`date`) AS `month`,
       SUM(`amount`) AS `income`, COUNT(*) AS `orders`
FROM `orders`
WHERE `status` = 'success'
GROUP BY YEAR(`date`), MONTH(`date`)
ORDER BY `year`, `month`;

-- +------+-------+--------+--------+
-- | year | month | income | orders |
-- +------+-------+--------+--------+
-- | 2014 | 1     | 4500   | 1      |
-- | 2014 | 2     | 1400   | 1      |
-- | 2014 | 3     | 700    | 1      |
-- | 2014 | 12    | 1240   | 1      |
-- | 2015 | 1     | 2450   | 3      |
-- | 2015 | 2     | 680    | 1      |
-- | 2015 | 3     | 8000   | 1      |
-- | 2015 | 4     | 2580   | 2      |
-- +------+-------+--------+--------+
