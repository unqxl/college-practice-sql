DROP TABLE IF EXISTS `articles`;
CREATE TABLE `articles` (
    id    INT                                      NOT NULL AUTO_INCREMENT,
    name  VARCHAR(80)                              NOT NULL,
    text  TEXT,
    state ENUM('draft', 'correction', 'public')    NOT NULL DEFAULT 'draft',

    PRIMARY KEY (`id`)
);

ALTER TABLE `articles` DROP COLUMN `state`;
