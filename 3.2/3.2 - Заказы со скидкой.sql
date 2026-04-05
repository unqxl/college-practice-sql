DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
    id         INT              NOT NULL,
    product_id INT              NOT NULL,
    sale       TINYINT          NOT NULL,
    amount     DECIMAL(8, 2)    NOT NULL,

    PRIMARY KEY (`id`)
);

INSERT INTO `orders` (id, product_id, sale, amount) VALUES
(1, 245, 0, 230.50),
(2, 17, 15, 999999.99),
(3, 145677, 21, 1240.00);

-- +----+------------+------+-----------+
-- | id | product_id | sale | amount    |
-- +----+------------+------+-----------+
-- | 1  | 245        | 0    | 230.50    |
-- | 2  | 17         | 15   | 999999.99 |
-- | 3  | 145677     | 21   | 1240.00   |
-- +----+------------+------+-----------+
