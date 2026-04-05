DROP TABLE IF EXISTS `rating`;
CREATE TABLE `rating` (
    id      INT   NOT NULL,
    car_id  INT   NOT NULL,
    user_id INT   NOT NULL,
    rating  FLOAT NOT NULL,

    PRIMARY KEY (`id`)
);

INSERT INTO `rating` (id, car_id, user_id, rating) VALUES
(1, 1, 1, 4.54),
(2, 1, 2, 3.34),
(3, 2, 3, 4.19),
(4, 2, 11, 1.12);

-- +----+--------+---------+--------+
-- | id | car_id | user_id | rating |
-- +----+--------+---------+--------+
-- | 1  | 1      | 1       | 4.54   |
-- | 2  | 1      | 2       | 3.34   |
-- | 3  | 2      | 3       | 4.19   |
-- | 4  | 2      | 11      | 1.12   |
-- +----+--------+---------+--------+
