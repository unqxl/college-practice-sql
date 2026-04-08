-- SUM(x)   — суммирует значения x по всем строкам выборки
-- CEIL(x)  — округляет x вверх до ближайшего целого

DROP TABLE IF EXISTS `transactions`;

CREATE TABLE `transactions` (
    id        INT            NOT NULL AUTO_INCREMENT,
    date      DATETIME       DEFAULT NULL,
    amount    DECIMAL(10, 2) DEFAULT NULL,
    direction VARCHAR(50)    DEFAULT NULL,
    no_tax    TINYINT(1)     DEFAULT NULL,

    PRIMARY KEY (`id`)
);

INSERT INTO `transactions` (id, date, amount, direction, no_tax)
VALUES
    (1, '2017-02-01 11:35:17', 1100.50, 'in', 0),
    (2, '2017-02-03 15:43:18', 1200, 'in', 1),
    (3, '2017-02-14 12:12:02', 1200, 'in', 0),
    (4, '2017-02-27 14:00:29', 1300, 'out', 0),
    (5, '2017-03-01 10:01:00', 700, 'out', 0),
    (6, '2017-03-04 12:00:00', 850.43, 'in', 1),
    (7, '2017-03-06 23:12:04', 400.40, 'in', 0),
    (8, '2017-03-06 12:04:17', 1400, 'in', 0),
    (9, '2017-03-07 13:00:00', 4400, 'out', 0),
    (10, '2017-03-14 12:59:59', 3000, 'in', 0),
    (11, '2017-03-25 12:15:07', 780.20, 'in', 0),
    (12, '2017-03-26 13:00:01', 1900, 'in', 1),
    (13, '2017-03-31 08:13:25', 2000, 'in', 0),
    (14, '2017-04-24 11:35:17', 250, 'out', 0),
    (15, '2017-04-24 11:35:01', 1100, 'in', 1),
    (16, '2017-04-27 12:50:44', 5000, 'out', 0),
    (17, '2017-04-28 11:44:41', 790, 'in', 0);

SELECT CEIL(SUM(`amount` * 0.06)) AS `tax`
FROM `transactions`
WHERE `direction` = 'in'
  AND `no_tax` = 0
  AND `date` BETWEEN '2017-01-01' AND '2017-03-31 23:59:59';

-- +-----+
-- | tax |
-- +-----+
-- | 593 |
-- +-----+
