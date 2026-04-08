-- SUBSTRING_INDEX(s, sep, n) — возвращает подстроку из s до n-го вхождения разделителя sep
--                              при n < 0 отсчёт идёт с конца строки

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
    id   INT         NOT NULL AUTO_INCREMENT,
    name VARCHAR(50) DEFAULT NULL,
    age  INT         DEFAULT NULL,

    PRIMARY KEY (`id`)
);

INSERT INTO `users` (id, name, age)
VALUES
    (1, 'Богданов Константин', 20),
    (2, 'Иванова Светлана', 17),
    (3, 'Абрамова Елена', 18),
    (4, 'Кац Василиса', 15),
    (5, 'Сорокин Антон', 22);

ALTER TABLE `users`
    ADD COLUMN `first_name` VARCHAR(50) DEFAULT NULL AFTER `name`,
    ADD COLUMN `last_name` VARCHAR(50) DEFAULT NULL AFTER `first_name`;

UPDATE `users`
SET `last_name`  = SUBSTRING_INDEX(`name`, ' ', 1),
    `first_name` = SUBSTRING_INDEX(`name`, ' ', -1);

ALTER TABLE `users`
    DROP COLUMN `name`;

SELECT * FROM `users`;

-- +----+------------+-----------+-----+
-- | id | first_name | last_name | age |
-- +----+------------+-----------+-----+
-- | 1  | Константин | Богданов  | 20  |
-- | 2  | Светлана   | Иванова   | 17  |
-- | 3  | Елена      | Абрамова  | 18  |
-- | 4  | Василиса   | Кац       | 15  |
-- | 5  | Антон      | Сорокин   | 22  |
-- +----+------------+-----------+-----+
