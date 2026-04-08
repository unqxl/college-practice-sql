-- MOD(x, y) / x % y — возвращает остаток от деления x на y

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
    id         INT         NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(50) DEFAULT NULL,
    last_name  VARCHAR(50) DEFAULT NULL,
    email      VARCHAR(50) DEFAULT NULL,
    age        INT         DEFAULT NULL,

    PRIMARY KEY (`id`)
);

INSERT INTO `users` (id, first_name, last_name, email, age)
VALUES
    (1, 'Виктор', 'Алтушев', 'user1@domain.com', 20),
    (2, 'Светлана', 'Иванова', 'user2@domain.com', 17),
    (3, 'Елена', 'Абрамова', 'user3@domain.com', 18),
    (4, 'Василиса', 'Кац', 'user4@domain.com', 15),
    (5, 'Антон', 'Сорокин', 'user5@domain.com', 22),
    (6, 'Алёна', 'Алясева', 'user6@domain.com', 28),
    (7, 'Лиана', 'Белая', 'user7@domain.com', 21),
    (8, 'Карина', 'Белая', 'user8@domain.com', 30),
    (9, 'Анастасия', 'Дейчман', 'user9@domain.com', 16),
    (10, 'Юлия', 'Фёдорова', 'user10@domain.com', 25);

SELECT `id`, `first_name`, `email`
FROM `users`
WHERE `id` % 3 = 0;

-- +----+------------+------------------+
-- | id | first_name | email            |
-- +----+------------+------------------+
-- | 3  | Елена      | user3@domain.com |
-- | 6  | Алёна      | user6@domain.com |
-- | 9  | Анастасия  | user9@domain.com |
-- +----+------------+------------------+
