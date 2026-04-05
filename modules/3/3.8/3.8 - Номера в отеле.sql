DROP TABLE IF EXISTS `rooms`;
CREATE TABLE `rooms` (
    id            INT                                           NOT NULL,
    number        INT                                           NOT NULL,
    beds          ENUM('1+1', '2+1', '2+2')                     NOT NULL,
    additional    SET('conditioner', 'bar', 'fridge', 'wifi'),

    PRIMARY KEY (`id`)
);

INSERT INTO `rooms` (id, number, beds, additional) VALUES
(1, 10, '1+1', 'conditioner,bar,wifi'),
(2, 12, '2+1', ''),
(3, 24, '2+2', 'fridge,bar,wifi');

-- +----+--------+--------+----------------------+
-- | id | number | beds   | additional           |
-- +----+--------+--------+----------------------+
-- | 1  | 10     | 1+1    | conditioner,bar,wifi |
-- | 2  | 12     | 2+1    |                      |
-- | 3  | 24     | 2+2    | fridge,bar,wifi      |
-- +----+--------+--------+----------------------+