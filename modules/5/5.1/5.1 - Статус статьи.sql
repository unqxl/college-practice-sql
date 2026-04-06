DROP TABLE IF EXISTS `articles`;
CREATE TABLE `articles` (
    id   INT         NOT NULL AUTO_INCREMENT,
    name VARCHAR(80) NOT NULL,
    text TEXT,

    PRIMARY KEY (`id`)
);

ALTER TABLE `articles`
    ADD COLUMN `state` ENUM('draft', 'correction', 'public') NOT NULL DEFAULT 'draft';
