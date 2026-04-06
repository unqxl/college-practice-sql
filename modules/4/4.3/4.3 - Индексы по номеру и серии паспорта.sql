DROP TABLE IF EXISTS `passports`;
CREATE TABLE `passports` (
    id      INT                        NOT NULL AUTO_INCREMENT,
    user_id INT                        NOT NULL,
    series  VARCHAR(4)                 NOT NULL,
    number  VARCHAR(6)                 NOT NULL,
    state   ENUM('active', 'expired')  NOT NULL DEFAULT 'active',

    PRIMARY KEY (`id`),
    UNIQUE KEY `passport` (`series`, `number`),
    INDEX `series` (`series`),
    INDEX `number` (`number`)
);
