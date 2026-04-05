DROP TABLE IF EXISTS `apartments`;
CREATE TABLE `apartments` (
    id     INT              NOT NULL,
    image  VARCHAR(100)     DEFAULT NULL,
    price  INT              NOT NULL,
    square TINYINT          NOT NULL,

    PRIMARY KEY (`id`)
);

INSERT INTO `apartments` (id, image, price, square) VALUES
(1, '/apartments/1/cover.jpg', 5250000, 90),
(2, '/apartments/2/cover-3.jpg', 7500000, 103),
(3, NULL, 2300000, 56);

-- +----+---------------------------+---------+--------+
-- | id | image                     | price   | square |
-- +----+---------------------------+---------+--------+
-- | 1  | /apartments/1/cover.jpg   | 5250000 | 90     |
-- | 2  | /apartments/2/cover-3.jpg | 7500000 | 103    |
-- | 3  |                           | 2300000 | 56     |
-- +----+---------------------------+---------+--------+
