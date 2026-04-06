DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
    id      INT                                                  NOT NULL AUTO_INCREMENT,
    user_id INT                                                  NOT NULL,
    city_id INT                                                  NOT NULL,
    state   ENUM('new', 'cancelled', 'delivered', 'completed')   NOT NULL DEFAULT 'new',
    amount  INT                                                  NOT NULL DEFAULT 0,

    PRIMARY KEY (`id`),
    INDEX `user_id` (`user_id`),
    INDEX `main_search` (`city_id`, `state`)
);
