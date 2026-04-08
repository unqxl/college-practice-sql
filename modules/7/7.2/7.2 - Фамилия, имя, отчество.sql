-- CONCAT_WS(sep, s1, s2, ...) — склеивает строки через разделитель sep, пропуская NULL

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
    id         INT         NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(50) DEFAULT NULL,
    last_name  VARCHAR(50) DEFAULT NULL,
    patronymic VARCHAR(50) DEFAULT NULL,

    PRIMARY KEY (`id`)
);

INSERT INTO `users` (id, first_name, last_name, patronymic)
VALUES
    (1, 'Константин', 'Богданов', 'Николаевич'),
    (2, 'Татьяна', 'Ефимова', ''),
    (3, 'Елена', 'Абрамова', 'Павловна'),
    (4, 'Василий', 'Фёдоров', ''),
    (5, 'Анна', 'Козырева', 'Абрамовна'),
    (6, 'Алёна', 'Алясева', 'Алексеевна'),
    (7, 'Лиана', 'Белая', ''),
    (8, 'Карина', 'Белая', 'Олеговна');

SELECT `id`, CONCAT_WS(' ', `last_name`, `first_name`, `patronymic`) AS `name`
FROM `users`
WHERE `patronymic` != ''
ORDER BY `last_name`, `first_name`, `patronymic`;

-- +----+-------------------------------------+
-- | id | name                                |
-- +----+-------------------------------------+
-- | 3  | Абрамова Елена Павловна             |
-- | 6  | Алясева Алёна Алексеевна            |
-- | 8  | Белая Карина Олеговна               |
-- | 1  | Богданов Константин Николаевич      |
-- | 5  | Козырева Анна Абрамовна             |
-- +----+-------------------------------------+
