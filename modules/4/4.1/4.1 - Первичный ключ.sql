DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
    id         INT         NOT NULL,
    first_name VARCHAR(50) DEFAULT NULL,
    last_name  VARCHAR(50) DEFAULT NULL,
    birthday   DATE        DEFAULT NULL,

    PRIMARY KEY (`id`)
);

INSERT INTO `users` (id, first_name, last_name, birthday) VALUES
(1, 'Дмитрий', 'Иванов', NULL),
(2, 'Анатолий', 'Белый', NULL),
(3, 'Денис', 'Давыдов', '1995-09-08');

-- +----+------------+-----------+------------+
-- | id | first_name | last_name | birthday   |
-- +----+------------+-----------+------------+
-- | 1  | Дмитрий    | Иванов    | NULL       |
-- | 2  | Анатолий   | Белый     | NULL       |
-- | 3  | Денис      | Давыдов   | 1995-09-08 |
-- +----+------------+-----------+------------+
