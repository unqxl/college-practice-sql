-- DATE_ADD(dt, INTERVAL n unit) — прибавляет к дате dt интервал n единиц unit
-- DATE_FORMAT(d, fmt)           — форматирует дату d по шаблону fmt

DROP TABLE IF EXISTS `visits`;

CREATE TABLE `visits` (
    id      INT      NOT NULL AUTO_INCREMENT,
    user_id INT      DEFAULT NULL,
    date    DATETIME DEFAULT NULL,

    PRIMARY KEY (`id`)
);

INSERT INTO `visits` (id, user_id, date)
VALUES
    (1, 64, '2017-06-22 12:24:31'),
    (2, 84, '2017-06-22 14:14:07'),
    (3, 325, '2017-06-20 14:24:31'),
    (4, 12, '2017-06-22 10:04:31'),
    (5, 75, '2017-06-22 09:59:41'),
    (6, 84, '2017-06-25 12:17:08'),
    (7, 1, '2017-06-22 12:14:31'),
    (8, 7, '2017-06-22 12:54:31'),
    (9, 104, '2017-06-22 13:14:31');

SELECT `user_id`,
       DATE_FORMAT(DATE_ADD(`date`, INTERVAL 3 HOUR), '%d.%m.%Y %H:%i') AS `visit_date`
FROM `visits`
ORDER BY `date`;

-- +---------+------------------+
-- | user_id | visit_date       |
-- +---------+------------------+
-- | 325     | 20.06.2017 17:24 |
-- | 75      | 22.06.2017 12:59 |
-- | 12      | 22.06.2017 13:04 |
-- | 1       | 22.06.2017 15:14 |
-- | 64      | 22.06.2017 15:24 |
-- | 7       | 22.06.2017 15:54 |
-- | 104     | 22.06.2017 16:14 |
-- | 84      | 22.06.2017 17:14 |
-- | 84      | 25.06.2017 15:17 |
-- +---------+------------------+
