DROP TABLE IF EXISTS `arrival`;
CREATE TABLE `arrival` (
    id      INT  NOT NULL,
    user_id INT  NOT NULL,
    a_date  DATE NOT NULL,
    a_time  TIME NOT NULL,

    PRIMARY KEY (`id`)
);

INSERT INTO `arrival` (id, user_id, a_date, a_time) VALUES
(1, 10, '2017-03-09', '08:45:41'),
(2, 12, '2017-03-09', '08:46:12'),
(3, 7,  '2017-03-09', '08:53:01'),
(4, 31, '2017-03-09', '09:01:17');

-- +----+---------+------------+----------+
-- | id | user_id | a_date     | a_time   |
-- +----+---------+------------+----------+
-- | 1  | 10      | 2017-03-09 | 08:45:41 |
-- | 2  | 12      | 2017-03-09 | 08:46:12 |
-- | 3  | 7       | 2017-03-09 | 08:53:01 |
-- | 4  | 31      | 2017-03-09 | 09:01:17 |
-- +----+---------+------------+----------+
