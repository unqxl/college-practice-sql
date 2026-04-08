-- GROUP BY col    — группирует строки по уникальным значениям col
-- COUNT(*)        — считает количество строк в каждой группе
-- SUM(x)          — суммирует значения x внутри группы
-- MAX(x)          — возвращает максимальное значение x внутри группы
-- HAVING условие  — фильтрует группы после агрегации (в отличие от WHERE, который фильтрует строки до неё)

DROP TABLE IF EXISTS `deals`;

CREATE TABLE `deals` (
    id      INT         NOT NULL AUTO_INCREMENT,
    user_id INT         DEFAULT NULL,
    date    DATE        DEFAULT NULL,
    amount  INT         DEFAULT NULL,
    status  VARCHAR(50) DEFAULT NULL,

    PRIMARY KEY (`id`)
);

INSERT INTO `deals` (id, user_id, date, amount, status)
VALUES
    (1, 1, '2015-01-04', 24500, 'closed'),
    (2, 2, '2015-01-04', 62000, 'closed'),
    (3, 3, '2015-01-12', 1350, 'closed'),
    (4, 1, '2015-01-14', 600, 'new'),
    (5, 2, '2015-01-23', 75000, 'closed'),
    (6, 3, '2015-01-31', 35000, 'closed'),
    (7, 4, '2015-02-01', 6800, 'closed'),
    (8, 1, '2015-02-16', 12000, 'closed'),
    (9, 2, '2015-02-28', 75000, 'new'),
    (10, 3, '2015-03-12', 210000, 'closed'),
    (11, 4, '2015-03-12', 35300, 'closed'),
    (12, 1, '2015-04-01', 78000, 'closed'),
    (13, 2, '2015-04-14', 112000, 'in_progress'),
    (14, 3, '2015-04-14', 49000, 'closed'),
    (15, 4, '2015-04-14', 84000, 'new');

SELECT `user_id`, COUNT(*) AS `deals`,
       SUM(`amount`) AS `sum_amount`, MAX(`amount`) AS `max_amount`
FROM `deals`
WHERE `status` = 'closed'
GROUP BY `user_id`
HAVING COUNT(*) >= 3;

-- +---------+-------+------------+------------+
-- | user_id | deals | sum_amount | max_amount |
-- +---------+-------+------------+------------+
-- | 1       | 3     | 114500     | 78000      |
-- | 3       | 4     | 295350     | 210000     |
-- +---------+-------+------------+------------+
