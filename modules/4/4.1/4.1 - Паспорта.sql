DROP TABLE IF EXISTS `passports`;
CREATE TABLE `passports` (
    series     VARCHAR(4) NOT NULL,
    number     VARCHAR(6) NOT NULL,
    user_id    INT        NOT NULL,
    date_issue DATE       DEFAULT NULL,

    PRIMARY KEY (`series`, `number`)
);

INSERT INTO `passports` (series, number, user_id, date_issue) VALUES
('3206', '147345', 15, '2006-08-12'),
('5411', '147345', 15, '2008-03-03'),
('2405', '147345', 1, '2015-01-07'),
('3216', '147345', 234, '2016-09-23');

-- +--------+--------+---------+------------+
-- | series | number | user_id | date_issue |
-- +--------+--------+---------+------------+
-- | 3206   | 147345 | 15      | 2006-08-12 |
-- | 5411   | 147345 | 15      | 2008-03-03 |
-- | 2405   | 147345 | 1       | 2015-01-07 |
-- | 3216   | 147345 | 234     | 2016-09-23 |
-- +--------+--------+---------+------------+
