-- ABS(x) — возвращает абсолютное (неотрицательное) значение числа x

DROP TABLE IF EXISTS `experiments`;

CREATE TABLE `experiments` (
    id          INT     NOT NULL AUTO_INCREMENT,
    temperature INT     NOT NULL,
    date        DATE    NOT NULL,

    PRIMARY KEY (`id`)
);

INSERT INTO `experiments` (id, temperature, date)
VALUES
    (1, 3, '2017-03-09'),
    (2, -8, '2017-03-09'),
    (3, 4, '2017-03-10'),
    (4, 4, '2017-03-10'),
    (5, 12, '2017-03-10'),
    (6, 24, '2017-03-11'),
    (7, -8, '2017-03-11'),
    (8, 31, '2017-03-13'),
    (9, -18, '2017-03-14'),
    (10, -21, '2017-03-14'),
    (11, 24, '2017-03-16'),
    (12, 3, '2017-03-16'),
    (13, 5, '2017-03-17'),
    (14, -6, '2017-03-18');

SELECT `id`, ABS(`temperature`) AS `temperature`
FROM `experiments`
WHERE `temperature` < -10 OR `temperature` > 10;

-- +----+-------------+
-- | id | temperature |
-- +----+-------------+
-- | 5  | 12          |
-- | 6  | 24          |
-- | 8  | 31          |
-- | 9  | 18          |
-- | 10 | 21          |
-- | 11 | 24          |
-- +----+-------------+
