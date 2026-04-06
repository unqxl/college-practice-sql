DROP TABLE IF EXISTS `passports`;
CREATE TABLE `passports` (
    id      INT                        NOT NULL AUTO_INCREMENT,
    user_id INT                        NOT NULL,
    series  VARCHAR(4)                 NOT NULL,
    number  VARCHAR(6)                 NOT NULL,
    state   ENUM('active', 'expired')  NOT NULL DEFAULT 'active',

    PRIMARY KEY (`id`),
    UNIQUE KEY `series` (`series`),
    UNIQUE KEY `number` (`number`)
);

ALTER TABLE `passports` DROP INDEX `series`;
ALTER TABLE `passports` DROP INDEX `number`;
CREATE UNIQUE INDEX `series_number` ON `passports` (`series`, `number`);
