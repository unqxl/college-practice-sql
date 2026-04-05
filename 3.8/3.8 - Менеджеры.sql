DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
    id            INT                                                       NOT NULL,
    first_name    VARCHAR(100)                                              NOT NULL,
    last_name     VARCHAR(100)                                              NOT NULL,
    birthday      DATE                                                      NOT NULL,
    active        TINYINT(1)                                                NOT NULL DEFAULT 1,
    sex           ENUM('m', 'w')                                            NOT NULL,
    roles         SET('programmer', 'designer', 'manager', 'marketer')      NOT NULL,

    PRIMARY KEY (`id`)
);

INSERT INTO `users` (`id`, `first_name`, `last_name`, `birthday`, `active`, `sex`, `roles`)
VALUES
(1, 'Дмитрий', 'Федьков', '2000-01-02', 1, 'm', 'manager'),
(2, 'Светлана', 'Иванова', '1999-03-02', 1, 'w', 'designer'),
(3, 'Никита', 'Трутнев', '2000-08-08', 1, 'm', 'programmer'),
(4, 'Денис', 'Кац', '2000-08-09', 1, 'm', 'programmer,manager'),
(5, 'Алена', 'Сорокина', '2001-01-02', 1, 'w', 'designer'),
(6, 'Василий', 'Федьков', '2001-01-01', 0, 'm', 'manager'),
(7, 'Ярослав', 'Сорокин', '2000-08-01', 1, 'm', 'designer,manager'),
(8, 'Денис', 'Белый', '2000-12-09', 1, 'm', 'designer'),
(9, 'Анатолий', 'Дейчман', '1998-08-08', 1, 'm', 'programmer'),
(10, 'Юлия', 'Фёдорова', '2002-08-08', 0, 'w', 'marketer');

SELECT `first_name`, `last_name`, `birthday`, `roles` FROM `users`
WHERE `sex` = 'm' AND `active` = 1
ORDER BY `last_name`, `first_name`;

-- +----+------------+-----------+------------+--------+-----+--------------------+
-- | id | first_name | last_name | birthday   | active | sex | roles              |
-- +----+------------+-----------+------------+--------+-----+-----------
-- | 1  | Дмитрий    | Федьков   | 2000-01-02 | 1      | m   | manager            |
-- | 2  | Светлана   | Иванова   | 1999-03-02 | 1      | w   | designer           |
-- | 3  | Никита     | Трутнев   | 2000-08-08 | 1      | m   | programmer         |
-- | 4  | Денис      | Кац       | 2000-08-09 | 1      | m   | programmer,manager |
-- | 5  | Алена      | Сорокина  | 2001-01-02 | 1      | w   | designer           |
-- | 6  | Василий    | Федьков   | 2001-01-01 | 0      | m   | manager            |
-- | 7  | Ярослав    | Сорокин   | 2000-08-01 | 1      | m   | designer,manager   |
-- | 8  | Денис      | Белый     | 2000-12-09 | 1      | m   | designer           |
-- | 9  | Анатолий   | Дейчман   | 1998-08-08 | 1      | m   | programmer         |
-- | 10 | Юлия       | Фёдорова  | 2002-08-08 | 0      | w   | marketer           |
