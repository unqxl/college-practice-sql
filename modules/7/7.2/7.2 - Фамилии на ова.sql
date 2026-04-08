-- LIKE 'шаблон' — проверяет совпадение строки с шаблоном; % заменяет любое количество символов

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
    id         INT         NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(50) DEFAULT NULL,
    last_name  VARCHAR(50) DEFAULT NULL,
    age        INT         DEFAULT NULL,

    PRIMARY KEY (`id`)
);

INSERT INTO `users` (id, first_name, last_name, age)
VALUES
    (1, 'Константин', 'Богданов', 20),
    (2, 'Светлана', 'Иванова', 17),
    (3, 'Елена', 'Абрамова', 18),
    (4, 'Василиса', 'Кац', 15),
    (5, 'Антон', 'Сорокин', 22),
    (6, 'Алёна', 'Алясева', 28),
    (7, 'Лиана', 'Белая', 21),
    (8, 'Карина', 'Белая', 30),
    (9, 'Анастасия', 'Дейчман', 16),
    (10, 'Юлия', 'Фёдорова', 25);

SELECT *
FROM `users`
WHERE `last_name` LIKE '%ова' AND `age` >= 18
ORDER BY `age`, `last_name`;

-- +----+------------+-----------+-----+
-- | id | first_name | last_name | age |
-- +----+------------+-----------+-----+
-- | 3  | Елена      | Абрамова  | 18  |
-- | 10 | Юлия       | Фёдорова  | 25  |
-- +----+------------+-----------+-----+
