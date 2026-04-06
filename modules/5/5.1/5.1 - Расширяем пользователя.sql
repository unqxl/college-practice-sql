DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
    id         INT         NOT NULL,
    first_name VARCHAR(20) NOT NULL,
    last_name  VARCHAR(20) NOT NULL,
    is_admin   TINYINT(1)  NOT NULL DEFAULT 0
);

ALTER TABLE `users`
    ADD COLUMN `birthday`   DATE        DEFAULT NULL,
    ADD COLUMN `last_visit`  DATETIME    NOT NULL DEFAULT CURRENT_TIMESTAMP,
    ADD COLUMN `is_active`   TINYINT(1)  NOT NULL DEFAULT 1,
    ADD COLUMN `experience`  INT         NOT NULL DEFAULT 0;
