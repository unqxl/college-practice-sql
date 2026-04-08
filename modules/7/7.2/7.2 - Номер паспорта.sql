-- CONCAT_WS(sep, s1, s2, ...) — склеивает строки через разделитель sep
-- LPAD(s, n, pad)             — дополняет строку s слева символом pad до длины n

DROP TABLE IF EXISTS `passports`;

CREATE TABLE `passports` (
    id      INT NOT NULL AUTO_INCREMENT,
    user_id INT DEFAULT NULL,
    series  INT DEFAULT NULL,
    number  INT DEFAULT NULL,

    PRIMARY KEY (`id`)
);

INSERT INTO `passports` (id, user_id, series, number)
VALUES
    (1, 1, 4509, 126848),
    (2, 14, 4512, 652164),
    (3, 46, 4509, 126849),
    (4, 64, 510, 123456),
    (5, 84, 4501, 156484),
    (6, 95, 4515, 846541),
    (7, 98, 504, 12345),
    (8, 106, 4509, 648451);

SELECT `user_id`, CONCAT_WS(' ', LPAD(`series`, 4, '0'), LPAD(`number`, 6, '0')) AS `passport`
FROM `passports`
ORDER BY `series`, `number`;

-- +---------+-------------+
-- | user_id | passport    |
-- +---------+-------------+
-- | 98      | 0504 012345 |
-- | 64      | 0510 123456 |
-- | 84      | 4501 156484 |
-- | 1       | 4509 126848 |
-- | 46      | 4509 126849 |
-- | 106     | 4509 648451 |
-- | 14      | 4512 652164 |
-- | 95      | 4515 846541 |
-- +---------+-------------+
