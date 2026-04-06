DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
    id      INT      NOT NULL,
    user_id INT      NOT NULL,
    amount  INT      NOT NULL DEFAULT 0,
    created DATETIME NOT NULL,
    state   ENUM('new', 'delivery', 'completed', 'cancelled')
);

ALTER TABLE `orders`
    MODIFY COLUMN `state` ENUM('new', 'delivery', 'completed', 'cancelled', 'awaiting_payment') NOT NULL DEFAULT 'new';
