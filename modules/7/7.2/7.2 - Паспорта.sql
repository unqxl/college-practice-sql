-- CONCAT(s1, s2, ...) — склеивает строки s1, s2, ... в одну

DROP TABLE IF EXISTS `passports`;

CREATE TABLE `passports` (
    id      INT        NOT NULL AUTO_INCREMENT,
    user_id INT        DEFAULT NULL,
    series  VARCHAR(4) DEFAULT NULL,
    number  VARCHAR(6) DEFAULT NULL,

    PRIMARY KEY (`id`)
);

INSERT INTO `passports` (id, user_id, series, number)
VALUES
    (1, 1, '4509', '126848'),
    (2, 14, '4512', '652164'),
    (3, 46, '4509', '126849'),
    (4, 64, '4510', '123456'),
    (5, 84, '4501', '156484'),
    (6, 95, '4515', '846541'),
    (7, 98, '4504', '012345'),
    (8, 106, '4509', '648451');

SELECT `user_id`, CONCAT(`series`, `number`) AS `passport`
FROM `passports`
ORDER BY `user_id`;

-- +---------+------------+
-- | user_id | passport   |
-- +---------+------------+
-- | 1       | 4509126848 |
-- | 14      | 4512652164 |
-- | 46      | 4509126849 |
-- | 64      | 4510123456 |
-- | 84      | 4501156484 |
-- | 95      | 4515846541 |
-- | 98      | 4504012345 |
-- | 106     | 4509648451 |
-- +---------+------------+
