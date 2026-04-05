DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
    id     INT         NOT NULL,
    state  VARCHAR(10) NOT NULL,
    amount INT         NOT NULL,

    PRIMARY KEY (`id`)
);

INSERT INTO `orders` (id, state, amount) VALUES
(1, 'new', 10000),
(2, 'new', 3400),
(3, 'delivery', 7300);

-- +----+----------+--------+
-- | id | state    | amount |
-- +----+----------+--------+
-- | 1  | new      | 10000  |
-- | 2  | new      | 3400   |
-- | 3  | delivery | 7300   |
-- +----+----------+--------+
