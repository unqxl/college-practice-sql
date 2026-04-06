DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts` (
    id       INT          NOT NULL AUTO_INCREMENT,
    user_id  INT          NOT NULL,
    name     VARCHAR(100) NOT NULL,
    pub_date DATETIME     DEFAULT NULL,
    slug     VARCHAR(50)  NOT NULL,

    PRIMARY KEY (`id`),
    UNIQUE KEY `uslug` (`user_id`, `slug`)
);
