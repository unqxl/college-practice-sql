-- YEAR(dt)            — извлекает год из datetime dt
-- MONTH(dt)           — извлекает месяц из datetime dt
-- DATE_FORMAT(d, fmt) — форматирует дату d по шаблону fmt

DROP TABLE IF EXISTS `payments`;

CREATE TABLE `payments` (
    id      INT      NOT NULL AUTO_INCREMENT,
    user_id INT      DEFAULT NULL,
    amount  INT      DEFAULT NULL,
    date    DATETIME DEFAULT NULL,

    PRIMARY KEY (`id`)
);

INSERT INTO `payments` (id, user_id, amount, date)
VALUES
    (1, 1, 350, '2017-01-04 00:00:00'),
    (2, 2, 1400, '2017-01-14 00:00:00'),
    (3, 1, 900, '2017-02-04 17:04:17'),
    (4, 4, 400, '2017-02-14 00:00:00'),
    (5, 6, 700, '2017-03-01 00:00:00'),
    (6, 8, 850, '2017-03-04 00:00:00'),
    (7, 2, 400, '2017-03-06 23:12:04'),
    (8, 4, 1400, '2017-03-06 12:04:17'),
    (9, 8, 4400, '2017-03-07 00:00:00'),
    (10, 4, 3000, '2017-03-14 00:00:00'),
    (11, 4, 780, '2017-03-25 00:00:00'),
    (12, 10, 1900, '2017-03-26 00:00:00');

SELECT `id`, `user_id`, `amount`,
       DATE_FORMAT(`date`, '%d.%m.%Y %H:%i') AS `date`
FROM `payments`
WHERE YEAR(`date`) = 2017 AND MONTH(`date`) = 3
ORDER BY `payments`.`date` DESC
LIMIT 5;

-- +----+---------+--------+------------------+
-- | id | user_id | amount | date             |
-- +----+---------+--------+------------------+
-- | 12 | 10      | 1900   | 26.03.2017 00:00 |
-- | 11 | 4       | 780    | 25.03.2017 00:00 |
-- | 10 | 4       | 3000   | 14.03.2017 00:00 |
-- | 9  | 8       | 4400   | 07.03.2017 00:00 |
-- | 7  | 2       | 400    | 06.03.2017 23:12 |
-- +----+---------+--------+------------------+
