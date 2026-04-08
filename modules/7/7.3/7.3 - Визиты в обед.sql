-- DATE(dt)  — извлекает дату из datetime dt (без времени)
-- HOUR(dt)  — извлекает час из datetime dt

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

SELECT *
FROM `visits`
WHERE DATE(`date`) = '2017-06-22' AND HOUR(`date`) = 12
ORDER BY `date` DESC;

-- +----+---------+---------------------+
-- | id | user_id | date                |
-- +----+---------+---------------------+
-- | 8  | 7       | 2017-06-22 12:54:31 |
-- | 1  | 64      | 2017-06-22 12:24:31 |
-- | 7  | 1       | 2017-06-22 12:14:31 |
-- +----+---------+---------------------+
