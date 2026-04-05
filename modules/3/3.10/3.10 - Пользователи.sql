DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
    id           INT          NOT NULL,
    first_name   VARCHAR(20)  NOT NULL,
    last_name    VARCHAR(20)  NOT NULL,
    patronymic   VARCHAR(20)  NOT NULL DEFAULT '',
    is_active    TINYINT(1)   NOT NULL DEFAULT 1,
    is_superuser TINYINT(1)   NOT NULL DEFAULT 0,

    PRIMARY KEY (`id`)
);

INSERT INTO `users` (id, first_name, last_name, is_active, is_superuser) VALUES
(1, 'Дмитрий', 'Иванов', 1, 0);

INSERT INTO `users` (id, first_name, last_name, patronymic, is_active, is_superuser) VALUES
(2, 'Анатолий', 'Белый', 'Сергеевич', 1, 1);

INSERT INTO `users` (id, first_name, last_name, is_active, is_superuser) VALUES
(3, 'Андрей', 'Крючков', 0, 0);

-- +----+------------+-----------+------------+-----------+--------------+
-- | id | first_name | last_name | patronymic | is_active | is_superuser |
-- +----+------------+-----------+------------+-----------+--------------+
-- | 1  | Дмитрий    | Иванов    |            | TRUE      | FALSE        |
-- | 2  | Анатолий   | Белый     | Сергеевич  | TRUE      | TRUE         |
-- | 3  | Андрей     | Крючков   |            | FALSE     | FALSE        |
-- +----+------------+-----------+------------+-----------+--------------+
