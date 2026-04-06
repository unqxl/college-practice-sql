DROP TABLE IF EXISTS `passports`;
CREATE TABLE `passports` (
    id      INT      NOT NULL AUTO_INCREMENT,
    user_id INT      NOT NULL,
    series  SMALLINT NOT NULL,
    number  SMALLINT NOT NULL,

    PRIMARY KEY (`id`)
);

ALTER TABLE `passports`
    MODIFY COLUMN `series` VARCHAR(4) NOT NULL,
    MODIFY COLUMN `number` VARCHAR(6) NOT NULL;

CREATE UNIQUE INDEX `passport` ON `passports` (`series`, `number`);
