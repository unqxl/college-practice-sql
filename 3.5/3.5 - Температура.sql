DROP TABLE IF EXISTS `temperature`;
CREATE TABLE `temperature` (
    id          INT      NOT NULL,
    city_id     INT      NOT NULL,
    temperature TINYINT  NOT NULL,
    wind_speed  TINYINT  NOT NULL,
    mdate       DATETIME NOT NULL,

    PRIMARY KEY (`id`)
);

INSERT INTO `temperature` (id, city_id, temperature, wind_speed, mdate) VALUES
(1, 456, 17,  7,  '2017-02-08 12:00:00'),
(2, 456, 19,  6,  '2017-02-08 12:10:00'),
(3, 456, 20,  6,  '2017-02-08 12:20:00'),
(4, 471, -7,  12, '2017-02-08 12:20:01'),
(5, 44,  -43, 17, '2017-02-08 12:23:12');

-- +----+---------+-------------+------------+---------------------+
-- | id | city_id | temperature | wind_speed | mdate               |
-- +----+---------+-------------+------------+---------------------+
-- | 1  | 456     | 17          | 7          | 2017-02-08 12:00:00 |
-- | 2  | 456     | 19          | 6          | 2017-02-08 12:10:00 |
-- | 3  | 456     | 20          | 6          | 2017-02-08 12:20:00 |
-- | 4  | 471     | -7          | 12         | 2017-02-08 12:20:01 |
-- | 5  | 44      | -43         | 17         | 2017-02-08 12:23:12 |
-- +----+---------+-------------+------------+---------------------+
