-- GROUP BY col1, col2  — группирует строки по комбинации значений нескольких колонок
-- YEAR(dt)             — извлекает год из datetime dt
-- MONTH(dt)            — извлекает месяц из datetime dt
-- SUM(x)               — суммирует значения x внутри группы
-- HAVING условие       — фильтрует группы после агрегации (в отличие от WHERE, который фильтрует строки до неё)

DROP TABLE IF EXISTS `deals`;

CREATE TABLE `deals` (
    id        INT      NOT NULL AUTO_INCREMENT,
    client_id INT      DEFAULT NULL,
    date      DATETIME DEFAULT NULL,
    amount    INT      DEFAULT NULL,

    PRIMARY KEY (`id`)
);

INSERT INTO `deals` (id, client_id, date, amount)
VALUES
    (1, 174, '2015-01-04', 24500),
    (2, 19, '2015-01-04', 62000),
    (3, 792, '2015-01-12', 135000),
    (4, 8817, '2015-01-14', 60000),
    (5, 138, '2015-01-23', 75000),
    (6, 9841, '2015-01-31', 35000),
    (7, 49184, '2015-02-01', 6800),
    (8, 145, '2015-02-16', 12000),
    (9, 95, '2015-02-28', 75000),
    (10, 481, '2015-03-12', 210000),
    (11, 491, '2015-03-12', 35300),
    (12, 7619, '2015-04-01', 78000),
    (13, 45, '2015-04-14', 112000),
    (14, 45, '2015-04-14', 49000),
    (15, 45, '2015-04-14', 84000);

SELECT YEAR(`date`) AS `year`, MONTH(`date`) AS `month`, SUM(`amount`) AS `amount`
FROM `deals`
GROUP BY YEAR(`date`), MONTH(`date`)
HAVING SUM(`amount`) < 300000;

-- +------+-------+--------+
-- | year | month | amount |
-- +------+-------+--------+
-- | 2015 | 2     | 93800  |
-- | 2015 | 3     | 245300 |
-- +------+-------+--------+
