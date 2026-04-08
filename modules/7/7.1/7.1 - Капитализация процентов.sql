-- ROUND(x, d) — округляет x до d знаков после запятой
-- POW(x, y)   — возводит x в степень y

DROP TABLE IF EXISTS `deposits`;

CREATE TABLE `deposits` (
    id          INT          NOT NULL AUTO_INCREMENT,
    user_id     INT          DEFAULT NULL,
    deposit_id  INT          DEFAULT NULL,
    initial_sum INT          DEFAULT NULL,
    percent     DECIMAL(3,1) DEFAULT NULL,
    years       INT          DEFAULT NULL,

    PRIMARY KEY (`id`)
);

INSERT INTO `deposits` (id, user_id, deposit_id, initial_sum, percent, years)
VALUES
    (1, 11, 1, 50000, 7, 2),
    (2, 817, 2, 30000, 6.7, 1),
    (3, 47, 5, 150000, 8.5, 4),
    (4, 649, 4, 37000, 9, 5),
    (5, 331, 5, 50000, 7, 1),
    (6, 4014, 1, 40000, 7, 2),
    (7, 874, 9, 4000, 8, 3),
    (8, 441, 1, 24500, 7, 2);

SELECT *, ROUND(`initial_sum` * POW(1 + `percent` / 100, `years`), 2) AS `final_sum`
FROM `deposits`;

-- +----+---------+------------+-------------+---------+-------+-----------+
-- | id | user_id | deposit_id | initial_sum | percent | years | final_sum |
-- +----+---------+------------+-------------+---------+-------+-----------+
-- | 1  | 11      | 1          | 50000       | 7.0     | 2     | 57245.00  |
-- | 2  | 817     | 2          | 30000       | 6.7     | 1     | 32010.00  |
-- | 3  | 47      | 5          | 150000      | 8.5     | 4     | 208003.27 |
-- | 4  | 649     | 4          | 37000       | 9.0     | 5     | 56928.28  |
-- | 5  | 331     | 5          | 50000       | 7.0     | 1     | 53500.00  |
-- | 6  | 4014    | 1          | 40000       | 7.0     | 2     | 45796.00  |
-- | 7  | 874     | 9          | 4000        | 8.0     | 3     | 5038.85   |
-- | 8  | 441     | 1          | 24500       | 7.0     | 2     | 28025.05  |
-- +----+---------+------------+-------------+---------+-------+-----------+
