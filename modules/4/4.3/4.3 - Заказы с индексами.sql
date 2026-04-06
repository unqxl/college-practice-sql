DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
    id      INT        NOT NULL AUTO_INCREMENT,
    user_id INT        NOT NULL,
    state   VARCHAR(8) NOT NULL DEFAULT 'new',
    amount  INT        NOT NULL DEFAULT 0,

    PRIMARY KEY (`id`),
    INDEX `user_id` (`user_id`),
    INDEX `state` (`state`)
);
