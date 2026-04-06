DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
    id     INT           NOT NULL AUTO_INCREMENT,
    state  VARCHAR(8)    NOT NULL,
    amount DECIMAL(8, 2) NOT NULL,

    PRIMARY KEY (`id`)
);

INSERT INTO `orders` (id, state, amount) VALUES
(1, 'new', 1000.50),
(2, 'new', 3400.10),
(3, 'delivery', 7300.00);

-- +----+----------+---------+
-- | id | state    | amount  |
-- +----+----------+---------+
-- | 1  | new      | 1000.50 |
-- | 2  | new      | 3400.10 |
-- | 3  | delivery | 7300.00 |
-- +----+----------+---------+
