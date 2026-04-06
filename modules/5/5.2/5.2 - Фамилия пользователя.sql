DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
    id       INT         NOT NULL,
    name     VARCHAR(20) NOT NULL DEFAULT '',
    is_admin TINYINT(1)  NOT NULL DEFAULT 0
);

ALTER TABLE `users` RENAME COLUMN `name` TO `first_name`;
ALTER TABLE `users` ADD COLUMN `last_name` VARCHAR(20) NOT NULL DEFAULT '';
