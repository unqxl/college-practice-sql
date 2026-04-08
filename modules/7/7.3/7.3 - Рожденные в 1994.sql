-- YEAR(d)             — извлекает год из даты d
-- DATE_FORMAT(d, fmt) — форматирует дату d по шаблону fmt

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
    id         INT         NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(50) DEFAULT NULL,
    last_name  VARCHAR(50) DEFAULT NULL,
    birthday   DATE        DEFAULT NULL,

    PRIMARY KEY (`id`)
);

INSERT INTO `users` (id, first_name, last_name, birthday)
VALUES
    (1, 'Константин', 'Богданов', '1995-08-07'),
    (2, 'Светлана', 'Иванова', '1994-01-08'),
    (3, 'Елена', 'Абрамова', '1998-03-17'),
    (4, 'Василиса', 'Кац', '1994-12-14'),
    (5, 'Антон', 'Сорокин', '1997-09-15'),
    (6, 'Алёна', 'Алясева', '1994-04-28'),
    (7, 'Лиана', 'Белая', '1996-10-13'),
    (8, 'Карина', 'Белая', '1996-08-07'),
    (9, 'Анастасия', 'Дейчман', '1992-12-30'),
    (10, 'Юлия', 'Фёдорова', '1994-10-01');

SELECT `first_name`, `last_name`, DATE_FORMAT(`birthday`, '%d.%m.%Y') AS `user_birthday`
FROM `users`
WHERE YEAR(`birthday`) = 1994
ORDER BY `birthday`;

-- +------------+-----------+---------------+
-- | first_name | last_name | user_birthday |
-- +------------+-----------+---------------+
-- | Светлана   | Иванова   | 08.01.1994    |
-- | Алёна      | Алясева   | 28.04.1994    |
-- | Юлия       | Фёдорова  | 01.10.1994    |
-- | Василиса   | Кац       | 14.12.1994    |
-- +------------+-----------+---------------+
