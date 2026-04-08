-- DATE_ADD(dt, INTERVAL n unit) — прибавляет к дате dt интервал n единиц unit

DROP TABLE IF EXISTS `drivers`;

CREATE TABLE `drivers` (
    id         INT         NOT NULL AUTO_INCREMENT,
    last_name  VARCHAR(50) DEFAULT NULL,
    first_name VARCHAR(50) DEFAULT NULL,
    birthday   DATE        DEFAULT NULL,
    sex        CHAR(1)     DEFAULT NULL,

    PRIMARY KEY (`id`)
);

INSERT INTO `drivers` (id, last_name, first_name, birthday, sex)
VALUES
    (1, 'Федьков', 'Дмитрий', '2000-01-02', 'm'),
    (2, 'Дмитриевская', 'Ольга', '1999-03-02', 'w'),
    (3, 'Трутнев', 'Никита', '2000-08-08', 'm'),
    (4, 'Кац', 'Денис', '2000-08-09', 'm'),
    (5, 'Козырева', 'Анна', '2001-01-02', 'w'),
    (6, 'Федьков', 'Василий', '2001-01-01', 'm'),
    (7, 'Сорокин', 'Ярослав', '2000-08-01', 'm'),
    (8, 'Белый', 'Денис', '2000-12-09', 'm'),
    (9, 'Дейчман', 'Анатолий', '1998-08-08', 'm'),
    (10, 'Кулибина', 'Алла', '2002-08-08', 'w'),
    (11, 'Кирин', 'Вячеслав', '2000-08-07', 'm');

SELECT `last_name`, `first_name`, `birthday`
FROM `drivers`
WHERE `sex` = 'm' AND DATE_ADD(`birthday`, INTERVAL 18 YEAR) < '2018-08-08'
ORDER BY `last_name`, `first_name`;

-- +-----------+------------+------------+
-- | last_name | first_name | birthday   |
-- +-----------+------------+------------+
-- | Дейчман   | Анатолий   | 1998-08-08 |
-- | Кирин     | Вячеслав   | 2000-08-07 |
-- | Сорокин   | Ярослав    | 2000-08-01 |
-- | Федьков   | Дмитрий    | 2000-01-02 |
-- +-----------+------------+------------+
