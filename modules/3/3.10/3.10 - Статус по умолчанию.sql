DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
    id      INT                                                 NOT NULL,
    user_id INT                                                 NOT NULL,
    amount  INT                                                 NOT NULL DEFAULT 0,
    created DATETIME                                            NOT NULL,
    state   ENUM('new', 'cancelled', 'delivered', 'completed')  NOT NULL DEFAULT 'new',

    PRIMARY KEY (`id`)
);

INSERT INTO `orders` (id, user_id, amount, created) VALUES
(1, 56, 5400, '2018-02-01 17:46:59'),
(2, 90, 249,  '2018-02-01 19:13:04'),
(3, 78, 2200, '2018-02-01 22:43:09');

-- +----+---------+--------+---------------------+-------+
-- | id | user_id | amount | created             | state |
-- +----+---------+--------+---------------------+-------+
-- | 1  | 56      | 5400   | 2018-02-01 17:46:59 | new   |
-- | 2  | 90      | 249    | 2018-02-01 19:13:04 | new   |
-- | 3  | 78      | 2200   | 2018-02-01 22:43:09 | new   |
-- +----+---------+--------+---------------------+-------+
